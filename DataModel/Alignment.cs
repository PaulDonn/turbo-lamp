using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace DataModel
{
    public partial class Alignment
    {
        public Alignment()
        {
            PlayerCharacter = new HashSet<PlayerCharacter>();
        }

        [Key]
        public int Id { get; set; }
        [Required]
        [StringLength(50)]
        public string Name { get; set; }
        [Required]
        public string Description { get; set; }
        [Required]
        [StringLength(2)]
        public string Code { get; set; }
        [StringLength(150)]
        public string ImagePath { get; set; }

        [InverseProperty("Alignment")]
        public virtual ICollection<PlayerCharacter> PlayerCharacter { get; set; }
    }
}
