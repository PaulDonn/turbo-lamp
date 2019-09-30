using AutoMapper;
using Core.Class.DTO;
using Core.PlayerCharacters.DTO;
using Core.PlayerCharacters.Query;
using Core.Races.DTO;
using DataModel;
using Infrastructure.CQRS;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Core.PlayerCharacters.QueryHandler
{
    public class GetPCQueryHandler : IQueryHandler<GetPCQuery, PlayerCharacterDTO>
    {
        private NoticeBoardContext _context;
        private IMapper _mapper;

        public GetPCQueryHandler(NoticeBoardContext context, IMapper mapper)
        {
            _context = context;
            _mapper = mapper;
        }

        public PlayerCharacterDTO Handle(GetPCQuery query)
        {
            var dto = new PlayerCharacterDTO();

            var pc = _context.PlayerCharacter.Include(n => n.Class)
                                             .ThenInclude(n => n.Archetype)
                                             .Include(n => n.Alignment)
                                             .Include(n => n.Background)
                                             .Include(n => n.Race)
                                             .Include(n => n.SubRace)
                                             .Include(n => n.Party)
                                            .SingleOrDefault(n => n.Id == query.PcId);

            if(pc != null)
            {
                dto = _mapper.Map<PlayerCharacter, PlayerCharacterDTO>(pc);
            }

            return dto;
        }
    }
}
