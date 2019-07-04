using Core.Race.DTO;
using Infrastructure.CQRS;
using System.Collections.Generic;

namespace Core.Race.Query
{
    public class GetRacesQuery : IQuery<IEnumerable<RaceDTO>>
    {
    }
}
