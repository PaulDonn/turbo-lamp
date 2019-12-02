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
    public class GetPlayerPartiesQuery : IQuery<IEnumerable<PartyDTO>>
    {
    }

    public class GetPlayerPartiesQueryHandler : IQueryHandler<GetPlayerPartiesQuery, IEnumerable<PartyDTO>>
    {
        private NoticeBoardContext _context;

        private ISessionInformation _sessionInformation;

        private IMapper _mapper;

        public GetPlayerPartiesQueryHandler(NoticeBoardContext context, ISessionInformation sessionInformation, IMapper mapper)
        {
            _context = context;
            _sessionInformation = sessionInformation;
            _mapper = mapper;
        }

        public IEnumerable<PartyDTO> Handle(GetPlayerPartiesQuery query)
        {
            var dto = new List<PartyDTO>();

            var player = _context.Player.SingleOrDefault(n => n.UserId == _sessionInformation.UserId && n.IsEnabled);

            if(player != null)
            {
                dto = _context.PlayerParty.Where(n => n.PlayerId == player.Id)
                                          .Include(n => n.Party.CharacterGenerationMethod)
                                          .Include(n => n.Party)
                                          .ThenInclude(n => n.PartySource)
                                          .ThenInclude(n => n.Source).Select(n => _mapper.Map<Party, PartyDTO>(n.Party)).ToList();
            }

            return dto;
        }
    }
}
