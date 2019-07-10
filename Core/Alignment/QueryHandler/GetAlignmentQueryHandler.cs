using Core.Alignment.DTO;
using Core.Alignment.Query;
using DataModel;
using Infrastructure.CQRS;
using System.Linq;

namespace Core.Alignment.QueryHandler
{
    public class GetAlignmentQueryHandler : IQueryHandler<GetAlignmentQuery, AlignmentDTO>
    {
        private NoticeBoardContext context;

        public GetAlignmentQueryHandler(NoticeBoardContext _context)
        {
            context = _context;
        }

        AlignmentDTO IQueryHandler<GetAlignmentQuery, AlignmentDTO>.Handle(GetAlignmentQuery query)
        {
            var dto = new AlignmentDTO();
            if (query.Id > 0)
            {
                var alignment = context.Alignment.Single(n => n.Id == query.Id);

                dto.Id = alignment.Id;
                dto.Name = alignment.Name;
                dto.Description = alignment.Description;
                dto.Code = alignment.Code;
            }

            return dto;
        }
    }
}
    