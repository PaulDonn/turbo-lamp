using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace DataModel
{
    public partial class Equipment
    {
        public Equipment()
        {
            PcEquipment = new HashSet<PcEquipment>();
        }

        [Key]
        public int Id { get; set; }
        [Required]
        [StringLength(150)]
        public string Name { get; set; }
        public int EquipmentTypeId { get; set; }
        public string Description { get; set; }
        public bool IsCursed { get; set; }
        public string CurseDescription { get; set; }
        public int Weight { get; set; }
        public int Value { get; set; }
        public int? PreRequisiteAbilityId { get; set; }
        public int? PreRequisiteAbilityScore { get; set; }
        public int? WeaponTypeId { get; set; }
        public int? ArmorTypeId { get; set; }
        public int Bonus { get; set; }
        public bool IsMagical { get; set; }

        [ForeignKey(nameof(ArmorTypeId))]
        [InverseProperty("Equipment")]
        public virtual ArmorType ArmorType { get; set; }
        [ForeignKey(nameof(EquipmentTypeId))]
        [InverseProperty("Equipment")]
        public virtual EquipmentType EquipmentType { get; set; }
        [ForeignKey(nameof(PreRequisiteAbilityId))]
        [InverseProperty(nameof(Ability.Equipment))]
        public virtual Ability PreRequisiteAbility { get; set; }
        [ForeignKey(nameof(WeaponTypeId))]
        [InverseProperty("Equipment")]
        public virtual WeaponType WeaponType { get; set; }
        [InverseProperty("Equipment")]
        public virtual ICollection<PcEquipment> PcEquipment { get; set; }
    }
}
