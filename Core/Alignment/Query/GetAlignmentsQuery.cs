using Core.Alignment.DTO;
using Infrastructure.CQRS;
using System.Collections.Generic;

namespace Core.Alignment.Query
{
    public class GetAlignmentsQuery : IQuery<IEnumerable<AlignmentDTO>>
    {
    }
}
