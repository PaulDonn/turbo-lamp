using AutoMapper;
using Core._Party.DTO;
using DataModel;
using Infrastructure.CQRS;
using Infrastructure.Session;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Core._Party.Query
{
    public class GetPartyQuery : IQuery<PartyDTO>
    {
        public int PartyId { get; set; }
    }

    public class GetPartyQueryHandler : IQueryHandler<GetPartyQuery, PartyDTO>
    {
        private NoticeBoardContext _context;

        private ISessionInformation _sessionInformation;

        private IMapper _mapper;

        public GetPartyQueryHandler(NoticeBoardContext context, ISessionInformation sessionInformation, IMapper mapper)
        {
            _context = context;
            _sessionInformation = sessionInformation;
            _mapper = mapper;
        }

        public PartyDTO Handle(GetPartyQuery query)
        {
            var dto = new PartyDTO();

            var player = _context.Player.SingleOrDefault(n => n.UserId == _sessionInformation.UserId && n.IsEnabled);

            if(player != null)
            {
                dto = _mapper.Map<Party, PartyDTO>(_context.Party.Include(n => n.CharacterGenerationMethod)
                                                                 .Include(n => n.PartySource)
                                                                    .ThenInclude(n => n.Source)
                                                                 .Include(n => n.PlayerParty)
                                                                    .ThenInclude(n => n.Player)
                                                                 .Include(n => n.PlayerCharacter)
                                                                    .ThenInclude(n => n.Class)
                                                                 .Include(n => n.PlayerCharacter)
                                                                    .ThenInclude(n => n.Archetype)
                                                                 .Include(n => n.PlayerCharacter)
                                                                    .ThenInclude(n => n.Race)
                                                                 .Include(n => n.PlayerCharacter)
                                                                    .ThenInclude(n => n.SubRace)
                                                                 .SingleOrDefault(n => n.Id == query.PartyId && 
                                                                                       n.PlayerParty.Any(m => m.PlayerId == player.Id)));
            }

            return dto;
        }
    }
}
