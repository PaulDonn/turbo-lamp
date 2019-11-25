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
using DataModel;
using Infrastructure.Mediator;
using Microsoft.AspNetCore.DataProtection;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.Extensions.Configuration;
using NoticeBoard.Models.Alignments;
using NoticeBoard.Models.Backgrounds;
using NoticeBoard.Models.Classes;
using NoticeBoard.Models.PlayerCharacters;
using NoticeBoard.Models.Races;
using NoticeBoard.Models.Shared;
using System;
using System.Collections.Generic;
using System.Linq;

namespace NoticeBoard.Controllers
{
    public class PlayerCharacterController : BaseController
    {
        public PlayerCharacterController(IMediator mediator, NoticeBoardContext databaseContext, IConfiguration configuration, IMapper mapper, IDataProtectionProvider dataProtectionProvider) : base(mediator, databaseContext, configuration, mapper, dataProtectionProvider)
        {

        }

        public IActionResult NewCharacter(int partyId)
        {
            var command = SendCommand(new CreatePCCommand
            {
                PartyId = partyId,
                PlayerId = 1 //TODO Replace with PlayerId from Session
            });

            var pcId = Encrypt(command.NewRecordId.ToString());

            return RedirectToAction(nameof(SelectRace), new { pcId, partyId }); //TODO: Replace with PlayerId from Session
        }

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
                ClassId = classId,
                Level = 1
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
            var model = new RadioSelectModel<AlignmentModel> { PcId = pcId, PartyId = partyId };

            var query = new GetAlignmentsQuery();

            model.OptionModels = _mapper.Map<List<AlignmentDTO>, List<AlignmentModel>>(SendQuery<GetAlignmentsQuery, IEnumerable<AlignmentDTO>>(query).ToList());

            return View(model);
        }

        [HttpPost]
        public IActionResult SelectAlignment(RadioSelectModel<AlignmentModel> model)
        {
            var pcId = Convert.ToInt32(Decrypt(model.PcId));

            SendCommand(new SetPCAlignmentCommand { PcId = pcId, AlignmentId = model.SelectedOptionId });

            throw new NotImplementedException();
        }

        #region Create Ajax calls

        public JsonResult GetRaces()
        {
            var racesQuery = new GetRacesQuery { };
            var racesDto = SendQuery<GetRacesQuery, IEnumerable<RaceDTO>>(racesQuery);
            var races = new SelectList(racesDto, nameof(RaceDTO.Id), nameof(RaceDTO.Name));

            return Json(races);
        }

        public JsonResult GetSubRaces(int raceId)
        {
            var subRacesQuery = new GetSubRacesQuery { RaceId = raceId };
            var subRacesDto = SendQuery<GetSubRacesQuery, IEnumerable<SubRaceDTO>>(subRacesQuery);
            var subRaces = new SelectList(subRacesDto, nameof(SubRaceDTO.Id), nameof(SubRaceDTO.Name));

            return Json(subRaces);
        }

        public JsonResult GetClasses()
        {
            var classesQuery = new GetClassesQuery { };
            var classesDto = SendQuery<GetClassesQuery, IEnumerable<ClassDTO>>(classesQuery);
            var classes = new SelectList(classesDto, nameof(ClassDTO.Id), nameof(ClassDTO.Name));

            return Json(classes);
        }

        public JsonResult GetArchetypes(int classId)
        {
            var archetypesQuery = new GetArchetypesQuery { ClassId = classId };
            var archetypesDto = SendQuery<GetArchetypesQuery, IEnumerable<ArchetypeDTO>>(archetypesQuery);
            var archetypes = new SelectList(archetypesDto, nameof(ArchetypeDTO.Id), nameof(ArchetypeDTO.Name));

            return Json(archetypes);
        }

        public JsonResult GetBackgrounds()
        {
            var backgroundsQuery = new GetBackgroundsQuery { };
            var backgroundsDto = SendQuery<GetBackgroundsQuery, IEnumerable<BackgroundDTO>>(backgroundsQuery);
            var backgrounds = new SelectList(backgroundsDto, nameof(BackgroundDTO.Id), nameof(BackgroundDTO.Name));

            return Json(backgrounds);
        }

        public JsonResult GetAlignments()
        {
            var alignmentsQuery = new GetAlignmentsQuery { };
            var alignmentsDto = SendQuery<GetAlignmentsQuery, IEnumerable<AlignmentDTO>>(alignmentsQuery);
            var alignments = new SelectList(alignmentsDto, nameof(AlignmentDTO.Id), nameof(AlignmentDTO.Name));

            return Json(alignments);
        }

        public JsonResult GetLanguages(bool filter, bool? isExotic)
        {
            var langagesQuery = new GetLanguagesQuery { Filter = filter, IsExotic = isExotic };
            var languagesDto = SendQuery<GetLanguagesQuery, IEnumerable<LanguageDTO>>(langagesQuery);

            return Json(languagesDto);
        }

        public JsonResult GetRaceDetails(int raceId)
        {
            var query = new GetRaceQuery
            {
                Id = raceId
            };

            var result = SendQuery<GetRaceQuery, RaceDTO>(query);

            return Json(result);
        }

        public JsonResult GetSubRaceDetails(int subRaceId)
        {
            var query = new GetSubRaceQuery
            {
                Id = subRaceId
            };

            var result = SendQuery<GetSubRaceQuery, SubRaceDTO>(query);

            return Json(result);
        }

        public JsonResult GetClassDetails(int classId)
        {
            var query = new GetClassQuery
            {
                Id = classId
            };

            var result = SendQuery<GetClassQuery, ClassDTO>(query);

            return Json(result);
        }

        public JsonResult GetArchetypeDetails(int archetypeId)
        {
            var query = new GetArchetypeQuery
            {
                Id = archetypeId
            };

            var result = SendQuery<GetArchetypeQuery, ArchetypeDTO>(query);

            return Json(result);
        }

        public JsonResult GetBackgroundDetails(int backgroundId)
        {
            var query = new GetBackgroundQuery
            {
                Id = backgroundId
            };

            var result = SendQuery<GetBackgroundQuery, BackgroundDTO>(query);

            return Json(result);
        }

        public JsonResult GetAlignmentDetails(int alignmentId)
        {
            var query = new GetAlignmentQuery
            {
                Id = alignmentId
            };

            var result = SendQuery<GetAlignmentQuery, AlignmentDTO>(query);

            return Json(result);
        }

        public JsonResult GetPcLanguages(int raceId, int? subRaceId, int? archetypeId, int backgroundId)
        {
            var langagesQuery = new GetPcLanguagesQuery { RaceId = raceId, SubRaceId = subRaceId, ArchetypeId = archetypeId, BackgroundId = backgroundId };
            var languagesDto = SendQuery<GetPcLanguagesQuery, PcLanguagesDTO>(langagesQuery);

            return Json(languagesDto);
        }

        #endregion

        public IActionResult CharacterDetails(int pcid)
        {
            var query = new GetPlayerCharacterQuery { PcId = pcid };

            var dto = SendQuery<GetPlayerCharacterQuery, PlayerCharacterDTO>(query);

            var model = _mapper.Map<PlayerCharacterDTO, PlayerCharacterModel>(dto);

            model.Abilities = _databaseContext.Ability.OrderBy(n => n.Id).ToList();
            model.Skills = _databaseContext.Skill.OrderBy(n => n.Id).ToList();

            return View(model);
        }
    }
}