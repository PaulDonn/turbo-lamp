using AutoMapper;
using Core.Spells.DTO;
using DataModel;
using Infrastructure.CQRS;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Core.Spells.Query
{
    public class GetSpellListQuery: IQuery<IEnumerable<SpellDTO>>
    {
        public string SpellList { get; set; }

        public int? SpellLevel { get; set; }
    }

    public class GetSpellListQueryHandler : IQueryHandler<GetSpellListQuery, IEnumerable<SpellDTO>>
    {
        private NoticeBoardContext _context;
        private IMapper _mapper;

        public GetSpellListQueryHandler(NoticeBoardContext context, IMapper mapper)
        {
            _context = context;
            _mapper = mapper;
        }

        public IEnumerable<SpellDTO> Handle(GetSpellListQuery query)
        {
            var dto = new List<SpellDTO>();

            var spells = _context.Spell.Where(n => 
                                        (string.IsNullOrWhiteSpace(query.SpellList) || n.SpellListSpell.Any(m => m.SpellList.Name == query.SpellList))
                                        && (!query.SpellLevel.HasValue || n.SpellLevel == query.SpellLevel))
                                       .ToList();

            if(spells.Count() > 0)
            {
                dto = _mapper.Map<List<Spell>, List<SpellDTO>>(spells);
            }

            return dto;
        }
    }
}
