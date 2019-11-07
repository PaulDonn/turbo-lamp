using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace DataModel
{
    public partial class SpellList
    {
        public SpellList()
        {
            SpellListSpell = new HashSet<SpellListSpell>();
        }

        [Key]
        public int Id { get; set; }
        [Required]
        [StringLength(50)]
        public string Name { get; set; }

        [InverseProperty("SpellList")]
        public virtual ICollection<SpellListSpell> SpellListSpell { get; set; }
    }
}
