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
    public class GetCampaignQuery : IQuery<CampaignDTO>
    {
        public int CampaignId { get; set; }
    }

    public class GetCampaignQueryHandler : IQueryHandler<GetCampaignQuery, CampaignDTO>
    {
        private NoticeBoardContext _context;

        private ISessionInformation _sessionInformation;

        private IMapper _mapper;

        public GetCampaignQueryHandler(NoticeBoardContext context, ISessionInformation sessionInformation, IMapper mapper)
        {
            _context = context;
            _sessionInformation = sessionInformation;
            _mapper = mapper;
        }

        public CampaignDTO Handle(GetCampaignQuery query)
        {
            var dto = new CampaignDTO();

            var player = _context.Player.SingleOrDefault(n => n.UserId == _sessionInformation.UserId && n.IsEnabled);

            if(player != null)
            {
                dto = _mapper.Map<Campaign, CampaignDTO>(_context.Campaign.Include(n => n.CharacterGenerationMethod)
                                                                 .Include(n => n.CampaignSource)
                                                                    .ThenInclude(n => n.Source)
                                                                 .Include(n => n.PlayerCampaign)
                                                                    .ThenInclude(n => n.Player)
                                                                 .Include(n => n.PlayerCharacter)
                                                                    .ThenInclude(n => n.Class)
                                                                 .Include(n => n.PlayerCharacter)
                                                                    .ThenInclude(n => n.Archetype)
                                                                 .Include(n => n.PlayerCharacter)
                                                                    .ThenInclude(n => n.Race)
                                                                 .Include(n => n.PlayerCharacter)
                                                                    .ThenInclude(n => n.SubRace)
                                                                 .SingleOrDefault(n => n.Id == query.CampaignId && 
                                                                                       n.PlayerCampaign.Any(m => m.PlayerId == player.Id)));
            }

            return dto;
        }
    }
}
