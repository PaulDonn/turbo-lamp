using Core.Class.DTO;
using Infrastructure.CQRS;
using System.Collections.Generic;

namespace Core.Class.Query
{
    public class GetArchetypesQuery : IQuery<IEnumerable<ArchetypeDTO>>
    {
        public int ClassId { get; set; }
    }
}
