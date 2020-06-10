using System;
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
            PcEquipment = new HashSet<PcEquipment>();
            PcFeature = new HashSet<PcFeature>();
            PcLanguage = new HashSet<PcLanguage>();
            PcSavingThrow = new HashSet<PcSavingThrow>();
            PcSkill = new HashSet<PcSkill>();
            PcSpell = new HashSet<PcSpell>();
            PcSpellLevel = new HashSet<PcSpellLevel>();
            PcTrait = new HashSet<PcTrait>();
            PcTreasure = new HashSet<PcTreasure>();
        }

        [Key]
        public int Id { get; set; }
        [StringLength(50)]
        public string CharacterName { get; set; }
        public int? ClassId { get; set; }
        public int? ArchetypeId { get; set; }
        public int Level { get; set; }
        public int ProficiencyBonus { get; set; }
        public int? BackgroundId { get; set; }
        public int PlayerId { get; set; }
        public int? RaceId { get; set; }
        public int? SubRaceId { get; set; }
        public int? AlignmentId { get; set; }
        public int ExperiencePoints { get; set; }
        public int? CampaignId { get; set; }
        public int HitPointMaximum { get; set; }
        public int HitPointCurrent { get; set; }
        public int HitDiceMaximum { get; set; }
        public int HitDiceCurrent { get; set; }
        [StringLength(50)]
        public string Age { get; set; }
        [StringLength(50)]
        public string Height { get; set; }
        [StringLength(50)]
        public string Weight { get; set; }
        [StringLength(50)]
        public string Eyes { get; set; }
        [StringLength(50)]
        public string Skin { get; set; }
        [StringLength(50)]
        public string Hair { get; set; }
        public string Appearance { get; set; }
        public string Backstory { get; set; }
        public string AlliesAndOrganisations { get; set; }
        public int Copper { get; set; }
        public int Silver { get; set; }
        public int Electrum { get; set; }
        public int Gold { get; set; }
        public int Platinum { get; set; }

        [ForeignKey(nameof(AlignmentId))]
        [InverseProperty("PlayerCharacter")]
        public virtual Alignment Alignment { get; set; }
        [ForeignKey(nameof(ArchetypeId))]
        [InverseProperty("PlayerCharacter")]
        public virtual Archetype Archetype { get; set; }
        [ForeignKey(nameof(BackgroundId))]
        [InverseProperty("PlayerCharacter")]
        public virtual Background Background { get; set; }
        [ForeignKey(nameof(CampaignId))]
        [InverseProperty("PlayerCharacter")]
        public virtual Campaign Campaign { get; set; }
        [ForeignKey(nameof(ClassId))]
        [InverseProperty("PlayerCharacter")]
        public virtual Class Class { get; set; }
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
        public virtual ICollection<PcEquipment> PcEquipment { get; set; }
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
        [InverseProperty("Pc")]
        public virtual ICollection<PcSpellLevel> PcSpellLevel { get; set; }
        [InverseProperty("Pc")]
        public virtual ICollection<PcTrait> PcTrait { get; set; }
        [InverseProperty("Pc")]
        public virtual ICollection<PcTreasure> PcTreasure { get; set; }
    }
}
