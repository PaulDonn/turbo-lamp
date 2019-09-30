using Core.Races.DTO;
using Infrastructure.CQRS;

namespace Core.Races.Query
{
    public class GetSubRaceQuery : IQuery<SubRaceDTO>
    {
        public int Id { get; set; }
    }
}
