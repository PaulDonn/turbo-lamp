using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace DataModel
{
    public partial class Player
    {
        public Player()
        {
            PlayerCharacter = new HashSet<PlayerCharacter>();
            PlayerParty = new HashSet<PlayerParty>();
        }

        [Key]
        public int Id { get; set; }
        [StringLength(150)]
        public string UserId { get; set; }
        [Required]
        [StringLength(150)]
        public string EmailAddress { get; set; }
        [Required]
        [StringLength(150)]
        public string Name { get; set; }
        public bool IsEnabled { get; set; }
        [Column("IsDM")]
        public bool IsDm { get; set; }

        [InverseProperty("Player")]
        public virtual ICollection<PlayerCharacter> PlayerCharacter { get; set; }
        [InverseProperty("Player")]
        public virtual ICollection<PlayerParty> PlayerParty { get; set; }
    }
}
