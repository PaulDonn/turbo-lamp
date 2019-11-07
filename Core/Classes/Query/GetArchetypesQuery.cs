using Core.Classes.DTO;
using DataModel;
using Infrastructure.CQRS;
using System.Collections.Generic;
using System.Linq;

namespace Core.Classes.Query
{
    public class GetArchetypesQuery : IQuery<IEnumerable<ArchetypeDTO>>
    {
        public int ClassId { get; set; }
    }

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

            var archetypes = context.Archetype.Where(n => n.ClassId == query.ClassId).ToList();

            foreach (var archetype in archetypes)
            {
                result.Add(new ArchetypeDTO
                {
                    Id = archetype.Id,
                    Name = archetype.Name,
                    ShortName = archetype.ShortName,
                    Description = archetype.Description,
                    ClassId = archetype.ClassId
                });
            }

            return result;
        }
    }
}
