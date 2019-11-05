using Core.Background.DTO;
using DataModel;
using Infrastructure.CQRS;
using System.Linq;

namespace Core.Background.Query
{
    public class GetBackgroundQuery : IQuery<BackgroundDTO>
    {
        public int Id { get; set; }
    }

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
            if (query.Id > 0)
            {
                var background = context.Background.Single(n => n.Id == query.Id);

                dto.Id = background.Id;
                dto.Name = background.Name;
                dto.Description = background.Description;
            }

            return dto;
        }
    }
}
