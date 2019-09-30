using Core.Races.DTO;
using Infrastructure.CQRS;
using System.Collections.Generic;

namespace Core.Races.Query
{
    public class GetRacesQuery : IQuery<IEnumerable<RaceDTO>>
    {
    }
}
