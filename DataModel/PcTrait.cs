using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace DataModel
{
    public partial class PcTrait
    {
        [Key]
        public int Id { get; set; }
        public int TraitTypeId { get; set; }
        [Required]
        public string Description { get; set; }
        public int PcId { get; set; }

        [ForeignKey(nameof(PcId))]
        [InverseProperty(nameof(PlayerCharacter.PcTrait))]
        public virtual PlayerCharacter Pc { get; set; }
        [ForeignKey(nameof(TraitTypeId))]
        [InverseProperty("PcTrait")]
        public virtual TraitType TraitType { get; set; }
    }
}
