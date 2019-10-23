using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace DataModel
{
    public partial class BgSkill
    {
        [Key]
        public int Id { get; set; }
        public int BackgroundId { get; set; }
        public int SkillId { get; set; }

        [ForeignKey(nameof(BackgroundId))]
        [InverseProperty("BgSkill")]
        public virtual Background Background { get; set; }
        [ForeignKey(nameof(SkillId))]
        [InverseProperty("BgSkill")]
        public virtual Skill Skill { get; set; }
    }
}
