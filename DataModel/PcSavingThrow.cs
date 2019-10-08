using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace DataModel
{
    public partial class PcSavingThrow
    {
        public int Id { get; set; }
        public int PcId { get; set; }
        public int AbilityId { get; set; }

        [ForeignKey("AbilityId")]
        [InverseProperty("PcSavingThrow")]
        public Ability Ability { get; set; }
        [ForeignKey("PcId")]
        [InverseProperty("PcSavingThrow")]
        public PlayerCharacter Pc { get; set; }
    }
}
