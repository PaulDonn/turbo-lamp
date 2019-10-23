using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace DataModel
{
    public partial class PcSavingThrow
    {
        [Key]
        public int Id { get; set; }
        public int PcId { get; set; }
        public int AbilityId { get; set; }

        [ForeignKey(nameof(AbilityId))]
        [InverseProperty("PcSavingThrow")]
        public virtual Ability Ability { get; set; }
        [ForeignKey(nameof(PcId))]
        [InverseProperty(nameof(PlayerCharacter.PcSavingThrow))]
        public virtual PlayerCharacter Pc { get; set; }
    }
}
