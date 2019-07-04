using System.ComponentModel.DataAnnotations.Schema;

namespace DataModel
{
    public partial class PcSkill
    {
        public int Id { get; set; }
        public int PcId { get; set; }
        public int SkillId { get; set; }

        [ForeignKey("PcId")]
        [InverseProperty("PcSkill")]
        public PlayerCharacter Pc { get; set; }
        [ForeignKey("SkillId")]
        [InverseProperty("PcSkill")]
        public Skill Skill { get; set; }
    }
}
