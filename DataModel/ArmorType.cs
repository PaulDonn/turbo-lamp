using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace DataModel
{
    public partial class ArmorType
    {
        public ArmorType()
        {
            Equipment = new HashSet<Equipment>();
        }

        [Key]
        public int Id { get; set; }
        [Required]
        [StringLength(50)]
        public string Name { get; set; }
        [Required]
        [StringLength(50)]
        public string Class { get; set; }
        [Column("BaseAC")]
        public int BaseAc { get; set; }
        public bool AddDexterityBonus { get; set; }
        public int? DexterityBonusMax { get; set; }
        public int? StrengthRequirement { get; set; }
        public bool StealthDisadvantage { get; set; }

        [InverseProperty("ArmorType")]
        public virtual ICollection<Equipment> Equipment { get; set; }
    }
}
