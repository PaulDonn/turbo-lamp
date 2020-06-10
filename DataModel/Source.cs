using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace DataModel
{
    public partial class Source
    {
        public Source()
        {
            Archetype = new HashSet<Archetype>();
            Background = new HashSet<Background>();
            CampaignSource = new HashSet<CampaignSource>();
            Class = new HashSet<Class>();
            Equipment = new HashSet<Equipment>();
            Feature = new HashSet<Feature>();
            Language = new HashSet<Language>();
            Race = new HashSet<Race>();
            Spell = new HashSet<Spell>();
            SubRace = new HashSet<SubRace>();
            Treasure = new HashSet<Treasure>();
        }

        [Key]
        public int Id { get; set; }
        [Required]
        [StringLength(150)]
        public string Name { get; set; }
        [Required]
        [StringLength(10)]
        public string Code { get; set; }

        [InverseProperty("Source")]
        public virtual ICollection<Archetype> Archetype { get; set; }
        [InverseProperty("Source")]
        public virtual ICollection<Background> Background { get; set; }
        [InverseProperty("Source")]
        public virtual ICollection<CampaignSource> CampaignSource { get; set; }
        [InverseProperty("Source")]
        public virtual ICollection<Class> Class { get; set; }
        [InverseProperty("Source")]
        public virtual ICollection<Equipment> Equipment { get; set; }
        [InverseProperty("Source")]
        public virtual ICollection<Feature> Feature { get; set; }
        [InverseProperty("Source")]
        public virtual ICollection<Language> Language { get; set; }
        [InverseProperty("Source")]
        public virtual ICollection<Race> Race { get; set; }
        [InverseProperty("Source")]
        public virtual ICollection<Spell> Spell { get; set; }
        [InverseProperty("Source")]
        public virtual ICollection<SubRace> SubRace { get; set; }
        [InverseProperty("Source")]
        public virtual ICollection<Treasure> Treasure { get; set; }
    }
}
