using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace DataModel
{
    public partial class TraitType
    {
        public TraitType()
        {
            PcTrait = new HashSet<PcTrait>();
        }

        [Key]
        public int Id { get; set; }
        [Required]
        [StringLength(150)]
        public string Name { get; set; }

        [InverseProperty("TraitType")]
        public virtual ICollection<PcTrait> PcTrait { get; set; }
    }
}
