using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace DataModel
{
    public partial class RaceLanguage
    {
        [Key]
        public int Id { get; set; }
        public int RaceId { get; set; }
        public int LanguageId { get; set; }

        [ForeignKey(nameof(LanguageId))]
        [InverseProperty("RaceLanguage")]
        public virtual Language Language { get; set; }
        [ForeignKey(nameof(RaceId))]
        [InverseProperty("RaceLanguage")]
        public virtual Race Race { get; set; }
    }
}
