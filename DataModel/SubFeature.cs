using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace DataModel
{
    public partial class SubFeature
    {
        [Key]
        public int Id { get; set; }
        public int FeatureId { get; set; }
        [Required]
        [StringLength(50)]
        public string Name { get; set; }
        [Required]
        public string Description { get; set; }
        [Required]
        [StringLength(50)]
        public string Code { get; set; }

        [ForeignKey(nameof(FeatureId))]
        [InverseProperty("SubFeature")]
        public virtual Feature Feature { get; set; }
    }
}
