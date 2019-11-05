using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace DataModel
{
    public partial class PcTreasure
    {
        [Key]
        public int Id { get; set; }
        public int PcId { get; set; }
        public int TreasureId { get; set; }
        public int? Quantity { get; set; }
        [StringLength(150)]
        public string Name { get; set; }

        [ForeignKey(nameof(PcId))]
        [InverseProperty(nameof(PlayerCharacter.PcTreasure))]
        public virtual PlayerCharacter Pc { get; set; }
        [ForeignKey(nameof(TreasureId))]
        [InverseProperty("PcTreasure")]
        public virtual Treasure Treasure { get; set; }
    }
}
