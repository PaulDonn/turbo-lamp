using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace DataModel
{
    public partial class Background
    {
        public Background()
        {
            PlayerCharacter = new HashSet<PlayerCharacter>();
        }

        public int Id { get; set; }
        [Required]
        [StringLength(50)]
        public string Name { get; set; }
        [Required]
        public string Description { get; set; }

        [InverseProperty("Background")]
        public ICollection<PlayerCharacter> PlayerCharacter { get; set; }
    }
}
