using AutoMapper;
using Core.Features.DTO;
using DataModel;
using Infrastructure.CQRS;
using System;
using System.Collections.Generic;
using System.Text;

namespace Core.Features.Query
{
    public class GetFeatureQuery: IQuery<FeatureDTO>
    {
        public int Id { get; set; }
    }

    public class GetFeatureQueryHandler: IQueryHandler<GetFeatureQuery, FeatureDTO>
    {
        private NoticeBoardContext _context;
        private IMapper _mapper;

        public GetFeatureQueryHandler(NoticeBoardContext context, IMapper mapper)
        {
            _context = context;
            _mapper = mapper;
        }

        public FeatureDTO Handle(GetFeatureQuery query)
        {
            var dto = new FeatureDTO();

            var feature = _context.Feature.Find(query.Id);

            if(feature != null)
            {
                dto = _mapper.Map<Feature, FeatureDTO>(feature);
            }

            return dto;
        }
    }
}
