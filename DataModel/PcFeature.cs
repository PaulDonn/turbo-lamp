using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace DataModel
{
    public partial class PcFeature
    {
        [Key]
        public int Id { get; set; }
        public int PcId { get; set; }
        public int FeatureId { get; set; }

        [ForeignKey(nameof(FeatureId))]
        [InverseProperty("PcFeature")]
        public virtual Feature Feature { get; set; }
        [ForeignKey(nameof(PcId))]
        [InverseProperty(nameof(PlayerCharacter.PcFeature))]
        public virtual PlayerCharacter Pc { get; set; }
    }
}
