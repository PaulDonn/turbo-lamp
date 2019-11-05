using AutoMapper;
using Core.Races.DTO;
using DataModel;
using Infrastructure.CQRS;
using System.Collections.Generic;
using System.Linq;

namespace Core.Races.Query
{
    public class GetRacesQuery : IQuery<IEnumerable<RaceDTO>>
    {
    }

    public class GetRacesQueryHandler : IQueryHandler<GetRacesQuery, IEnumerable<RaceDTO>>
    {
        private NoticeBoardContext _context;
        private IMapper _mapper;

        public GetRacesQueryHandler(NoticeBoardContext context, IMapper mapper)
        {
            _context = context;
            _mapper = mapper;
        }

        IEnumerable<RaceDTO> IQueryHandler<GetRacesQuery, IEnumerable<RaceDTO>>.Handle(GetRacesQuery query)
        {
            var result = new List<RaceDTO>();

            var races = _context.Race.ToList();

            foreach (var race in races)
            {
                result.Add(_mapper.Map<Race, RaceDTO>(race));
            }

            return result;
        }
    }
}
