using AutoMapper;
using Core._Party.Command;
using Core._Party.DTO;
using Core._Party.Query;
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
using Infrastructure.Session;
using Microsoft.AspNetCore.DataProtection;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.Extensions.Configuration;
using NoticeBoard.Models.Alignments;
using NoticeBoard.Models.Backgrounds;
using NoticeBoard.Models.Classes;
using NoticeBoard.Models.Party;
using NoticeBoard.Models.PlayerCharacters;
using NoticeBoard.Models.Races;
using NoticeBoard.Models.Shared;
using System;
using System.Collections.Generic;
using System.Linq;

namespace NoticeBoard.Controllers
{
    public class PartyController : BaseController
    {
        public PartyController(IMediator mediator, NoticeBoardContext databaseContext, IConfiguration configuration, IMapper mapper, ISessionInformation sessionInformation, IDataProtectionProvider dataProtectionProvider) : 
            base(mediator, databaseContext, configuration, mapper, sessionInformation, dataProtectionProvider)
        {

        }

        public IActionResult Index()
        {
            var model = _mapper.Map<List<PartyDTO>,List<PartyModel>>(SendQuery<GetPlayerPartiesQuery, IEnumerable<PartyDTO>>(new GetPlayerPartiesQuery()).ToList());

            return View(model);
        }

        public IActionResult Create()
        {
            var model = new CreatePartyModel
            {
                Sources = _mapper.Map<List<SourceDTO>, List<SourceModel>>(SendQuery<GetSourcesQuery, IEnumerable<SourceDTO>>(new GetSourcesQuery()).ToList()),
                CharacterGenOptionModels = _mapper.Map<List<CharacterGenerationMethodDTO>, List<CharacterGenerationMethodModel>>(SendQuery<GetCharacterGenerationOptionsQuery, IEnumerable<CharacterGenerationMethodDTO>>(new GetCharacterGenerationOptionsQuery()).ToList())
            };

            return View(model);
        }

        [HttpPost]
        public IActionResult Create(CreatePartyModel model)
        {
            var result = SendCommand(new CreatePartyCommand
            {
                Name = model.Name,
                Description = model.Description,
                CharacterGenerationMethodId = model.SelectedCharacterGenOptionId,
                NewCharacterStartingLevel = model.NewCharacterStartingLevel,
                Sources = model.Sources.Where(n => n.IsSelected).Select(n => n.Id).ToList()
            });

            return RedirectToAction(nameof(Details));
        }

        public IActionResult Details()
        {


            return View();
        }

    }
}