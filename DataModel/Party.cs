using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace DataModel
{
    public partial class Party
    {
        public Party()
        {
            PartySource = new HashSet<PartySource>();
            PlayerCharacter = new HashSet<PlayerCharacter>();
            PlayerParty = new HashSet<PlayerParty>();
        }

        [Key]
        public int Id { get; set; }
        [Required]
        [StringLength(50)]
        public string Name { get; set; }
        public string Description { get; set; }
        public int OwningDmId { get; set; }
        public int CharacterGenerationMethodId { get; set; }
        public int NewCharacterStartingLevel { get; set; }

        [ForeignKey(nameof(CharacterGenerationMethodId))]
        [InverseProperty("Party")]
        public virtual CharacterGenerationMethod CharacterGenerationMethod { get; set; }
        [InverseProperty("Party")]
        public virtual ICollection<PartySource> PartySource { get; set; }
        [InverseProperty("Party")]
        public virtual ICollection<PlayerCharacter> PlayerCharacter { get; set; }
        [InverseProperty("Party")]
        public virtual ICollection<PlayerParty> PlayerParty { get; set; }
    }
}
