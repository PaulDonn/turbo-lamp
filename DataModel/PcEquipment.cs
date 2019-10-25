using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace DataModel
{
    public partial class PcEquipment
    {
        [Key]
        public int Id { get; set; }
        public int? PcId { get; set; }
        public int EquipmentId { get; set; }
        public int? Quantity { get; set; }
        [StringLength(150)]
        public string Name { get; set; }
        public int? EquippedSlot { get; set; }

        [ForeignKey(nameof(EquipmentId))]
        [InverseProperty("PcEquipment")]
        public virtual Equipment Equipment { get; set; }
        [ForeignKey(nameof(PcId))]
        [InverseProperty(nameof(PlayerCharacter.PcEquipment))]
        public virtual PlayerCharacter Pc { get; set; }
    }
}
