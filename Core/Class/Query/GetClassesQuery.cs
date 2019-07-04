using Core.Class.DTO;
using Infrastructure.CQRS;
using System.Collections.Generic;

namespace Core.Class.Query
{
    public class GetClassesQuery : IQuery<IEnumerable<ClassDTO>>
    {
    }
}
