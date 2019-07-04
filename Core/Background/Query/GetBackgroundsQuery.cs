using Core.Background.DTO;
using Infrastructure.CQRS;
using System.Collections.Generic;

namespace Core.Background.Query
{
    public class GetBackgroundsQuery : IQuery<IEnumerable<BackgroundDTO>>
    {
    }
}
