using AutoMapper;
using Core._Campaign.DTO;
using DataModel;
using Infrastructure.CQRS;
using Infrastructure.Session;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Core._Campaign.Query
{
    public class GetPlayerCampaignsQuery : IQuery<IEnumerable<CampaignDTO>>
    {
    }

    public class GetPlayerCampaignsQueryHandler : IQueryHandler<GetPlayerCampaignsQuery, IEnumerable<CampaignDTO>>
    {
        private NoticeBoardContext _context;

        private ISessionInformation _sessionInformation;

        private IMapper _mapper;

        public GetPlayerCampaignsQueryHandler(NoticeBoardContext context, ISessionInformation sessionInformation, IMapper mapper)
        {
            _context = context;
            _sessionInformation = sessionInformation;
            _mapper = mapper;
        }

        public IEnumerable<CampaignDTO> Handle(GetPlayerCampaignsQuery query)
        {
            var dto = new List<CampaignDTO>();

            var player = _context.Player.SingleOrDefault(n => n.UserId == _sessionInformation.UserId && n.IsEnabled);

            if(player != null)
            {
                var playerCampaigns = _context.PlayerCampaign.Where(n => n.PlayerId == player.Id)
                                          .Include(n => n.Campaign.CharacterGenerationMethod)
                                          .Include(n => n.Campaign)
                                          .ThenInclude(n => n.CampaignSource)
                                          .ThenInclude(n => n.Source);

                foreach (var playerCampaign in playerCampaigns)
                {
                    var campaign = _mapper.Map<Campaign, CampaignDTO>(playerCampaign.Campaign);
                    if(Convert.ToInt32(_sessionInformation.UserId) == playerCampaign.Campaign.OwningDmId)
                    {
                        campaign.UserIsDM = true;
                    }

                    dto.Add(campaign);
                }
            }

            return dto;
        }
    }
}
