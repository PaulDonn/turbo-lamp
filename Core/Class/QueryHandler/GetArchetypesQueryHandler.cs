﻿using Core.Class.DTO;
using Core.Class.Query;
using DataModel;
using Infrastructure.CQRS;
using System.Collections.Generic;
using System.Linq;

namespace Core.Class.QueryHandler
{
    public class GetArchetypesQueryHandler : IQueryHandler<GetArchetypesQuery, IEnumerable<ArchetypeDTO>>
    {
        private NoticeBoardContext context;

        public GetArchetypesQueryHandler(NoticeBoardContext _context)
        {
            context = _context;
        }
        
        IEnumerable<ArchetypeDTO> IQueryHandler<GetArchetypesQuery, IEnumerable<ArchetypeDTO>>.Handle(GetArchetypesQuery query)
        {
            var result = new List<ArchetypeDTO>();

            var archetypes = context.Archetype.ToList();

            foreach(var archetype in archetypes)
            {
                result.Add(new ArchetypeDTO
                {
                    Id = archetype.Id,
                    Name = archetype.Name,
                    Description = archetype.Description,
                    ClassId = archetype.ClassId
                });
            }

            return result;
        }
    }
}