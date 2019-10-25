using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace DataModel
{
    public partial class WeaponType
    {
        public WeaponType()
        {
            Equipment = new HashSet<Equipment>();
        }

        [Key]
        public int Id { get; set; }
        [Required]
        [StringLength(50)]
        public string Name { get; set; }
        public bool IsMartial { get; set; }
        public bool IsRanged { get; set; }
        public int DamageDie { get; set; }
        public int NumberOfDice { get; set; }
        public int DamageTypeId { get; set; }
        public bool IsLight { get; set; }
        public bool IsHeavy { get; set; }
        public bool IsFinesse { get; set; }
        public bool IsThrown { get; set; }
        public int? RangeLow { get; set; }
        public int? RangeHigh { get; set; }
        public bool IsTwoHanded { get; set; }
        public bool IsVersatile { get; set; }
        public int? VersatileDamageDie { get; set; }
        public bool RequiresLoading { get; set; }
        public bool RequiresAmmunition { get; set; }
        public bool HasReach { get; set; }
        public bool IsSpecial { get; set; }

        [ForeignKey(nameof(DamageTypeId))]
        [InverseProperty("WeaponType")]
        public virtual DamageType DamageType { get; set; }
        [InverseProperty("WeaponType")]
        public virtual ICollection<Equipment> Equipment { get; set; }
    }
}
