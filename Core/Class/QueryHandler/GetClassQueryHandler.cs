using Core.Class.DTO;
using Core.Class.Query;
using DataModel;
using Infrastructure.CQRS;
using System.Linq;

namespace Core.Class.QueryHandler
{
    public class GetClassQueryHandler : IQueryHandler<GetClassQuery, ClassDTO>
    {
        private NoticeBoardContext context;

        public GetClassQueryHandler(NoticeBoardContext _context)
        {
            context = _context;
        }

        ClassDTO IQueryHandler<GetClassQuery, ClassDTO>.Handle(GetClassQuery query)
        {
            var dto = new ClassDTO();

            if (query.Id > 0)
            {
                var playerClass = context.Class.Single(n => n.Id == query.Id);

                dto.Id = playerClass.Id;
                dto.Name = playerClass.Name;
                dto.Description = playerClass.Description;
                dto.HitDie = "d" + playerClass.HitDie.ToString();
                dto.ArchetypeStartingLevel = playerClass.ArchetypeStartingLevel;
                dto.ArchetypeTypeName = playerClass.ArchetypeTypeName;
                dto.ArchetypeTypeDescription = playerClass.ArchetypeTypeDescription;
                dto.NumberOfStartingSkills = playerClass.NumberOfStartingSkills;
            }

            return dto;
        }
    }
}
    