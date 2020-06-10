using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace DataModel
{
    public partial class PlayerCampaign
    {
        [Key]
        public int Id { get; set; }
        public int PlayerId { get; set; }
        public int CampaignId { get; set; }

        [ForeignKey(nameof(CampaignId))]
        [InverseProperty("PlayerCampaign")]
        public virtual Campaign Campaign { get; set; }
        [ForeignKey(nameof(PlayerId))]
        [InverseProperty("PlayerCampaign")]
        public virtual Player Player { get; set; }
    }
}
