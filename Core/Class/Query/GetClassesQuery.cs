using Core.Class.DTO;
using DataModel;
using Infrastructure.CQRS;
using System.Collections.Generic;
using System.Linq;

namespace Core.Class.Query
{
    public class GetClassesQuery : IQuery<IEnumerable<ClassDTO>>
    {
    }

    public class GetClassesQueryHandler : IQueryHandler<GetClassesQuery, IEnumerable<ClassDTO>>
    {
        private NoticeBoardContext context;

        public GetClassesQueryHandler(NoticeBoardContext _context)
        {
            context = _context;
        }

        IEnumerable<ClassDTO> IQueryHandler<GetClassesQuery, IEnumerable<ClassDTO>>.Handle(GetClassesQuery query)
        {
            var result = new List<ClassDTO>();

            var classes = context.Class.ToList();

            foreach (var playerClass in classes)
            {
                result.Add(new ClassDTO
                {
                    Id = playerClass.Id,
                    Name = playerClass.Name,
                    Description = playerClass.Description,
                    HitDie = "d" + playerClass.HitDie.ToString(),
                    ArchetypeTypeName = playerClass.ArchetypeTypeName,
                    ArchetypeTypeDescription = playerClass.ArchetypeTypeDescription,
                    ArchetypeStartingLevel = playerClass.ArchetypeStartingLevel,
                    NumberOfStartingSkills = playerClass.NumberOfStartingSkills
                });
            }

            return result;
        }
    }
}
