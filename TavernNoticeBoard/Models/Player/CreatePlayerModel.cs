using System.ComponentModel.DataAnnotations;

namespace TavernNoticeBoard.Models.Player
{
    public class CreatePlayerModel
    {
        //Page 1 - Race
        [Display(Name="Character Name")]
        public string CharacterName { get; set; }

        [Display(Name = "Race")]
        public int RaceId { get; set; }

        [Display(Name = "Sub Race")]
        public int SubRaceId { get; set; }

        public string Age { get; set; }

        public string Gender { get; set; }

        [Display(Name = "'")]
        public string HeightFt { get; set; }

        [Display(Name = "''")]
        public string HeightIn { get; set; }

        public string Weight { get; set; }

        [Display(Name = "Skin Colour")]
        public string SkinColour { get; set; }

        [Display(Name = "Hair Colour")]
        public string HairColour { get; set; }

        [Display(Name = "Eye Colour")]
        public string EyeColour { get; set; }

        //Page 2 - Class
        [Display(Name = "Class")]
        public int ClassId { get; set; }

        public int ArchetypeId { get; set; }

        //Page 3 - Background
        [Display(Name = "Background")]
        public int BackgroundId { get; set; }

        //Page 4 - Alignment
        [Display(Name = "Alignment")]
        public int AlignmentId { get; set; }

        [Display(Name = "Personality Traits")]
        public string PersonalityTraits { get; set; }

        public string Ideals { get; set; }

        public string Bonds { get; set; }

        public string Flaws { get; set; }
    }
}
