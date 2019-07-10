using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace DataModel
{
    public partial class SubRace
    {
        public int Id { get; set; }
        [Required]
        [StringLength(50)]
        public string Name { get; set; }
        [Required]
        public string Description { get; set; }
        public int RaceId { get; set; }
        public int? AdditionalLanguages { get; set; }

        [ForeignKey("RaceId")]
        [InverseProperty("SubRace")]
        public Race Race { get; set; }
    }
}
