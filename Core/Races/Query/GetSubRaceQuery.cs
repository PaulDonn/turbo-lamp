using Core.Races.DTO;
using DataModel;
using Infrastructure.CQRS;
using System.Linq;

namespace Core.Races.Query
{
    public class GetSubRaceQuery : IQuery<SubRaceDTO>
    {
        public int Id { get; set; }
    }

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

            if (query.Id > 0)
            {
                var subRace = context.SubRace.Single(n => n.Id == query.Id);

                dto.Id = subRace.Id;
                dto.Name = subRace.Name;
                dto.Description = subRace.Description;
                dto.RaceId = subRace.RaceId;
            }

            return dto;
        }
    }
}
