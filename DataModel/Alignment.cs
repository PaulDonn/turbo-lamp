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

        public int Id { get; set; }
        [Required]
        [StringLength(50)]
        public string Name { get; set; }
        [Required]
        public string Description { get; set; }
        [Required]
        [StringLength(2)]
        public string Code { get; set; }

        [InverseProperty("Alignment")]
        public ICollection<PlayerCharacter> PlayerCharacter { get; set; }
    }
}
