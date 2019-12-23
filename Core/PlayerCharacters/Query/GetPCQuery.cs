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
    public class GetPlayerCharacterQuery : IQuery<PlayerCharacterDTO>
    {
        public int PcId { get; set; }
    }

    public class GetPlayerCharacterQueryHandler : IQueryHandler<GetPlayerCharacterQuery, PlayerCharacterDTO>
    {
        private NoticeBoardContext _context;
        private IMapper _mapper;

        public GetPlayerCharacterQueryHandler(NoticeBoardContext context, IMapper mapper)
        {
            _context = context;
            _mapper = mapper;
        }

        public PlayerCharacterDTO Handle(GetPlayerCharacterQuery query)
        {
            var dto = new PlayerCharacterDTO();

            var pc = _context.PlayerCharacter.AsNoTracking()
                                             .Include(n => n.PcSavingThrow)
                                             .Include(n => n.Class.Archetype)
                                             .Include(n => n.Class.SpellcastingAbility)
                                             .Include(n => n.Alignment)
                                             .Include(n => n.Background)
                                             .Include(n => n.Race)
                                             .Include(n => n.SubRace)
                                             .Include(n => n.Player)
                                             .Include(n => n.Party)
                                             .Include(n => n.PcSkill)
                                             .Include(n => n.PcSpellLevel)
                                             .SingleOrDefault(n => n.Id == query.PcId);

            pc.PcSpell = _context.PcSpell.AsNoTracking()
                                         .Where(n => n.PcId == pc.Id)
                                         .Include(n => n.Spell.SpellSchool)
                                         .ToList();

            pc.PcTrait = _context.PcTrait.AsNoTracking()
                                         .Include(n => n.TraitType)
                                         .Where(n => n.PcId == pc.Id)
                                         .ToList();

            pc.PcAbilityScore = _context.PcAbilityScore.AsNoTracking()
                                                       .Where(n => n.PcId == pc.Id)
                                                       .Include(n => n.Ability)
                                                       .ToList();

            pc.PcEquipment = _context.PcEquipment.AsNoTracking()
                                                 .Where(n => n.PcId == pc.Id)
                                                 .Include(n => n.Equipment.WeaponType)
                                                 .Include(n => n.Equipment.ArmorType)
                                                 .Include(n => n.Equipment.EquipmentType)
                                                 .ToList();

            pc.PcTreasure = _context.PcTreasure.AsNoTracking()
                                               .Where(n => n.PcId == pc.Id)
                                               .Include(n => n.Treasure)
                                               .ToList();

            pc.PcFeature = _context.PcFeature.AsNoTracking()
                                             .Where(n => n.PcId == pc.Id)
                                             .Include(n => n.Feature)
                                             .Include(n => n.RaceFeature.Feature)
                                             .Include(n => n.ClassFeature.Feature)
                                             .ToList();

            if (pc != null)
            {
                dto = _mapper.Map<PlayerCharacter, PlayerCharacterDTO>(pc);
            }

            return dto;
        }
    }
}
