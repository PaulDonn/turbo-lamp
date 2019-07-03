using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace DataModel
{
    public partial class PcAbilityScore
    {
        public int Id { get; set; }
        public int AbilityId { get; set; }
        public int Score { get; set; }
        public int PcId { get; set; }

        [ForeignKey("AbilityId")]
        [InverseProperty("PcAbilityScore")]
        public Ability Ability { get; set; }
        [ForeignKey("PcId")]
        [InverseProperty("PcAbilityScore")]
        public PlayerCharacter Pc { get; set; }
    }
}
