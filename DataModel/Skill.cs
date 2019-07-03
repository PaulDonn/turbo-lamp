using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace DataModel
{
    public partial class Skill
    {
        public Skill()
        {
            PcSkill = new HashSet<PcSkill>();
        }

        public int Id { get; set; }
        [Required]
        [StringLength(50)]
        public string Name { get; set; }
        public int AbilityId { get; set; }

        [ForeignKey("AbilityId")]
        [InverseProperty("Skill")]
        public Ability Ability { get; set; }
        [InverseProperty("Skill")]
        public ICollection<PcSkill> PcSkill { get; set; }
    }
}
