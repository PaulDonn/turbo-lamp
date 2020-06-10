using AutoMapper;
using Core.Classes.DTO;
using DataModel;
using Infrastructure.CQRS;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Core.Classes.Query
{
    public class GetClassOptionsQuery : IQuery<IEnumerable<ClassDTO>>
    {
        public int CampaignId { get; set; }
    }

    public class GetClassOptionsQueryHandler : IQueryHandler<GetClassOptionsQuery, IEnumerable<ClassDTO>>
    {
        private NoticeBoardContext _context;

        private IMapper _mapper;

        public GetClassOptionsQueryHandler(NoticeBoardContext context, IMapper mapper)
        {
            _context = context;
            _mapper = mapper;
        }

        public IEnumerable<ClassDTO> Handle(GetClassOptionsQuery query)
        {
            var dto = new List<ClassDTO>();

            var campaignSources = _context.CampaignSource.Where(n => n.CampaignId == query.CampaignId).Select(n => n.SourceId);

            if (campaignSources.Count() > 0)
            {
                var classes = _context.Class.Where(n => campaignSources.Contains(n.SourceId))
                                            .OrderBy(n => n.Name);

                foreach (var playerClass in classes)
                {
                    dto.Add(_mapper.Map<Class, ClassDTO>(playerClass));
                }
            }

            return dto;
        }
    }
}
