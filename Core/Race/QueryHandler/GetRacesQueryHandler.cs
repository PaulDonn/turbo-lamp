using Core.Race.DTO;
using Core.Race.Query;
using DataModel;
using Infrastructure.CQRS;
using System.Collections.Generic;
using System.Linq;

namespace Core.Race.QueryHandler
{
    public class GetRacesQueryHandler : IQueryHandler<GetRacesQuery, IEnumerable<RaceDTO>>
    {
        private NoticeBoardContext context;

        public GetRacesQueryHandler(NoticeBoardContext _context)
        {
            context = _context;
        }
        
        IEnumerable<RaceDTO> IQueryHandler<GetRacesQuery, IEnumerable<RaceDTO>>.Handle(GetRacesQuery query)
        {
            var result = new List<RaceDTO>();

            var races = context.Race.ToList();

            foreach(var race in races)
            {
                result.Add(new RaceDTO
                {
                    Id = race.Id,
                    Name = race.Name,
                    Description = race.Description
                });
            }

            return result;
        }
    }
}
