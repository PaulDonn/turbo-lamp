using Core.Class.DTO;
using Infrastructure.CQRS;

namespace Core.Class.Query
{
    public class GetArchetypeQuery : IQuery<ArchetypeDTO>
    {
        public int Id { get; set; }
    }
}
