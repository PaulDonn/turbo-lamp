using AutoMapper;
using Core.Alignments.DTO;
using Core.Alignments.Query;
using Core.Backgrounds.DTO;
using Core.Backgrounds.Query;
using Core.Classes.DTO;
using Core.Classes.Query;
using Core.Languages.DTO;
using Core.Languages.Query;
using Core.PlayerCharacters.Command;
using Core.PlayerCharacters.DTO;
using Core.PlayerCharacters.Query;
using Core.Races.DTO;
using Core.Races.Query;
using Core.Skills.DTO;
using Core.Skills.Query;
using Core.Spells.DTO;
using Core.Spells.Query;
using DataModel;
using Infrastructure.Mediator;
using Infrastructure.Session;
using Microsoft.AspNetCore.DataProtection;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.Extensions.Configuration;
using NoticeBoard.Models.Abilities;
using NoticeBoard.Models.Alignments;
using NoticeBoard.Models.Backgrounds;
using NoticeBoard.Models.Classes;
using NoticeBoard.Models.Languages;
using NoticeBoard.Models.PlayerCharacters;
using NoticeBoard.Models.Races;
using NoticeBoard.Models.Shared;
using NoticeBoard.Models.Spells;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;

namespace NoticeBoard.Controllers
{
    public class PlayerCharacterController : BaseController
    {
        public PlayerCharacterController(IMediator mediator, NoticeBoardContext databaseContext, IConfiguration configuration, IMapper mapper, ISessionInformation sessionInformation, IDataProtectionProvider dataProtectionProvider) : 
            base(mediator, databaseContext, configuration, mapper, sessionInformation, dataProtectionProvider)
        {

        }

        public IActionResult Create(int partyId)
        {
            var command = SendCommand(new CreatePCCommand
            {
                PartyId = partyId
            });

            var pcId = Encrypt(command.NewRecordId.ToString());

            return RedirectToAction(nameof(SelectRace), new { pcId, partyId });
        }

        public IActionResult LevelUp(int pcId, string additionalOptions)
        {
            SetBusinessLogic(pcId);
            var requirements = _classBusinessLogic.GetLevelUpRequirements(pcId);

            if(requirements.Any())
            {

            }
            else
            {
                _classBusinessLogic.LevelUp(pcId, 4, new List<int>(), new List<int>(), null, additionalOptions);
            }

            return RedirectToAction(nameof(Details), new { pcId });
        }

        //[HttpPost]
        //public IActionResult LevelUp(LevelUpModel model)
        //{

        //}

        public IActionResult SelectRace(string pcId, int partyId)
        {
            var model = new RadioSelectModel<RaceModel> { PcId = pcId, PartyId = partyId };

            var query = new GetRaceOptionsQuery { PartyId = partyId };

            model.OptionModels = _mapper.Map<List<RaceDTO>, List<RaceModel>>(SendQuery<GetRaceOptionsQuery, IEnumerable<RaceDTO>>(query).ToList());

            return View(model);
        }

        [HttpPost]
        public IActionResult SelectRace(RadioSelectModel<RaceModel> model)
        {
            var pcId = Convert.ToInt32(Decrypt(model.PcId));

            SendCommand(new SetPCRaceCommand { PcId = pcId, RaceId = model.SelectedOptionId });

            return RedirectToAction(nameof(SelectSubRace), new
            {
                pcId = model.PcId,
                partyId = model.PartyId,
                raceId = model.SelectedOptionId
            });
        }

        public IActionResult SelectSubRace(string pcId, int partyId, int raceId)
        {
            var model = new RadioSelectModel<SubRaceModel> { PcId = pcId, PartyId = partyId };

            var query = new GetSubRaceOptionsQuery
            {
                PartyId = partyId,
                RaceId = raceId
            };

            var subRaces = SendQuery<GetSubRaceOptionsQuery, IEnumerable<SubRaceDTO>>(query).ToList();
            if (subRaces.Count() > 0)
            {
                model.OptionModels = _mapper.Map<List<SubRaceDTO>, List<SubRaceModel>>(subRaces);
                return View(model);
            }

            return RedirectToAction(nameof(SelectClass), new { pcId, partyId });
        }

        [HttpPost]
        public IActionResult SelectSubRace(RadioSelectModel<SubRaceModel> model)
        {
            var pcId = Convert.ToInt32(Decrypt(model.PcId));

            SendCommand(new SetPCSubRaceCommand { PcId = pcId, SubRaceId = model.SelectedOptionId });

            return RedirectToAction(nameof(SelectClass), new { model.PcId, model.PartyId });
        }

