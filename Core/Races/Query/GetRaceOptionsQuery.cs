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
        public int CampaignId { get; set; }
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

            var campaignSources = _context.CampaignSource.Where(n => n.CampaignId == query.CampaignId).Select(n => n.SourceId);

            if (campaignSources.Count() > 0)
            {
                var races = _context.Race.Where(n => campaignSources.Contains(n.SourceId))
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
