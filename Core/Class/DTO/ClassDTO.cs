﻿using Core.Ability.DTO;

namespace Core.Class.DTO
{
    public class ClassDTO
    {
        public int Id { get; set; }

        public string Name { get; set; }

        public string Description { get; set; }

        public string HitDie { get; set; }

        public string ArchetypeTypeName { get; set; }

        public string ArchetypeTypeDescription { get; set; }

        public int ArchetypeStartingLevel { get; set; }

        public int NumberOfStartingSkills { get; set; }

        public AbilityDTO SpellcastingAbility { get; set; }
    }
}
