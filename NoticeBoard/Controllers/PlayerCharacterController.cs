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
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.Extensions.Configuration;
using NoticeBoard.Models.Backgrounds;
using NoticeBoard.Models.Classes;
using NoticeBoard.Models.PlayerCharacters;
using NoticeBoard.Models.Races;
using System;
using System.Collections.Generic;
using System.Linq;

namespace NoticeBoard.Controllers
{
    public class PlayerCharacterController : BaseController
    {
        public PlayerCharacterController(IMediator mediator, NoticeBoardContext databaseContext, IConfiguration configuration, IMapper mapper) : base(mediator, databaseContext, configuration, mapper)
        {

        }

        public IActionResult Index()
        {
            return View();
        }

        public IActionResult Create()
        {
            var model = new CreatePlayerCharacterModel();

            return View(model);
        }

        [HttpPost]
        public IActionResult Create(CreatePlayerCharacterModel model)
        {
            var command = new CreatePCCommand
            {
                CharacterName = model.CharacterName,
                BackGroundId = model.BackgroundId,
                RaceId = model.RaceId,
                ClassId = model.ClassId,
                ArchetypeId = model.ArchetypeId,
                AlignmentId = model.AlignmentId
            };

            var result = SendCommand(command);

            return RedirectToAction(nameof(CharacterDetails), new { pcid = result.NewRecordId });
        }

        public IActionResult NewCharacter()
        {
            //TODO: Command to create new player character

            return RedirectToAction(nameof(SelectRace), new { pcId = 1, partyId = 1 }); //TODO: Replace with PartyId from Session/Page
        }

        public IActionResult SelectRace(int pcId, int partyId)
        {
            var model = new RaceSelectModel { PcId = pcId, PartyId = partyId };

            var query = new GetRaceOptionsQuery { PartyId = partyId }; 

            model.Races = _mapper.Map<List<RaceDTO>, List<RaceModel>>(SendQuery<GetRaceOptionsQuery, IEnumerable<RaceDTO>>(query).ToList());

            return View(model);
        }

        public IActionResult SelectRace(RaceSelectModel model)
        {
            //TODO: Add Command to save Character Race

            return RedirectToAction(nameof(SelectSubRace), new 
            { 
                pcId = model.PcId, 
                partyId = model.PartyId,
                raceId = model.SelectedRaceId 
            });
        }

        public IActionResult SelectSubRace(int pcId, int partyId, int raceId)
        {
            var model = new SubRaceSelectModel { PcId = pcId, PartyId = partyId };

            var query = new GetSubRaceOptionsQuery
            {
                PartyId = partyId,
                RaceId = raceId
            };

            var subRaces = SendQuery<GetSubRaceOptionsQuery, IEnumerable<SubRaceDTO>>(query).ToList();
            if (subRaces.Count() > 0)
            {
                model.SubRaces = _mapper.Map<List<SubRaceDTO>, List<SubRaceModel>>(subRaces);
                return View(model);
            }

            return RedirectToAction(nameof(SelectClass), new { pcId, partyId });
        }

        public IActionResult SelectSubRace(SubRaceSelectModel model)
        {
            //TODO: Add Command to save Character SubRace

            return RedirectToAction(nameof(SelectClass), new { model.PcId, model.PartyId });
        }

        public IActionResult SelectClass(int pcId, int partyId)
        {
            var model = new ClassSelectModel { PcId = pcId, PartyId = partyId };

            var query = new GetClassOptionsQuery { PartyId = partyId };

            model.Classes = _mapper.Map<List<ClassDTO>, List<ClassModel>>(SendQuery<GetClassOptionsQuery, IEnumerable<ClassDTO>>(query).ToList());

            return View(model);
        }

        public IActionResult SelectClass(ClassSelectModel model)
        {
            //TODO: Add Command to save Character Class

            if(model.HasLevel1Archetype)
            {
                return RedirectToAction(nameof(SelectArchetype), new
                {
                    pcId = model.PcId,
                    partyId = model.PartyId,
                    classId = model.SelectedClassId
                });
            }

            return RedirectToAction(nameof(SelectBackground), new { model.PcId, model.PartyId });
        }

        public IActionResult SelectArchetype(int pcId, int partyId, int classId)
        {
            var model = new ArchetypeSelectModel { PcId = pcId, PartyId = partyId };

            var query = new GetArchetypeOptionsQuery
            {
                PartyId = partyId,
                ClassId = classId
            };

            var archetypes = SendQuery<GetArchetypeOptionsQuery, IEnumerable<ArchetypeDTO>>(query).ToList();
            if (archetypes.Count() > 0)
            {
                var playerClass = SendQuery<GetClassQuery, ClassDTO>(new GetClassQuery { Id = classId });
                model.ArchetypeName = playerClass.Name;
                model.ArchetypeDescription = playerClass.ArchetypeTypeDescription;

                model.Archetypes = _mapper.Map<List<ArchetypeDTO>, List<ArchetypeModel>>(archetypes);
                return View(model);
            }

            return RedirectToAction(nameof(SelectBackground), new { pcId, partyId });
        }

        public IActionResult SelectArchetype(ArchetypeSelectModel model)
        {
            //TODO: Add Command to save Character Archetype

            return RedirectToAction(nameof(SelectBackground), new { model.PcId, model.PartyId });
        }

        public IActionResult SelectBackground(int pcId, int partyId)
        {
            var model = new BackgroundSelectModel { PcId = pcId, PartyId = partyId };

            var query = new GetBackgroundOptionsQuery { PartyId = partyId };

            model.Backgrounds = _mapper.Map<List<BackgroundDTO>, List<BackgroundModel>>(SendQuery<GetBackgroundOptionsQuery, IEnumerable<BackgroundDTO>>(query).ToList());

            return View(model);
        }

        public IActionResult SelectBackground(BackgroundSelectModel model)
        {
            //TODO: Add Command to save Character Background

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