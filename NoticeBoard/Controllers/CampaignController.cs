using AutoMapper;
using Core._Campaign.Command;
using Core._Campaign.DTO;
using Core._Campaign.Query;
using DataModel;
using Infrastructure.Mediator;
using Infrastructure.Session;
using Microsoft.AspNetCore.DataProtection;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;
using NoticeBoard.Models.Campaign;
using System;
using System.Collections.Generic;
using System.Linq;

namespace NoticeBoard.Controllers
{
    public class CampaignController : BaseController
    {
        public CampaignController(IMediator mediator, NoticeBoardContext databaseContext, IConfiguration configuration, IMapper mapper, ISessionInformation sessionInformation, IDataProtectionProvider dataProtectionProvider) : 
            base(mediator, databaseContext, configuration, mapper, sessionInformation, dataProtectionProvider)
        {

        }

        public IActionResult Index()
        {
            var model = _mapper.Map<List<CampaignDTO>,List<CampaignModel>>(SendQuery<GetPlayerCampaignsQuery, IEnumerable<CampaignDTO>>(new GetPlayerCampaignsQuery()).ToList());

            foreach(var campaign in model)
            {
                campaign.CampaignId = Encrypt(campaign.Id.ToString());
            }

            return View(model);
        }

        public IActionResult Create()
        {
            var model = new CreateCampaignModel
            {
                Sources = _mapper.Map<List<SourceDTO>, List<SourceModel>>(SendQuery<GetSourcesQuery, IEnumerable<SourceDTO>>(new GetSourcesQuery()).ToList()),
                CharacterGenOptionModels = _mapper.Map<List<CharacterGenerationMethodDTO>, List<CharacterGenerationMethodModel>>(SendQuery<GetCharacterGenerationOptionsQuery, IEnumerable<CharacterGenerationMethodDTO>>(new GetCharacterGenerationOptionsQuery()).ToList())
            };

            return View(model);
        }

        [HttpPost]
        public IActionResult Create(CreateCampaignModel model)
        {
            var result = SendCommand(new CreateCampaignCommand
            {
                Name = model.Name,
                Description = model.Description,
                CharacterGenerationMethodId = model.SelectedCharacterGenOptionId,
                NewCharacterStartingLevel = model.NewCharacterStartingLevel,
                Sources = model.Sources.Where(n => n.IsSelected).Select(n => n.Id).ToList()
            });

            var campaignId = Encrypt(result.NewRecordId.ToString());

            return RedirectToAction(nameof(Details), new { campaignId });
        }

        public IActionResult Details(string campaignId)
        {
            var id = Convert.ToInt32(Decrypt(campaignId));

            var model = _mapper.Map<CampaignDTO, CampaignModel>(SendQuery<GetCampaignQuery, CampaignDTO>(new GetCampaignQuery { CampaignId = Convert.ToInt32(id) }));

            return View(model);
        }

    }
}