using NoticeBoard.Models.Abilities;
using System.ComponentModel.DataAnnotations;

namespace NoticeBoard.Models.Classes
{
    public class ClassModel
    {
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
    }
}
