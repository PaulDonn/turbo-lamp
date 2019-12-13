using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace DataModel
{
    public partial class Language
    {
        public Language()
        {
            PcLanguage = new HashSet<PcLanguage>();
            RaceLanguage = new HashSet<RaceLanguage>();
        }

        [Key]
        public int Id { get; set; }
        [Required]
        [StringLength(50)]
        public string Name { get; set; }
        [Required]
        [StringLength(50)]
        public string TypicalSpeakers { get; set; }
        [Required]
        [StringLength(50)]
        public string Script { get; set; }
        public bool IsExotic { get; set; }
        public int SourceId { get; set; }

        [ForeignKey(nameof(SourceId))]
        [InverseProperty("Language")]
        public virtual Source Source { get; set; }
        [InverseProperty("Language")]
        public virtual ICollection<PcLanguage> PcLanguage { get; set; }
        [InverseProperty("Language")]
        public virtual ICollection<RaceLanguage> RaceLanguage { get; set; }
    }
}
