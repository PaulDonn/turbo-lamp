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
        public int partyId { get; set; }
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

            var party = _context.Party.Where(n => n.Id == query.partyId)
                                      .Include(n => n.PartySource)
                                      .SingleOrDefault();

            if (party != null)
            {
                var classes = _context.Class.Where(n => party.PartySource.Any(m => m.SourceId == n.SourceId));

                foreach (var playerClass in classes)
                {
                    dto.Add(_mapper.Map<Class, ClassDTO>(playerClass));
                }
            }

            return dto;
        }
    }
}
