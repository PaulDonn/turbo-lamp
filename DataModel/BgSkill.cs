using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace DataModel
{
    public partial class BgSkill
    {
        public int Id { get; set; }
        public int BackgroundId { get; set; }
        public int SkillId { get; set; }

        [ForeignKey("BackgroundId")]
        [InverseProperty("BgSkill")]
        public Background Background { get; set; }
        [ForeignKey("SkillId")]
        [InverseProperty("BgSkill")]
        public Skill Skill { get; set; }
    }
}
