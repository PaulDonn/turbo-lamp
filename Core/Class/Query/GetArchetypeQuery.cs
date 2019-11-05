using Core.Class.DTO;
using DataModel;
using Infrastructure.CQRS;
using System.Linq;

namespace Core.Class.Query
{
    public class GetArchetypeQuery : IQuery<ArchetypeDTO>
    {
        public int Id { get; set; }
    }

    public class GetArchetypeQueryHandler : IQueryHandler<GetArchetypeQuery, ArchetypeDTO>
    {
        private NoticeBoardContext context;

        public GetArchetypeQueryHandler(NoticeBoardContext _context)
        {
            context = _context;
        }

        ArchetypeDTO IQueryHandler<GetArchetypeQuery, ArchetypeDTO>.Handle(GetArchetypeQuery query)
        {
            var dto = new ArchetypeDTO();

            if (query.Id > 0)
            {
                var archetype = context.Archetype.Single(n => n.Id == query.Id);

                dto.Id = archetype.Id;
                dto.Name = archetype.Name;
                dto.ShortName = archetype.ShortName;
                dto.Description = archetype.Description;
                dto.ClassId = archetype.ClassId;
            }

            return dto;
        }
    }
}
