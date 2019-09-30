using Core.Races.DTO;
using Infrastructure.CQRS;

namespace Core.Races.Query
{
    public class GetRaceQuery : IQuery<RaceDTO>
    {
        public int Id { get; set; }
    }
}
