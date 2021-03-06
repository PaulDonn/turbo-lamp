﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace DataModel
{
    public partial class Spell
    {
        public Spell()
        {
            PcSpell = new HashSet<PcSpell>();
            SpellListSpell = new HashSet<SpellListSpell>();
        }

        [Key]
        public int Id { get; set; }
        [Required]
        [StringLength(150)]
        public string Name { get; set; }
        public int SpellSchoolId { get; set; }
        [Required]
        [StringLength(150)]
        public string CastingTime { get; set; }
        [Required]
        [StringLength(150)]
        public string Range { get; set; }
        [Required]
        [StringLength(150)]
        public string Duration { get; set; }
        public bool RequiresConcentration { get; set; }
        public int SpellLevel { get; set; }
        public bool RequiresVerbal { get; set; }
        public bool RequiresSomatic { get; set; }
        public bool RequiresMaterial { get; set; }
        [StringLength(150)]
        public string MaterialDescription { get; set; }
        public bool IsRitual { get; set; }
        public string Description { get; set; }
        public string HigherLevelDescription { get; set; }
        [StringLength(150)]
        public string ImagePath { get; set; }
        public int SourceId { get; set; }
        public bool IsSpellAttack { get; set; }
        public int? SavingThrowAbilityId { get; set; }
        public int? DamageTypeId { get; set; }

        [ForeignKey(nameof(DamageTypeId))]
        [InverseProperty("Spell")]
        public virtual DamageType DamageType { get; set; }
        [ForeignKey(nameof(SavingThrowAbilityId))]
        [InverseProperty(nameof(Ability.Spell))]
        public virtual Ability SavingThrowAbility { get; set; }
        [ForeignKey(nameof(SourceId))]
        [InverseProperty("Spell")]
        public virtual Source Source { get; set; }
        [ForeignKey(nameof(SpellSchoolId))]
        [InverseProperty("Spell")]
        public virtual SpellSchool SpellSchool { get; set; }
        [InverseProperty("Spell")]
        public virtual ICollection<PcSpell> PcSpell { get; set; }
        [InverseProperty("Spell")]
        public virtual ICollection<SpellListSpell> SpellListSpell { get; set; }
    }
}
