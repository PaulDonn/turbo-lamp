using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace DataModel
{
    public partial class ClassSkill
    {
        [Key]
        public int Id { get; set; }
        public int ClassId { get; set; }
        public int SkillId { get; set; }

        [ForeignKey(nameof(ClassId))]
        [InverseProperty("ClassSkill")]
        public virtual Class Class { get; set; }
        [ForeignKey(nameof(SkillId))]
        [InverseProperty("ClassSkill")]
        public virtual Skill Skill { get; set; }
    }
}
