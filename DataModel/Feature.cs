using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace DataModel
{
    public partial class Feature
    {
        public Feature()
        {
            InverseParentFeatureNavigation = new HashSet<Feature>();
            PcFeature = new HashSet<PcFeature>();
        }

        public int Id { get; set; }
        [Required]
        [StringLength(50)]
        public string Name { get; set; }
        [Required]
        public string Description { get; set; }
        public int? ParentFeature { get; set; }
        [Required]
        [StringLength(50)]
        public string Code { get; set; }

        [ForeignKey("ParentFeature")]
        [InverseProperty("InverseParentFeatureNavigation")]
        public Feature ParentFeatureNavigation { get; set; }
        [InverseProperty("ParentFeatureNavigation")]
        public ICollection<Feature> InverseParentFeatureNavigation { get; set; }
        [InverseProperty("Feature")]
        public ICollection<PcFeature> PcFeature { get; set; }
    }
}
