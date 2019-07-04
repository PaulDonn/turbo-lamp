using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace DataModel
{
    public partial class Ability
    {
        public Ability()
        {
            PcAbilityScore = new HashSet<PcAbilityScore>();
            Skill = new HashSet<Skill>();
        }

        public int Id { get; set; }
        [Required]
        [StringLength(50)]
        public string Name { get; set; }
        [Required]
        [StringLength(3)]
        public string Code { get; set; }

        [InverseProperty("Ability")]
        public ICollection<PcAbilityScore> PcAbilityScore { get; set; }
        [InverseProperty("Ability")]
        public ICollection<Skill> Skill { get; set; }
    }
}
