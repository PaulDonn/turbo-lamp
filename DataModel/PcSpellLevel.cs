using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace DataModel
{
    public partial class PcSpellLevel
    {
        [Key]
        public int Id { get; set; }
        public int PcId { get; set; }
        public int SpellLevel { get; set; }
        public int SlotsMaximum { get; set; }
        public int SlotsCurrent { get; set; }

        [ForeignKey(nameof(PcId))]
        [InverseProperty(nameof(PlayerCharacter.PcSpellLevel))]
        public virtual PlayerCharacter Pc { get; set; }
    }
}
