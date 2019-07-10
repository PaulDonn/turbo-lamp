using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace DataModel
{
    public partial class RaceLanguage
    {
        public int Id { get; set; }
        public int RaceId { get; set; }
        public int LanguageId { get; set; }

        [ForeignKey("LanguageId")]
        [InverseProperty("RaceLanguage")]
        public Language Language { get; set; }
        [ForeignKey("RaceId")]
        [InverseProperty("RaceLanguage")]
        public Race Race { get; set; }
    }
}
