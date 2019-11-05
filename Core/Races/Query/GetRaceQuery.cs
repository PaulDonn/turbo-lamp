using AutoMapper;
using Core.Races.DTO;
using DataModel;
using Infrastructure.CQRS;
using Microsoft.EntityFrameworkCore;
using System.Linq;

namespace Core.Races.Query
{
    public class GetRaceQuery : IQuery<RaceDTO>
    {
        public int Id { get; set; }
    }

    public class GetRaceQueryHandler : IQueryHandler<GetRaceQuery, RaceDTO>
    {
        private NoticeBoardContext _context;
        private IMapper _mapper;

        public GetRaceQueryHandler(NoticeBoardContext context, IMapper mapper)
        {
            _context = context;
            _mapper = mapper;
        }

        RaceDTO IQueryHandler<GetRaceQuery, RaceDTO>.Handle(GetRaceQuery query)
        {
            var dto = new RaceDTO();

            if (query.Id > 0)
            {
                var race = _context.Race.Include(n => n.RaceLanguage)
                                        .Include(n => n.SubRace)
                                        .SingleOrDefault(n => n.Id == query.Id);

                if (race != null)
                {
                    dto = _mapper.Map<Race, RaceDTO>(race);
                }
            }

            return dto;
        }
    }
}
