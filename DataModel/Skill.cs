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
            BgSkill = new HashSet<BgSkill>();
            ClassSkill = new HashSet<ClassSkill>();
            PcSkill = new HashSet<PcSkill>();
        }

        [Key]
        public int Id { get; set; }
        [Required]
        [StringLength(50)]
        public string Name { get; set; }
        public int AbilityId { get; set; }
        [Required]
        public string Actions { get; set; }

        [ForeignKey(nameof(AbilityId))]
        [InverseProperty("Skill")]
        public virtual Ability Ability { get; set; }
        [InverseProperty("Skill")]
        public virtual ICollection<BgSkill> BgSkill { get; set; }
        [InverseProperty("Skill")]
        public virtual ICollection<ClassSkill> ClassSkill { get; set; }
        [InverseProperty("Skill")]
        public virtual ICollection<PcSkill> PcSkill { get; set; }
    }
}
