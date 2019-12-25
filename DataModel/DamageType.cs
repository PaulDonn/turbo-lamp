using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace DataModel
{
    public partial class DamageType
    {
        public DamageType()
        {
            Spell = new HashSet<Spell>();
            WeaponType = new HashSet<WeaponType>();
        }

        [Key]
        public int Id { get; set; }
        [Required]
        [StringLength(50)]
        public string Name { get; set; }

        [InverseProperty("DamageType")]
        public virtual ICollection<Spell> Spell { get; set; }
        [InverseProperty("DamageType")]
        public virtual ICollection<WeaponType> WeaponType { get; set; }
    }
}
