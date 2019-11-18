using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace DataModel
{
    public partial class PartySource
    {
        [Key]
        public int Id { get; set; }
        public int PartyId { get; set; }
        public int SourceId { get; set; }

        [ForeignKey(nameof(PartyId))]
        [InverseProperty("PartySource")]
        public virtual Party Party { get; set; }
        [ForeignKey(nameof(SourceId))]
        [InverseProperty("PartySource")]
        public virtual Source Source { get; set; }
    }
}
