using AutoMapper;
using Core.PlayerCharacters.DTO;
using DataModel;
using Infrastructure.CQRS;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Core.PlayerCharacters.Query
{
    public class GetPCQuery : IQuery<PlayerCharacterDTO>
    {
        public int PcId { get; set; }
    }

    public class GetPCQueryHandler : IQueryHandler<GetPCQuery, PlayerCharacterDTO>
    {
        private NoticeBoardContext _context;
        private IMapper _mapper;

        public GetPCQueryHandler(NoticeBoardContext context, IMapper mapper)
        {
            _context = context;
            _mapper = mapper;
        }

        public PlayerCharacterDTO Handle(GetPCQuery query)
        {
            var dto = new PlayerCharacterDTO();

            var pc = _context.PlayerCharacter.Include(n => n.PcAbilityScore)
                                                .ThenInclude(n => n.Ability)
                                             .Include(n => n.PcSavingThrow)
                                             .Include(n => n.Class.Archetype)
                                             .Include(n => n.Class.SpellcastingAbility)
                                             .Include(n => n.Alignment)
                                             .Include(n => n.PcTrait)
                                                .ThenInclude(n => n.TraitType)
                                             .Include(n => n.Background)
                                             .Include(n => n.Race)
                                             .Include(n => n.SubRace)
                                             .Include(n => n.Player)
                                             .Include(n => n.Party)
                                             .Include(n => n.PcSkill)
                                             .Include(n => n.PcSpell)
                                                .ThenInclude(n => n.Spell.SpellSchool)

                                             .SingleOrDefault(n => n.Id == query.PcId);

            pc.PcEquipment = _context.PcEquipment.Where(n => n.PcId == pc.Id)
                                                 .Include(n => n.Equipment.WeaponType)
                                                 .Include(n => n.Equipment.ArmorType)
                                                 .Include(n => n.Equipment.EquipmentType).ToList();

            pc.PcTreasure = _context.PcTreasure.Where(n => n.PcId == pc.Id)
                                               .Include(n => n.Treasure).ToList();

            if (pc != null)
            {
                dto = _mapper.Map<PlayerCharacter, PlayerCharacterDTO>(pc);
            }

            return dto;
        }
    }
}
