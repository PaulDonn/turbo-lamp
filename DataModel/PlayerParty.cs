using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace DataModel
{
    public partial class PlayerParty
    {
        [Key]
        public int Id { get; set; }
        public int PlayerId { get; set; }
        public int PartyId { get; set; }

        [ForeignKey(nameof(PartyId))]
        [InverseProperty("PlayerParty")]
        public virtual Party Party { get; set; }
        [ForeignKey(nameof(PlayerId))]
        [InverseProperty("PlayerParty")]
        public virtual Player Player { get; set; }
    }
}
