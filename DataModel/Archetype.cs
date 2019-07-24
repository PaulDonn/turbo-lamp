using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace DataModel
{
    public partial class Archetype
    {
        public int Id { get; set; }
        [Required]
        [StringLength(50)]
        public string Name { get; set; }
        [Required]
        [StringLength(50)]
        public string ShortName { get; set; }
        [Required]
        public string Description { get; set; }
        public int ClassId { get; set; }

        [ForeignKey("ClassId")]
        [InverseProperty("Archetype")]
        public Class Class { get; set; }
    }
}
