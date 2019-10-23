using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace DataModel
{
    public partial class PcSkill
    {
        [Key]
        public int Id { get; set; }
        public int PcId { get; set; }
        public int SkillId { get; set; }

        [ForeignKey(nameof(PcId))]
        [InverseProperty(nameof(PlayerCharacter.PcSkill))]
        public virtual PlayerCharacter Pc { get; set; }
        [ForeignKey(nameof(SkillId))]
        [InverseProperty("PcSkill")]
        public virtual Skill Skill { get; set; }
    }
}
