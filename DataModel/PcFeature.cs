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
        public int? FeatureId { get; set; }
        public int? RaceFeatureId { get; set; }
        public int? ClassFeatureId { get; set; }
        public int? QuantityMaximum { get; set; }
        public int? QuantityCurrent { get; set; }

        [ForeignKey(nameof(ClassFeatureId))]
        [InverseProperty("PcFeature")]
        public virtual ClassFeature ClassFeature { get; set; }
        [ForeignKey(nameof(FeatureId))]
        [InverseProperty("PcFeature")]
        public virtual Feature Feature { get; set; }
        [ForeignKey(nameof(PcId))]
        [InverseProperty(nameof(PlayerCharacter.PcFeature))]
        public virtual PlayerCharacter Pc { get; set; }
        [ForeignKey(nameof(RaceFeatureId))]
        [InverseProperty("PcFeature")]
        public virtual RaceFeature RaceFeature { get; set; }
    }
}
