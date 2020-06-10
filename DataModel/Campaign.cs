using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace DataModel
{
    public partial class Campaign
    {
        public Campaign()
        {
            CampaignSource = new HashSet<CampaignSource>();
            PlayerCampaign = new HashSet<PlayerCampaign>();
            PlayerCharacter = new HashSet<PlayerCharacter>();
        }

        [Key]
        public int Id { get; set; }
        [Required]
        [StringLength(50)]
        public string Name { get; set; }
        public string Description { get; set; }
        public int OwningDmId { get; set; }
        public int CharacterGenerationMethodId { get; set; }
        public int NewCharacterStartingLevel { get; set; }

        [ForeignKey(nameof(CharacterGenerationMethodId))]
        [InverseProperty("Campaign")]
        public virtual CharacterGenerationMethod CharacterGenerationMethod { get; set; }
        [InverseProperty("Campaign")]
        public virtual ICollection<CampaignSource> CampaignSource { get; set; }
        [InverseProperty("Campaign")]
        public virtual ICollection<PlayerCampaign> PlayerCampaign { get; set; }
        [InverseProperty("Campaign")]
        public virtual ICollection<PlayerCharacter> PlayerCharacter { get; set; }
    }
}
