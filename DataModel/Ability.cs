﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace DataModel
{
    public partial class Ability
    {
        public Ability()
        {
            Class = new HashSet<Class>();
            Equipment = new HashSet<Equipment>();
            PcAbilityScore = new HashSet<PcAbilityScore>();
            PcSavingThrow = new HashSet<PcSavingThrow>();
            Skill = new HashSet<Skill>();
            Spell = new HashSet<Spell>();
        }

        [Key]
        public int Id { get; set; }
        [Required]
        [StringLength(50)]
        public string Name { get; set; }
        [Required]
        [StringLength(3)]
        public string Code { get; set; }

        [InverseProperty("SpellcastingAbility")]
        public virtual ICollection<Class> Class { get; set; }
        [InverseProperty("PreRequisiteAbility")]
        public virtual ICollection<Equipment> Equipment { get; set; }
        [InverseProperty("Ability")]
        public virtual ICollection<PcAbilityScore> PcAbilityScore { get; set; }
        [InverseProperty("Ability")]
        public virtual ICollection<PcSavingThrow> PcSavingThrow { get; set; }
        [InverseProperty("Ability")]
        public virtual ICollection<Skill> Skill { get; set; }
        [InverseProperty("SavingThrowAbility")]
        public virtual ICollection<Spell> Spell { get; set; }
    }
}
