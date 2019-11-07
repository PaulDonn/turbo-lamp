using Core.Backgrounds.DTO;
using DataModel;
using Infrastructure.CQRS;
using System.Collections.Generic;
using System.Linq;

namespace Core.Backgrounds.Query
{
    public class GetBackgroundsQuery : IQuery<IEnumerable<BackgroundDTO>>
    {
    }

    public class GetBackgroundsQueryHandler : IQueryHandler<GetBackgroundsQuery, IEnumerable<BackgroundDTO>>
    {
        private NoticeBoardContext context;

        public GetBackgroundsQueryHandler(NoticeBoardContext _context)
        {
            context = _context;
        }

        IEnumerable<BackgroundDTO> IQueryHandler<GetBackgroundsQuery, IEnumerable<BackgroundDTO>>.Handle(GetBackgroundsQuery query)
        {
            var result = new List<BackgroundDTO>();

            var backgrounds = context.Background.ToList();

            foreach (var background in backgrounds)
            {
                result.Add(new BackgroundDTO
                {
                    Id = background.Id,
                    Name = background.Name,
                    Description = background.Description
                });
            }

            return result;
        }
    }
}
