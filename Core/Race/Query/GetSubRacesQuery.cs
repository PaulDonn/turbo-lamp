using Core.Race.DTO;
using Infrastructure.CQRS;
using System.Collections.Generic;

namespace Core.Race.Query
{
    public class GetSubRacesQuery : IQuery<IEnumerable<SubRaceDTO>>
    {
        public int RaceId { get; set; }
    }
}
