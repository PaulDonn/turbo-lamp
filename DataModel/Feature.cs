﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace DataModel
{
    public partial class Feature
    {
        public Feature()
        {
            ClassFeature = new HashSet<ClassFeature>();
            PcFeature = new HashSet<PcFeature>();
            RaceFeature = new HashSet<RaceFeature>();
            SubFeature = new HashSet<SubFeature>();
        }

        [Key]
        public int Id { get; set; }
        [Required]
        [StringLength(50)]
        public string Name { get; set; }
        [Required]
        public string Description { get; set; }
        [Required]
        [StringLength(50)]
        public string Code { get; set; }
        public int? Quantity { get; set; }
        public int SourceId { get; set; }

        [ForeignKey(nameof(SourceId))]
        [InverseProperty("Feature")]
        public virtual Source Source { get; set; }
        [InverseProperty("Feature")]
        public virtual ICollection<ClassFeature> ClassFeature { get; set; }
        [InverseProperty("Feature")]
        public virtual ICollection<PcFeature> PcFeature { get; set; }
        [InverseProperty("Feature")]
        public virtual ICollection<RaceFeature> RaceFeature { get; set; }
        [InverseProperty("Feature")]
        public virtual ICollection<SubFeature> SubFeature { get; set; }
    }
}
