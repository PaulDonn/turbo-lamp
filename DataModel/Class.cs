using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace DataModel
{
    public partial class Class
    {
        public Class()
        {
            Archetype = new HashSet<Archetype>();
            ClassFeature = new HashSet<ClassFeature>();
            ClassSkill = new HashSet<ClassSkill>();
            PlayerCharacter = new HashSet<PlayerCharacter>();
        }

        [Key]
        public int Id { get; set; }
        [Required]
        [StringLength(50)]
        public string Name { get; set; }
        [Required]
        public string Description { get; set; }
        public int HitDie { get; set; }
        [Required]
        [StringLength(50)]
        public string ArchetypeTypeName { get; set; }
        [Required]
        public string ArchetypeTypeDescription { get; set; }
        public int ArchetypeStartingLevel { get; set; }
        public int NumberOfStartingSkills { get; set; }
        public int SpellcastingAbilityId { get; set; }

        [ForeignKey(nameof(SpellcastingAbilityId))]
        [InverseProperty(nameof(Ability.Class))]
        public virtual Ability SpellcastingAbility { get; set; }
        [InverseProperty("Class")]
        public virtual ICollection<Archetype> Archetype { get; set; }
        [InverseProperty("Class")]
        public virtual ICollection<ClassFeature> ClassFeature { get; set; }
        [InverseProperty("Class")]
        public virtual ICollection<ClassSkill> ClassSkill { get; set; }
        [InverseProperty("Class")]
        public virtual ICollection<PlayerCharacter> PlayerCharacter { get; set; }
    }
}
