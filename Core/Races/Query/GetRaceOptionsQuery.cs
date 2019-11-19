using AutoMapper;
using Core.Races.DTO;
using DataModel;
using Infrastructure.CQRS;
using Microsoft.EntityFrameworkCore;
using System.Collections.Generic;
using System.Linq;

namespace Core.Races.Query
{
    public class GetRaceOptionsQuery : IQuery<IEnumerable<RaceDTO>>
    {
        public int PartyId { get; set; }
    }

    public class GetRaceOptionsQueryHandler : IQueryHandler<GetRaceOptionsQuery, IEnumerable<RaceDTO>>
    {
        private NoticeBoardContext _context;
        private IMapper _mapper;

        public GetRaceOptionsQueryHandler(NoticeBoardContext context, IMapper mapper)
        {
            _context = context;
            _mapper = mapper;
        }

        IEnumerable<RaceDTO> IQueryHandler<GetRaceOptionsQuery, IEnumerable<RaceDTO>>.Handle(GetRaceOptionsQuery query)
        {
            var dto = new List<RaceDTO>();

            var partySources = _context.PartySource.Where(n => n.PartyId == query.PartyId).Select(n => n.SourceId);

            if (partySources.Count() > 0)
            {
                var races = _context.Race.Where(n => partySources.Contains(n.SourceId))
                                         .Include(n => n.RaceFeature)
                                         .OrderBy(n => n.Name)
                                         .ToList();

                foreach (var race in races)
                {
                    dto.Add(_mapper.Map<Race, RaceDTO>(race));
                }
            }

            return dto;
        }
    }
}
