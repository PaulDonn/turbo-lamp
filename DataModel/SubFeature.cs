using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace DataModel
{
    public partial class SubFeature
    {
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

        [ForeignKey("FeatureId")]
        [InverseProperty("SubFeature")]
        public Feature Feature { get; set; }
    }
}
