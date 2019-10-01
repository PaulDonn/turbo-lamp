using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using TavernNoticeBoard.Models.Alignments;
using TavernNoticeBoard.Models.Backgrounds;
using TavernNoticeBoard.Models.Classes;
using TavernNoticeBoard.Models.Races;

namespace TavernNoticeBoard.Models.PlayerCharacters
{
    public partial class PlayerCharacterModel
    {
        public PlayerCharacterModel()
        {
            PlayerClass = new ClassModel();
            Archetype = new ArchetypeModel();
            Background = new BackgroundModel();
            Race = new RaceModel();
            Alignment = new AlignmentModel();
        }

        public int Id { get; set; }

        public string CharacterName { get; set; }

        public int LevelId { get; set; }

        public int ExperiencePoints { get; set; }

        public ClassModel PlayerClass { get; set; }

        public ArchetypeModel Archetype { get; set; }

        public BackgroundModel Background { get; set; }

        public RaceModel Race { get; set; }

        public SubRaceModel SubRace { get; set; }

        public AlignmentModel Alignment { get; set; }
    }
}
