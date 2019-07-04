using Core.Race.DTO;
using Core.Race.Query;
using DataModel;
using Infrastructure.CQRS;
using System.Linq;

namespace Core.Race.QueryHandler
{
    public class GetSubRaceQueryHandler : IQueryHandler<GetSubRaceQuery, SubRaceDTO>
    {
        private NoticeBoardContext context;

        public GetSubRaceQueryHandler(NoticeBoardContext _context)
        {
            context = _context;
        }

        SubRaceDTO IQueryHandler<GetSubRaceQuery, SubRaceDTO>.Handle(GetSubRaceQuery query)
        {
            var dto = new SubRaceDTO();

            var subRace = context.SubRace.Single(n => n.Id == query.Id);

            dto.Id = subRace.Id;
            dto.Name = subRace.Name;
            dto.Description = subRace.Description;
            dto.RaceId = subRace.RaceId;
            
            return dto;
        }
    }
}
    