using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace DataModel
{
    public partial class ClassSkill
    {
        public int Id { get; set; }
        public int ClassId { get; set; }
        public int SkillId { get; set; }

        [ForeignKey("ClassId")]
        [InverseProperty("ClassSkill")]
        public Class Class { get; set; }
        [ForeignKey("SkillId")]
        [InverseProperty("ClassSkill")]
        public Skill Skill { get; set; }
    }
}
