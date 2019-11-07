using System;
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
            RaceFeature = new HashSet<RaceFeature>();
            RaceLanguage = new HashSet<RaceLanguage>();
            SubRace = new HashSet<SubRace>();
        }

        [Key]
        public int Id { get; set; }
        [Required]
        [StringLength(50)]
        public string Name { get; set; }
        [Required]
        public string Description { get; set; }
        public int? AdditionalLanguages { get; set; }
        public int? AdditionalSkills { get; set; }

        [InverseProperty("Race")]
        public virtual ICollection<PlayerCharacter> PlayerCharacter { get; set; }
        [InverseProperty("Race")]
        public virtual ICollection<RaceFeature> RaceFeature { get; set; }
        [InverseProperty("Race")]
        public virtual ICollection<RaceLanguage> RaceLanguage { get; set; }
        [InverseProperty("Race")]
        public virtual ICollection<SubRace> SubRace { get; set; }
    }
}
