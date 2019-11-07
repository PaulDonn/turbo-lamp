using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace DataModel
{
    public partial class SpellListSpell
    {
        [Key]
        public int Id { get; set; }
        public int SpellListId { get; set; }
        public int SpellId { get; set; }

        [ForeignKey(nameof(SpellId))]
        [InverseProperty("SpellListSpell")]
        public virtual Spell Spell { get; set; }
        [ForeignKey(nameof(SpellListId))]
        [InverseProperty("SpellListSpell")]
        public virtual SpellList SpellList { get; set; }
    }
}
