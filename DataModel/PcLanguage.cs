using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace DataModel
{
    public partial class PcLanguage
    {
        public int Id { get; set; }
        public int PcId { get; set; }
        public int LanguageId { get; set; }

        [ForeignKey("LanguageId")]
        [InverseProperty("PcLanguage")]
        public Language Language { get; set; }
        [ForeignKey("PcId")]
        [InverseProperty("PcLanguage")]
        public PlayerCharacter Pc { get; set; }
    }
}
