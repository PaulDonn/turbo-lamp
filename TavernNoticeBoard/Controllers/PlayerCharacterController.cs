using Core.Alignment.DTO;
using Core.Alignment.Query;
using Core.Background.DTO;
using Core.Background.Query;
using Core.Class.DTO;
using Core.Class.Query;
using Core.PlayerCharacter.Command;
using Core.Race.DTO;
using Core.Race.Query;
using DataModel;
using Infrastructure.Mediator;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.Extensions.Configuration;
using System.Collections.Generic;
using System.Linq;
using TavernNoticeBoard.Models.Player;

namespace TavernNoticeBoard.Controllers
{
    public class PlayerCharacterController : BaseController
    {
        public PlayerCharacterController(IMediator mediator, NoticeBoardContext databaseContext, IConfiguration configuration) : base(mediator, databaseContext, configuration)
        {
        }

        public IActionResult Index()
        {
            return View();
        }

        public IActionResult Create()
        {
            var model = new CreatePlayerModel();


            var racesQuery = new GetRacesQuery();
            var racesDto = SendQuery<GetRacesQuery, IEnumerable<RaceDTO>>(racesQuery);
            model.Races = new SelectList(racesDto, nameof(RaceDTO.Id), nameof(RaceDTO.Name));
            model.Races.First().Selected = true;

            var subRacesQuery = new GetSubRacesQuery { RaceId = 1 };
            var subRacesDto = SendQuery<GetSubRacesQuery, IEnumerable<SubRaceDTO>>(subRacesQuery);
            model.SubRaces = new SelectList(subRacesDto, nameof(SubRaceDTO.Id), nameof(SubRaceDTO.Name));
            if (model.SubRaces.Count() > 0) { model.SubRaces.First().Selected = true; }

            var classesQuery = new GetClassesQuery();
            var classesDto = SendQuery<GetClassesQuery, IEnumerable<ClassDTO>>(classesQuery);
            model.Classes = new SelectList(classesDto, nameof(ClassDTO.Id), nameof(ClassDTO.Name));
            model.Classes.First().Selected = true;

            var archetypesQuery = new GetArchetypesQuery { ClassId = 1 };
            var archetypesDto = SendQuery<GetArchetypesQuery, IEnumerable<ArchetypeDTO>>(archetypesQuery);
            model.Archetypes = new SelectList(archetypesDto, nameof(ArchetypeDTO.Id), nameof(ArchetypeDTO.Name));
            if (model.Archetypes.Count() > 0) { model.Archetypes.FirstOrDefault().Selected = true; }

            var backgroundsQuery = new GetBackgroundsQuery();
            var backgroundsDto = SendQuery<GetBackgroundsQuery, IEnumerable<BackgroundDTO>>(backgroundsQuery);
            model.Backgrounds = new SelectList(backgroundsDto, nameof(BackgroundDTO.Id), nameof(BackgroundDTO.Name));
            model.Backgrounds.First().Selected = true;

            var alignmentsQuery = new GetAlignmentsQuery();
            var alignmentsDto = SendQuery<GetAlignmentsQuery, IEnumerable<AlignmentDTO>>(alignmentsQuery);
            model.Alignments = new SelectList(alignmentsDto, nameof(AlignmentDTO.Id), nameof(AlignmentDTO.Name));
            model.Alignments.First().Selected = true;

            return View(model);
        }

        [HttpPost]
        public IActionResult Create(CreatePlayerModel model)
        {
            var command = new CreatePCCommand
            {
                CharacterName = model.CharacterName,
                BackGroundId = model.BackGroundId,
                RaceId = model.RaceId,
                ClassId = model.ClassId,
                SubClassId = model.ArchetypeId,
                AlignmentId = model.AlignmentId
            };

            var result = SendCommand(command);

            return RedirectToAction(nameof(Details), new { pcid = result.NewRecordId });
        }

        #region Create Ajax calls


        public JsonResult GetRaceDetails(int raceId)
        {
            var query = new GetRaceQuery
            {
                Id = raceId
            };

            var result = SendQuery<GetRaceQuery, RaceDTO>(query);

            return Json(result);
        }

        public JsonResult GetSubRaces(int raceId)
        {
            var subRacesQuery = new GetSubRacesQuery { RaceId = raceId };
            var subRacesDto = SendQuery<GetSubRacesQuery, IEnumerable<SubRaceDTO>>(subRacesQuery);
            var subRaces = new SelectList(subRacesDto, nameof(SubRaceDTO.Id), nameof(SubRaceDTO.Name));
            if (subRaces.Count() > 0) { subRaces.First().Selected = true; }

            return Json(subRaces);
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

        public JsonResult GetArchetyleDetails(int archetypeId)
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

        #endregion

        public IActionResult Details(int pcid)
        {
            return View();
        }
    }
}