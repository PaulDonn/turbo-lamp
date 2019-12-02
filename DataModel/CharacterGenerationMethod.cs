using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace DataModel
{
    public partial class CharacterGenerationMethod
    {
        public CharacterGenerationMethod()
        {
            Party = new HashSet<Party>();
        }

        [Key]
        public int Id { get; set; }
        [Required]
        [StringLength(50)]
        public string Name { get; set; }
        [Required]
        public string Description { get; set; }

        [InverseProperty("CharacterGenerationMethod")]
        public virtual ICollection<Party> Party { get; set; }
    }
}
