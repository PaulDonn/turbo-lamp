using AutoMapper;
using Core.Alignment.DTO;
using Core.Alignment.Query;
using Core.Background.DTO;
using Core.Background.Query;
using Core.Class.DTO;
using Core.Class.Query;
using Core.Language.DTO;
using Core.Language.Query;
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
using System.Collections.Generic;
using System.Linq;
using NoticeBoard.Models.Abilities;
using NoticeBoard.Models.PlayerCharacters;

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
            var query = new GetPCQuery { PcId = pcid };

            var dto = SendQuery<GetPCQuery, PlayerCharacterDTO>(query);

            var model = _mapper.Map<PlayerCharacterDTO, PlayerCharacterModel>(dto);

            model.Abilities = _databaseContext.Ability.OrderBy(n => n.Id).ToList();
            model.Skills = _databaseContext.Skill.OrderBy(n => n.Id).ToList();

            return View(model);
        }
    }
}