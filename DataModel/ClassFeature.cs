using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace DataModel
{
    public partial class ClassFeature
    {
        public ClassFeature()
        {
            PcFeature = new HashSet<PcFeature>();
        }

        [Key]
        public int Id { get; set; }
        public int? ClassId { get; set; }
        public int? ArchetypeId { get; set; }
        public int FeatureId { get; set; }
        public int Level { get; set; }
        public string Description { get; set; }
        public bool Hidden { get; set; }

        [ForeignKey(nameof(ArchetypeId))]
        [InverseProperty("ClassFeature")]
        public virtual Archetype Archetype { get; set; }
        [ForeignKey(nameof(ClassId))]
        [InverseProperty("ClassFeature")]
        public virtual Class Class { get; set; }
        [ForeignKey(nameof(FeatureId))]
        [InverseProperty("ClassFeature")]
        public virtual Feature Feature { get; set; }
        [InverseProperty("ClassFeature")]
        public virtual ICollection<PcFeature> PcFeature { get; set; }
    }
}
