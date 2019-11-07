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
    public class GetPcTreasureQuery : IQuery<PcTreasureDTO>
    {
        public int Id { get; set; }
    }

    public class GetPcTreasureQueryHandler : IQueryHandler<GetPcTreasureQuery, PcTreasureDTO>
    {
        private NoticeBoardContext _context;
        private IMapper _mapper;

        public GetPcTreasureQueryHandler(NoticeBoardContext context, IMapper mapper)
        {
            _context = context;
            _mapper = mapper;
        }

        public PcTreasureDTO Handle(GetPcTreasureQuery query)
        {
            var dto = new PcTreasureDTO();

            var pcTreasure = _context.PcTreasure.Where(n => n.Id == query.Id)
                                                .Include(n => n.Treasure)
                                                .SingleOrDefault();

            if(pcTreasure != null)
            {
                dto = _mapper.Map<PcTreasure, PcTreasureDTO>(pcTreasure);
            }

            return dto;
        }
    }
}
