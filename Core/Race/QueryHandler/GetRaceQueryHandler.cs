﻿using Core.Race.DTO;
using Core.Race.Query;
using DataModel;
using Infrastructure.CQRS;
using System.Linq;

namespace Core.Race.QueryHandler
{
    public class GetRaceQueryHandler : IQueryHandler<GetRaceQuery, RaceDTO>
    {
        private NoticeBoardContext context;

        public GetRaceQueryHandler(NoticeBoardContext _context)
        {
            context = _context;
        }

        RaceDTO IQueryHandler<GetRaceQuery, RaceDTO>.Handle(GetRaceQuery query)
        {
            var dto = new RaceDTO();

            if (query.Id > 0)
            {
                var race = context.Race.Single(n => n.Id == query.Id);

                dto.Id = race.Id;
                dto.Name = race.Name;
                dto.Description = race.Description;
                dto.HasSubRace = context.SubRace.Any(n => n.RaceId == race.Id);
            }

            return dto;
        }
    }
}
    