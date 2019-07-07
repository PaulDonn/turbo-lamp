using Microsoft.AspNetCore.Mvc.Rendering;
using System.ComponentModel.DataAnnotations;

namespace TavernNoticeBoard.Models.Player
{
    public class CreatePlayerModel
    {
        [Display(Name="Character Name")]
        public string CharacterName { get; set; }

        [Display(Name = "Race")]
        public int RaceId { get; set; }

        public SelectList Races { get; set; }

        [Display(Name = "Sub Race")]
        public int SubRaceId { get; set; }

        public SelectList SubRaces { get; set; }

        [Display(Name = "Class")]
        public int ClassId { get; set; }

        public SelectList Classes { get; set; }

        public int ArchetypeId { get; set; }

        public SelectList Archetypes { get; set; }

        [Display(Name = "Background")]
        public int BackGroundId { get; set; }

        public SelectList Backgrounds { get; set; }

        [Display(Name = "Alignment")]
        public int AlignmentId { get; set; }

        public SelectList Alignments { get; set; }
    }
}
