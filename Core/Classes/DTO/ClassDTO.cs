using Core.Abilities.DTO;
using Core.Features.DTO;
using System.Collections.Generic;

namespace Core.Classes.DTO
{
    public class ClassDTO
    {
        public ClassDTO()
        {
            Features = new List<FeatureDTO>();
        }

        public int Id { get; set; }

        public string Name { get; set; }

        public string Description { get; set; }

        public string HitDie { get; set; }

        public string ArchetypeTypeName { get; set; }

        public string ArchetypeTypeDescription { get; set; }

        public int ArchetypeStartingLevel { get; set; }

        public int NumberOfStartingSkills { get; set; }

        public AbilityDTO SpellcastingAbility { get; set; }

        public List<FeatureDTO> Features { get; set; }

        public string ImagePath { get; set; }
    }
}
