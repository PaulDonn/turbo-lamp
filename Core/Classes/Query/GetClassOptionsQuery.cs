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
        public int PartyId { get; set; }
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

            var partySources = _context.PartySource.Where(n => n.PartyId == query.PartyId).Select(n => n.SourceId);

            if (partySources.Count() > 0)
            {
                var classes = _context.Class.Where(n => partySources.Contains(n.SourceId))
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
