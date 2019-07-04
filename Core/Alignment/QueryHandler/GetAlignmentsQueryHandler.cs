using Core.Alignment.DTO;
using Core.Alignment.Query;
using DataModel;
using Infrastructure.CQRS;
using System.Collections.Generic;
using System.Linq;

namespace Core.Alignment.QueryHandler
{
    public class GetAlignmentsQueryHandler : IQueryHandler<GetAlignmentsQuery, IEnumerable<AlignmentDTO>>
    {
        private NoticeBoardContext context;

        public GetAlignmentsQueryHandler(NoticeBoardContext _context)
        {
            context = _context;
        }

        IEnumerable<AlignmentDTO> IQueryHandler<GetAlignmentsQuery, IEnumerable<AlignmentDTO>>.Handle(GetAlignmentsQuery query)
        {
            var result = new List<AlignmentDTO>();
            
            var alignments = context.Alignment.ToList();

            foreach(var alignment in alignments)
            {
                result.Add(new AlignmentDTO
                {
                    Id = alignment.Id,
                    Name = alignment.Name,
                    Description = alignment.Description,
                    Code = alignment.Code
                });
            }

            return result;
        }
    }
}
