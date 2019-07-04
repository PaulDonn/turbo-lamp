using Core.Alignment.DTO;
using Infrastructure.CQRS;

namespace Core.Alignment.Query
{
    public class GetAlignmentQuery : IQuery<AlignmentDTO>
    {
        public int Id { get; set; }
    }
}
