using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace DataModel
{
    public partial class PcLanguage
    {
        [Key]
        public int Id { get; set; }
        public int PcId { get; set; }
        public int LanguageId { get; set; }

        [ForeignKey(nameof(LanguageId))]
        [InverseProperty("PcLanguage")]
        public virtual Language Language { get; set; }
        [ForeignKey(nameof(PcId))]
        [InverseProperty(nameof(PlayerCharacter.PcLanguage))]
        public virtual PlayerCharacter Pc { get; set; }
    }
}
