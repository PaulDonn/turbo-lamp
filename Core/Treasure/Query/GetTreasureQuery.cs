using AutoMapper;
using Core._Equipment.DTO;
using Core._Treasure.DTO;
using DataModel;
using Infrastructure.CQRS;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Core._Treasure.Query
{
    public class GetTreasureQuery : IQuery<TreasureDTO>
    {
        public int Id { get; set; }
    }

    public class GetTreasureQueryHandler : IQueryHandler<GetTreasureQuery, TreasureDTO>
    {
        private NoticeBoardContext _context;
        private IMapper _mapper;

        public GetTreasureQueryHandler(NoticeBoardContext context, IMapper mapper)
        {
            _context = context;
            _mapper = mapper;
        }

        public TreasureDTO Handle(GetTreasureQuery query)
        {
            var dto = new TreasureDTO();

            var treasure = _context.Treasure.SingleOrDefault(n => n.Id == query.Id);

            if(treasure != null)
            {
                dto = _mapper.Map<Treasure, TreasureDTO>(treasure);
            }

            return dto;
        }
    }
}
