using NoticeBoard.Models.Abilities;
using NoticeBoard.Models.Features;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace NoticeBoard.Models.Classes
{
    public class ClassModel
    {
        public ClassModel()
        {
            Features = new List<FeatureModel>();
        }

        public int Id { get; set; }

        [Display(Name = "Class")]
        public string Name { get; set; }

        public string Description { get; set; }

        [Display(Name = "Hit Die")]
        public string HitDie { get; set; }

        public string ArchetypeTypeName { get; set; }

        public string ArchetypeTypeDescription { get; set; }

        public int ArchetypeStartingLevel { get; set; }

        public int NumberOfStartingSkills { get; set; }

        public AbilityModel SpellcastingAbility { get; set; }

        public List<FeatureModel> Features { get; set; }

        public string ImagePath { get; set; }
    }
}
