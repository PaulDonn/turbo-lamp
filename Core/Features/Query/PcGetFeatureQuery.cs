using AutoMapper;
using Core.Features.DTO;
using DataModel;
using Infrastructure.CQRS;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Core.Features.Query
{
    public class GetPcFeatureQuery: IQuery<FeatureDTO>
    {
        public int Id { get; set; }
    }

    public class GetPcFeatureQueryHandler : IQueryHandler<GetPcFeatureQuery, FeatureDTO>
    {
        private NoticeBoardContext _context;
        private IMapper _mapper;

        public GetPcFeatureQueryHandler(NoticeBoardContext context, IMapper mapper)
        {
            _context = context;
            _mapper = mapper;
        }

        public FeatureDTO Handle(GetPcFeatureQuery query)
        {
            var dto = new FeatureDTO();

            var pcFeature = _context.PcFeature.Where(n => n.Id == query.Id)
                                            .Include(n => n.Feature)
                                            .FirstOrDefault();

            if(pcFeature != null)
            {
                dto = _mapper.Map<PcFeature, FeatureDTO>(pcFeature);
            }

            return dto;
        }
    }
}
