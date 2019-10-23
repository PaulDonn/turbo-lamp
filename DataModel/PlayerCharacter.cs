﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace DataModel
{
    public partial class PlayerCharacter
    {
        public PlayerCharacter()
        {
            PcAbilityScore = new HashSet<PcAbilityScore>();
            PcFeature = new HashSet<PcFeature>();
            PcLanguage = new HashSet<PcLanguage>();
            PcSavingThrow = new HashSet<PcSavingThrow>();
            PcSkill = new HashSet<PcSkill>();
            PcSpell = new HashSet<PcSpell>();
        }

        [Key]
        public int Id { get; set; }
        [Required]
        [StringLength(50)]
        public string CharacterName { get; set; }
        public int ClassId { get; set; }
        public int? ArchetypeId { get; set; }
        public int LevelId { get; set; }
        public int? BackgroundId { get; set; }
        public int PlayerId { get; set; }
        public int RaceId { get; set; }
        public int? SubRaceId { get; set; }
        public int AlignmentId { get; set; }
        public int ExperiencePoints { get; set; }
        public int? PartyId { get; set; }
        public int HitPointMaximum { get; set; }
        public int HitPointCurrent { get; set; }
        public int Level1Slots { get; set; }
        public int Level2Slots { get; set; }
        public int Level3Slots { get; set; }
        public int Level4Slots { get; set; }
        public int Level5Slots { get; set; }
        public int Level6Slots { get; set; }
        public int Level7Slots { get; set; }
        public int Level8Slots { get; set; }
        public int Level9Slots { get; set; }

        [ForeignKey(nameof(AlignmentId))]
        [InverseProperty("PlayerCharacter")]
        public virtual Alignment Alignment { get; set; }
        [ForeignKey(nameof(ArchetypeId))]
        [InverseProperty("PlayerCharacter")]
        public virtual Archetype Archetype { get; set; }
        [ForeignKey(nameof(BackgroundId))]
        [InverseProperty("PlayerCharacter")]
        public virtual Background Background { get; set; }
        [ForeignKey(nameof(ClassId))]
        [InverseProperty("PlayerCharacter")]
        public virtual Class Class { get; set; }
        [ForeignKey(nameof(PartyId))]
        [InverseProperty("PlayerCharacter")]
        public virtual Party Party { get; set; }
        [ForeignKey(nameof(PlayerId))]
        [InverseProperty("PlayerCharacter")]
        public virtual Player Player { get; set; }
        [ForeignKey(nameof(RaceId))]
        [InverseProperty("PlayerCharacter")]
        public virtual Race Race { get; set; }
        [ForeignKey(nameof(SubRaceId))]
        [InverseProperty("PlayerCharacter")]
        public virtual SubRace SubRace { get; set; }
        [InverseProperty("Pc")]
        public virtual ICollection<PcAbilityScore> PcAbilityScore { get; set; }
        [InverseProperty("Pc")]
        public virtual ICollection<PcFeature> PcFeature { get; set; }
        [InverseProperty("Pc")]
        public virtual ICollection<PcLanguage> PcLanguage { get; set; }
        [InverseProperty("Pc")]
        public virtual ICollection<PcSavingThrow> PcSavingThrow { get; set; }
        [InverseProperty("Pc")]
        public virtual ICollection<PcSkill> PcSkill { get; set; }
        [InverseProperty("Pc")]
        public virtual ICollection<PcSpell> PcSpell { get; set; }
    }
}