        public IActionResult SelectClass(string pcId, int partyId)
        {
            var model = new RadioSelectModel<ClassModel> { PcId = pcId, PartyId = partyId };

            var query = new GetClassOptionsQuery { PartyId = partyId };

            model.OptionModels = _mapper.Map<List<ClassDTO>, List<ClassModel>>(SendQuery<GetClassOptionsQuery, IEnumerable<ClassDTO>>(query).ToList());

            return View(model);
        }

        [HttpPost]
        public IActionResult SelectClass(RadioSelectModel<ClassModel> model)
        {
            var pcId = Convert.ToInt32(Decrypt(model.PcId));

            SendCommand(new SetPCClassCommand { PcId = pcId, ClassId = model.SelectedOptionId });

            return RedirectToAction(nameof(SelectArchetype), new
            {
                pcId = model.PcId,
                partyId = model.PartyId,
                classId = model.SelectedOptionId
            });
        }

        public IActionResult SelectArchetype(string pcId, int partyId, int classId)
        {
            var model = new ArchetypeSelectModel { PcId = pcId, PartyId = partyId };

            var query = new GetArchetypeOptionsQuery
            {
                PartyId = partyId,
                PcId = Convert.ToInt32(Decrypt(pcId))
            };

            var archetypes = SendQuery<GetArchetypeOptionsQuery, IEnumerable<ArchetypeDTO>>(query).ToList();
            if (archetypes.Count() > 0)
            {
                var playerClass = SendQuery<GetClassQuery, ClassDTO>(new GetClassQuery { Id = classId });
                model.ArchetypeName = playerClass.Name;
                model.ArchetypeDescription = playerClass.ArchetypeTypeDescription;

                model.OptionModels = _mapper.Map<List<ArchetypeDTO>, List<ArchetypeModel>>(archetypes);
                return View(model);
            }

            return RedirectToAction(nameof(SelectBackground), new { pcId, partyId });
        }

        [HttpPost]
        public IActionResult SelectArchetype(ArchetypeSelectModel model)
        {
            var pcId = Convert.ToInt32(Decrypt(model.PcId));

            SendCommand(new SetPCArchetypeCommand { PcId = pcId, ArchetypeId = model.SelectedOptionId });

            return RedirectToAction(nameof(SelectBackground), new { model.PcId, model.PartyId });
        }

        public IActionResult SelectBackground(string pcId, int partyId)
        {
            var model = new RadioSelectModel<BackgroundModel> { PcId = pcId, PartyId = partyId };

            var query = new GetBackgroundOptionsQuery { PartyId = partyId };

            model.OptionModels = _mapper.Map<List<BackgroundDTO>, List<BackgroundModel>>(SendQuery<GetBackgroundOptionsQuery, IEnumerable<BackgroundDTO>>(query).ToList());

            return View(model);
        }

        [HttpPost]
        public IActionResult SelectBackground(RadioSelectModel<BackgroundModel> model)
        {
            var pcId = Convert.ToInt32(Decrypt(model.PcId));

            SendCommand(new SetPCBackgroundCommand { PcId = pcId, BackgroundId = model.SelectedOptionId });

            return RedirectToAction(nameof(SelectAlignment), new { model.PcId, model.PartyId });
        }

        public IActionResult SelectAlignment(string pcId, int partyId)
        {
            var model = new RadioSelectModel<AlignmentModel> 
            { 
                PcId = pcId, 
                PartyId = partyId 
            };

            var query = new GetAlignmentsQuery();

            model.OptionModels = _mapper.Map<List<AlignmentDTO>, List<AlignmentModel>>(SendQuery<GetAlignmentsQuery, IEnumerable<AlignmentDTO>>(query).ToList());

            return View(model);
        }

        [HttpPost]
        public IActionResult SelectAlignment(RadioSelectModel<AlignmentModel> model)
        {
            var pcId = Convert.ToInt32(Decrypt(model.PcId));

            SendCommand(new SetPCAlignmentCommand 
            { 
                PcId = pcId, 
                AlignmentId = model.SelectedOptionId 
            });

            return RedirectToAction(nameof(SelectLanguages), new { model.PcId, model.PartyId });
        }

