using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace DataModel
{
    public partial class CampaignSource
    {
        [Key]
        public int Id { get; set; }
        public int CampaignId { get; set; }
        public int SourceId { get; set; }

        [ForeignKey(nameof(CampaignId))]
        [InverseProperty("CampaignSource")]
        public virtual Campaign Campaign { get; set; }
        [ForeignKey(nameof(SourceId))]
        [InverseProperty("CampaignSource")]
        public virtual Source Source { get; set; }
    }
}
