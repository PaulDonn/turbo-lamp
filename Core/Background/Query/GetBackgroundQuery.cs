using Core.Background.DTO;
using Infrastructure.CQRS;

namespace Core.Background.Query
{
    public class GetBackgroundQuery : IQuery<BackgroundDTO>
    {
        public int Id { get; set; }
    }
}
