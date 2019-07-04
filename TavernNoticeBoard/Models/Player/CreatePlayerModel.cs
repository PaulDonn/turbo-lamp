using Microsoft.AspNetCore.Mvc.Rendering;

namespace TavernNoticeBoard.Models.Player
{
    public class CreatePlayerModel
    {
        public string CharacterName { get; set; }

        public int ClassId { get; set; }

        public SelectList Classes { get; set; }

        public int ArchetypeId { get; set; }

        public SelectList Archetypes { get; set; }

        public int BackGroundId { get; set; }

        public SelectList Backgrounds { get; set; }

        public int RaceId { get; set; }

        public SelectList Races { get; set; }

        public int SubRaceId { get; set; }

        public SelectList SubRaces { get; set; }

        public int AlignmentId { get; set; }

        public SelectList Alignments { get; set; }
    }
}
