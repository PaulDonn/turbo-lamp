using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace DataModel
{
    public partial class Class
    {
        public Class()
        {
            Archetype = new HashSet<Archetype>();
            PlayerCharacter = new HashSet<PlayerCharacter>();
        }

        public int Id { get; set; }
        [Required]
        [StringLength(50)]
        public string Name { get; set; }
        [Required]
        public string Description { get; set; }
        public int HitDie { get; set; }

        [InverseProperty("Class")]
        public ICollection<Archetype> Archetype { get; set; }
        [InverseProperty("Class")]
        public ICollection<PlayerCharacter> PlayerCharacter { get; set; }
    }
}
