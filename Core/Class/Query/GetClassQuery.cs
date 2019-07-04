using Core.Class.DTO;
using Infrastructure.CQRS;

namespace Core.Class.Query
{
    public class GetClassQuery : IQuery<ClassDTO>
    {
        public int Id { get; set; }
    }
}
