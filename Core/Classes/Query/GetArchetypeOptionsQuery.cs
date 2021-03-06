﻿using AutoMapper;
using Core.Classes.DTO;
using DataModel;
using Infrastructure.CQRS;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Core.Classes.Query
{
    public class GetArchetypeOptionsQuery: IQuery<IEnumerable<ArchetypeDTO>>
    {
        public int CampaignId { get; set; }

        public int PcId { get; set; }
    }

    public class GetArchetypeOptionsQueryHandler : IQueryHandler<GetArchetypeOptionsQuery, IEnumerable<ArchetypeDTO>>
    {
        private NoticeBoardContext _context;

        private IMapper _mapper;

        public GetArchetypeOptionsQueryHandler(NoticeBoardContext context, IMapper mapper)
        {
            _context = context;
            _mapper = mapper;
        }

        public IEnumerable<ArchetypeDTO> Handle(GetArchetypeOptionsQuery query)
        {
            var dto = new List<ArchetypeDTO>();

            var campaignSources = _context.CampaignSource.Where(n => n.CampaignId == query.CampaignId).Select(n => n.SourceId);

            var pc = _context.PlayerCharacter.Find(query.PcId);

            if (campaignSources.Count() > 0 && pc != null)
            {
                var archetypes = _context.Archetype.Where(n => n.ClassId == pc.ClassId &&
                                                               n.Class.ArchetypeStartingLevel == pc.Level &&
                                                               campaignSources.Contains(n.SourceId))
                                                   .OrderBy(n => n.Name);

                foreach (var archetype in archetypes)
                {
                    dto.Add(_mapper.Map<Archetype, ArchetypeDTO>(archetype));
                }
            }

            return dto;
        }
    }
}
