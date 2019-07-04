using Core.Race.DTO;
using Infrastructure.CQRS;

namespace Core.Race.Query
{
    public class GetRaceQuery : IQuery<RaceDTO>
    {
        public int Id { get; set; }
    }
}
