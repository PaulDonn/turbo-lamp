using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace DataModel
{
    public partial class Background
    {
        public Background()
        {
            BgSkill = new HashSet<BgSkill>();
            PlayerCharacter = new HashSet<PlayerCharacter>();
        }

        [Key]
        public int Id { get; set; }
        [Required]
        [StringLength(50)]
        public string Name { get; set; }
        [Required]
        public string Description { get; set; }
        public int? AdditionalLanguages { get; set; }

        [InverseProperty("Background")]
        public virtual ICollection<BgSkill> BgSkill { get; set; }
        [InverseProperty("Background")]
        public virtual ICollection<PlayerCharacter> PlayerCharacter { get; set; }
    }
}