        public IActionResult SelectLanguages(string pcId, int partyId)
        {
            var query = new GetLanguageOptionsQuery 
            { 
                PcId = Convert.ToInt32(Decrypt(pcId)), 
                PartyId = partyId 
            };

            var model = _mapper.Map<PlayerLanguagesDTO, CheckboxSelectModel<LanguageModel>>(SendQuery<GetLanguageOptionsQuery, PlayerLanguagesDTO>(query));
            model.PcId = pcId;
            model.PartyId = partyId;

            if (model.Options.Where(n => n.IsSelected).Count() == model.NumberOfSelections)
            {
                return SelectLanguages(model);
            }

            return View(model);
        }

        [HttpPost]
        public IActionResult SelectLanguages(CheckboxSelectModel<LanguageModel> model)
        {
            var pcId = Convert.ToInt32(Decrypt(model.PcId));

            SendCommand(new SetPCLanguagesCommand { PcId = pcId, Languages = model.Options.Where(n => n.IsSelected).Select(n => n.Id).ToList() });

            return RedirectToAction(nameof(SelectSkills), new { model.PcId, model.PartyId });
        }

        public IActionResult SelectSkills(string pcId, int partyId)
        {
            var query = new GetSkillOptionsQuery
            {
                PcId = Convert.ToInt32(Decrypt(pcId)),
                PartyId = partyId
            };

            var model = _mapper.Map<PcSkillsDTO, CheckboxSelectModel<SkillModel>>(SendQuery<GetSkillOptionsQuery, PcSkillsDTO>(query));
            model.PcId = pcId;
            model.PartyId = partyId;

            if (model.Options.Where(n => n.IsSelected).Count() == model.NumberOfSelections)
            {
                return SelectSkills(model);
            }

            return View(model);
        }

        [HttpPost]
        public IActionResult SelectSkills(CheckboxSelectModel<SkillModel> model)
        {
            var pcId = Convert.ToInt32(Decrypt(model.PcId));

            SendCommand(new SetPCSkillsCommand { PcId = pcId, Skills = model.Options.Where(n => n.IsSelected).Select(n => n.Id).ToList() });

            return RedirectToAction(nameof(SelectSpells), new { model.PcId, model.PartyId });
        }

        public IActionResult SelectSpells(string pcId, int partyId)
        {
            var query = new GetSpellOptionsQuery
            {
                PcId = Convert.ToInt32(Decrypt(pcId)),
                PartyId = partyId
            };

            var model = new SpellSelectModel();

            model.checkboxSelectModel = _mapper.Map<List<SpellDTO>, CheckboxSelectModel<SpellModel>>(SendQuery<GetSpellOptionsQuery, IEnumerable<SpellDTO>>(query).ToList());
            model.checkboxSelectModel.PcId = pcId;
            model.checkboxSelectModel.PartyId = partyId;

            //model.radioSelectModel = _mapper.Map<PcSpellDTO, RadioSelectModel<SpellModel>>(SendQuery<GetPcSpellsQuery, PcSpellDTO>(query));
            //model.radioSelectModel.PcId = pcId;
            //model.radioSelectModel.PartyId = partyId;

            if (model.checkboxSelectModel.Options.Where(n => n.IsSelected).Count() == model.checkboxSelectModel.NumberOfSelections)
            {
                return SelectSpells(model);
            }

            return View(model);
        }

        public IActionResult SelectSpells(SpellSelectModel model)
        {
            var pcId = Convert.ToInt32(Decrypt(model.checkboxSelectModel.PcId));

            SendCommand(new SetPCSpellsCommand { PcId = pcId, SpellToRemove = model.radioSelectModel.SelectedOptionId, Spells = model.checkboxSelectModel.Options.Where(n => n.IsSelected).Select(n => n.Id).ToList() });

            return RedirectToAction(nameof(SelectSpells), new { model.checkboxSelectModel.PcId, model.checkboxSelectModel.PartyId });
        }






        public IActionResult Details(int pcid)
        {
            var query = new GetPlayerCharacterQuery { PcId = pcid };

            var dto = SendQuery<GetPlayerCharacterQuery, PlayerCharacterDTO>(query);

            var model = _mapper.Map<PlayerCharacterDTO, PlayerCharacterModel>(dto);

            model.Abilities = _context.Ability.OrderBy(n => n.Id).ToList();
            model.Skills = _context.Skill.OrderBy(n => n.Id).ToList();

            return View(model);
        }
    }
}