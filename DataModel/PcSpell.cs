using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace DataModel
{
    public partial class PcSpell
    {
        [Key]
        public int Id { get; set; }
        public int PcId { get; set; }
        public int SpellId { get; set; }

        [ForeignKey(nameof(PcId))]
        [InverseProperty(nameof(PlayerCharacter.PcSpell))]
        public virtual PlayerCharacter Pc { get; set; }
        [ForeignKey(nameof(SpellId))]
        [InverseProperty("PcSpell")]
        public virtual Spell Spell { get; set; }
    }
}
