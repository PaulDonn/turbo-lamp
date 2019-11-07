using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace DataModel
{
    public partial class RaceFeature
    {
        [Key]
        public int Id { get; set; }
        public int? RaceId { get; set; }
        public int? SubRaceId { get; set; }
        public int FeatureId { get; set; }
        public bool Hidden { get; set; }

        [ForeignKey(nameof(FeatureId))]
        [InverseProperty("RaceFeature")]
        public virtual Feature Feature { get; set; }
        [ForeignKey(nameof(RaceId))]
        [InverseProperty("RaceFeature")]
        public virtual Race Race { get; set; }
        [ForeignKey(nameof(SubRaceId))]
        [InverseProperty("RaceFeature")]
        public virtual SubRace SubRace { get; set; }
    }
}
