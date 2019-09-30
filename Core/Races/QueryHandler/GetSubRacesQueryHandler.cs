using Core.Races.DTO;
using Core.Races.Query;
using DataModel;
using Infrastructure.CQRS;
using System.Collections.Generic;
using System.Linq;

namespace Core.Races.QueryHandler
{
    public class GetSubRacesQueryHandler : IQueryHandler<GetSubRacesQuery, IEnumerable<SubRaceDTO>>
    {
        private NoticeBoardContext context;

        public GetSubRacesQueryHandler(NoticeBoardContext _context)
        {
            context = _context;
        }
        
        IEnumerable<SubRaceDTO> IQueryHandler<GetSubRacesQuery, IEnumerable<SubRaceDTO>>.Handle(GetSubRacesQuery query)
        {
            var result = new List<SubRaceDTO>();

            var subRaces = context.SubRace.Where(x => x.RaceId == query.RaceId).ToList();

            foreach(var subRace in subRaces)
            {
                result.Add(new SubRaceDTO
                {
                    Id = subRace.Id,
                    Name = subRace.Name,
                    Description = subRace.Description,
                    RaceId = subRace.RaceId
                });
            }

            return result;
        }
    }
}
