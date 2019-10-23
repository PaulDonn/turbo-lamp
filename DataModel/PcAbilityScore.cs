using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace DataModel
{
    public partial class PcAbilityScore
    {
        [Key]
        public int Id { get; set; }
        public int AbilityId { get; set; }
        public int Score { get; set; }
        public int PcId { get; set; }

        [ForeignKey(nameof(AbilityId))]
        [InverseProperty("PcAbilityScore")]
        public virtual Ability Ability { get; set; }
        [ForeignKey(nameof(PcId))]
        [InverseProperty(nameof(PlayerCharacter.PcAbilityScore))]
        public virtual PlayerCharacter Pc { get; set; }
    }
}
