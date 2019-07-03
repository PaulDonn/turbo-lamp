using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace DataModel
{
    public partial class PcFeature
    {
        public int Id { get; set; }
        public int PcId { get; set; }
        public int FeatureId { get; set; }

        [ForeignKey("FeatureId")]
        [InverseProperty("PcFeature")]
        public Feature Feature { get; set; }
        [ForeignKey("PcId")]
        [InverseProperty("PcFeature")]
        public PlayerCharacter Pc { get; set; }
    }
}
