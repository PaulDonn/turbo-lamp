using Core.Races.DTO;
using Infrastructure.CQRS;
using System.Collections.Generic;

namespace Core.Races.Query
{
    public class GetSubRacesQuery : IQuery<IEnumerable<SubRaceDTO>>
    {
        public int RaceId { get; set; }
    }
}
