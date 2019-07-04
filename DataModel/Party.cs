using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace DataModel
{
    public partial class Party
    {
        public Party()
        {
            PlayerCharacter = new HashSet<PlayerCharacter>();
        }

        public int Id { get; set; }
        [Required]
        [StringLength(50)]
        public string Name { get; set; }

        [InverseProperty("Party")]
        public ICollection<PlayerCharacter> PlayerCharacter { get; set; }
    }
}
