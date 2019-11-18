﻿using AutoMapper;
using Core.Races.DTO;
using DataModel;
using Infrastructure.CQRS;
using Microsoft.EntityFrameworkCore;
using System.Collections.Generic;
using System.Linq;

namespace Core.Races.Query
{
    public class GetSubRaceOptionsQuery : IQuery<IEnumerable<SubRaceDTO>>
    {
        public int PartyId { get; set; }
        public int RaceId { get; set; }
    }

    public class GetSubRaceOptionsQueryHandler : IQueryHandler<GetSubRaceOptionsQuery, IEnumerable<SubRaceDTO>>
    {
        private NoticeBoardContext _context;
        private IMapper _mapper;

        public GetSubRaceOptionsQueryHandler(NoticeBoardContext context, IMapper mappper)
        {
            _context = context;
            _mapper = mappper;
        }

        IEnumerable<SubRaceDTO> IQueryHandler<GetSubRaceOptionsQuery, IEnumerable<SubRaceDTO>>.Handle(GetSubRaceOptionsQuery query)
        {
            var dto = new List<SubRaceDTO>();

            var party = _context.Party.Where(n => n.Id == query.PartyId)
                                      .Include(n => n.PartySource)
                                      .SingleOrDefault();

            if (party != null)
            {
                var subRaces = _context.SubRace.Where(n => n.RaceId == query.RaceId &&
                                                           party.PartySource.Any(m => m.SourceId == n.SourceId))
                                                   .Include(n => n.RaceFeature);

                foreach (var subRace in subRaces)
                {
                    dto.Add(_mapper.Map<SubRace, SubRaceDTO>(subRace));
                }
            }

            return dto;
        }
    }
}