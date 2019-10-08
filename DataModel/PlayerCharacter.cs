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
        }

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

        [ForeignKey("AlignmentId")]
        [InverseProperty("PlayerCharacter")]
        public Alignment Alignment { get; set; }
        [ForeignKey("ArchetypeId")]
        [InverseProperty("PlayerCharacter")]
        public Archetype Archetype { get; set; }
        [ForeignKey("BackgroundId")]
        [InverseProperty("PlayerCharacter")]
        public Background Background { get; set; }
        [ForeignKey("ClassId")]
        [InverseProperty("PlayerCharacter")]
        public Class Class { get; set; }
        [ForeignKey("PartyId")]
        [InverseProperty("PlayerCharacter")]
        public Party Party { get; set; }
        [ForeignKey("RaceId")]
        [InverseProperty("PlayerCharacter")]
        public Race Race { get; set; }
        [ForeignKey("SubRaceId")]
        [InverseProperty("PlayerCharacter")]
        public SubRace SubRace { get; set; }
        [InverseProperty("Pc")]
        public ICollection<PcAbilityScore> PcAbilityScore { get; set; }
        [InverseProperty("Pc")]
        public ICollection<PcFeature> PcFeature { get; set; }
        [InverseProperty("Pc")]
        public ICollection<PcLanguage> PcLanguage { get; set; }
        [InverseProperty("Pc")]
        public ICollection<PcSavingThrow> PcSavingThrow { get; set; }
        [InverseProperty("Pc")]
        public ICollection<PcSkill> PcSkill { get; set; }
    }
}
