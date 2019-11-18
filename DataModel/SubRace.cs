using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace DataModel
{
    public partial class SubRace
    {
        public SubRace()
        {
            PlayerCharacter = new HashSet<PlayerCharacter>();
            RaceFeature = new HashSet<RaceFeature>();
        }

        [Key]
        public int Id { get; set; }
        [Required]
        [StringLength(50)]
        public string Name { get; set; }
        [Required]
        public string Description { get; set; }
        public int RaceId { get; set; }
        public int? AdditionalLanguages { get; set; }
        public int SourceId { get; set; }

        [ForeignKey(nameof(RaceId))]
        [InverseProperty("SubRace")]
        public virtual Race Race { get; set; }
        [ForeignKey(nameof(SourceId))]
        [InverseProperty("SubRace")]
        public virtual Source Source { get; set; }
        [InverseProperty("SubRace")]
        public virtual ICollection<PlayerCharacter> PlayerCharacter { get; set; }
        [InverseProperty("SubRace")]
        public virtual ICollection<RaceFeature> RaceFeature { get; set; }
    }
}
