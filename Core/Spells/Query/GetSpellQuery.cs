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
    public class GetSpellQuery: IQuery<SpellDTO>
    {
        public int Id { get; set; }
    }

    public class GetSpellQueryHandler : IQueryHandler<GetSpellQuery, SpellDTO>
    {
        private NoticeBoardContext _context;
        private IMapper _mapper;

        public GetSpellQueryHandler(NoticeBoardContext context, IMapper mapper)
        {
            _context = context;
            _mapper = mapper;
        }

        public SpellDTO Handle(GetSpellQuery query)
        {
            var dto = new SpellDTO();

            var spell = _context.Spell.Where(n => n.Id == query.Id)
                                      .Include(n => n.SpellSchool)
                                      .FirstOrDefault();

            if(spell != null)
            {
                dto = _mapper.Map<Spell, SpellDTO>(spell);
            }

            return dto;
        }
    }
}
