using Core.Background.DTO;
using Core.Background.Query;
using DataModel;
using Infrastructure.CQRS;
using System.Linq;

namespace Core.Background.QueryHandler
{
    public class GetBackgroundQueryHandler : IQueryHandler<GetBackgroundQuery, BackgroundDTO>
    {
        private NoticeBoardContext context;

        public GetBackgroundQueryHandler(NoticeBoardContext _context)
        {
            context = _context;
        }

        BackgroundDTO IQueryHandler<GetBackgroundQuery, BackgroundDTO>.Handle(GetBackgroundQuery query)
        {
            var dto = new BackgroundDTO();

            var background = context.Class.Single(n => n.Id == query.Id);

            dto.Id = background.Id;
            dto.Name = background.Name;
            dto.Description = background.Description;
            
            return dto;
        }
    }
}
    