using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace DataModel
{
    public partial class Treasure
    {
        public Treasure()
        {
            PcTreasure = new HashSet<PcTreasure>();
        }

        [Key]
        public int Id { get; set; }
        [Required]
        [StringLength(150)]
        public string Name { get; set; }
        public string Description { get; set; }
        public int Weight { get; set; }
        public int Value { get; set; }
        [StringLength(150)]
        public string ImagePath { get; set; }
        public int SourceId { get; set; }

        [ForeignKey(nameof(SourceId))]
        [InverseProperty("Treasure")]
        public virtual Source Source { get; set; }
        [InverseProperty("Treasure")]
        public virtual ICollection<PcTreasure> PcTreasure { get; set; }
    }
}
