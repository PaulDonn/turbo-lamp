using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace DataModel
{
    public partial class Race
    {
        public Race()
        {
            PlayerCharacter = new HashSet<PlayerCharacter>();
            SubRace = new HashSet<SubRace>();
        }

        public int Id { get; set; }
        [Required]
        [StringLength(50)]
        public string Name { get; set; }
        [Required]
        public string Description { get; set; }

        [InverseProperty("Race")]
        public ICollection<PlayerCharacter> PlayerCharacter { get; set; }
        [InverseProperty("Race")]
        public ICollection<SubRace> SubRace { get; set; }
    }
}
