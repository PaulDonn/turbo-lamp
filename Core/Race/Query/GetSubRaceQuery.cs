using Core.Race.DTO;
using Infrastructure.CQRS;

namespace Core.Race.Query
{
    public class GetSubRaceQuery : IQuery<SubRaceDTO>
    {
        public int Id { get; set; }
    }
}
