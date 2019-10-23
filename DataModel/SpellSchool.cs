using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace DataModel
{
    public partial class SpellSchool
    {
        public SpellSchool()
        {
            Spell = new HashSet<Spell>();
        }

        [Key]
        public int Id { get; set; }
        [Required]
        [StringLength(150)]
        public string Name { get; set; }

        [InverseProperty("SpellSchool")]
        public virtual ICollection<Spell> Spell { get; set; }
    }
}
