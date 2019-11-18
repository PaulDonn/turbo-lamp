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
    public class GetArchetypeOptionsQuery: IQuery<IEnumerable<ArchetypeDTO>>
    {
        public int PartyId { get; set; }

        public int ClassId { get; set; }
    }

    public class GetArchetypeOptionsQueryHandler : IQueryHandler<GetArchetypeOptionsQuery, IEnumerable<ArchetypeDTO>>
    {
        private NoticeBoardContext _context;

        private IMapper _mapper;

        public GetArchetypeOptionsQueryHandler(NoticeBoardContext context, IMapper mapper)
        {
            _context = context;
            _mapper = mapper;
        }

        public IEnumerable<ArchetypeDTO> Handle(GetArchetypeOptionsQuery query)
        {
            var dto = new List<ArchetypeDTO>();

            var party = _context.Party.Where(n => n.Id == query.PartyId)
                                      .Include(n => n.PartySource)
                                      .SingleOrDefault();

            if (party != null)
            {
                var archetypes = _context.Archetype.Where(n => n.ClassId == query.ClassId && 
                                                            party.PartySource.Any(m => m.SourceId == n.SourceId))
                                                   .Include(n => n.ClassFeature);

                foreach (var archetype in archetypes)
                {
                    dto.Add(_mapper.Map<Archetype, ArchetypeDTO>(archetype));
                }
            }

            return dto;
        }
    }
}
