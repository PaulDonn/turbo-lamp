using AutoMapper;
using Core.Spells.DTO;
using DataModel;
using Infrastructure.CQRS;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Core.Spells.Query
{
    public class GetSpellOptionsQuery : IQuery<IEnumerable<SpellDTO>>
    {
        public int PartyId { get; set; }

        public int PcId { get; set; }

    }

    public class GetSpellOptionsQueryHandler : IQueryHandler<GetSpellOptionsQuery, IEnumerable<SpellDTO>>
    {
        private NoticeBoardContext _context;

        private IMapper _mapper;

        public GetSpellOptionsQueryHandler(NoticeBoardContext context, IMapper mapper)
        {
            _context = context;
            _mapper = mapper;
        }

        public IEnumerable<SpellDTO> Handle(GetSpellOptionsQuery query)
        {
            var dto = new List<SpellDTO>();

            var partySources = _context.PartySource.Where(n => n.PartyId == query.PartyId).Select(n => n.SourceId);

            var pc = _context.PlayerCharacter.Where(n => n.Id == query.PcId)
                                             .Include(n => n.Race)
                                             .Include(n => n.SubRace)
                                             .Include(n => n.Class)
                                             .Include(n => n.Archetype)
                                             .SingleOrDefault();

            if (partySources.Count() > 0 && pc != null)
            {
                //var spells = _context.Spell.Where(n => n.)

                //foreach (var archetype in archetypes)
                //{
                //    dto.Add(_mapper.Map<Spell, SpellDTO>(archetype));
                //}
            }

            return dto;
        }
    }
}
