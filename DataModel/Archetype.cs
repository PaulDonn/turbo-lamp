using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace DataModel
{
    public partial class Archetype
    {
        public Archetype()
        {
            ClassFeature = new HashSet<ClassFeature>();
            PlayerCharacter = new HashSet<PlayerCharacter>();
        }

        [Key]
        public int Id { get; set; }
        [Required]
        [StringLength(50)]
        public string Name { get; set; }
        [Required]
        [StringLength(50)]
        public string ShortName { get; set; }
        [Required]
        public string Description { get; set; }
        public int ClassId { get; set; }
        [StringLength(150)]
        public string ImagePath { get; set; }
        public int SourceId { get; set; }

        [ForeignKey(nameof(ClassId))]
        [InverseProperty("Archetype")]
        public virtual Class Class { get; set; }
        [ForeignKey(nameof(SourceId))]
        [InverseProperty("Archetype")]
        public virtual Source Source { get; set; }
        [InverseProperty("Archetype")]
        public virtual ICollection<ClassFeature> ClassFeature { get; set; }
        [InverseProperty("Archetype")]
        public virtual ICollection<PlayerCharacter> PlayerCharacter { get; set; }
    }
}
