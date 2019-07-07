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
            PcFeature = new HashSet<PcFeature>();
            SubFeature = new HashSet<SubFeature>();
        }

        public int Id { get; set; }
        [Required]
        [StringLength(50)]
        public string Name { get; set; }
        [Required]
        public string Description { get; set; }
        [Required]
        [StringLength(50)]
        public string Code { get; set; }

        [InverseProperty("Feature")]
        public ICollection<PcFeature> PcFeature { get; set; }
        [InverseProperty("Feature")]
        public ICollection<SubFeature> SubFeature { get; set; }
    }
}
