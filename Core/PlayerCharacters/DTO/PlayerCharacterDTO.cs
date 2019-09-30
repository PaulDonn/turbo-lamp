using Core.Alignment.DTO;
using Core.Background.DTO;
using Core.Class.DTO;
using Core.Races.DTO;

namespace Core.PlayerCharacters.DTO
{
    public class PlayerCharacterDTO
    {
        public PlayerCharacterDTO()
        {
            PlayerClass = new ClassDTO();
            Archetype = new ArchetypeDTO();
            Background = new BackgroundDTO();
            Race = new RaceDTO();
            Alignment = new AlignmentDTO();
        }

        public int Id { get; set; }

        public string CharacterName { get; set; }

        public ClassDTO PlayerClass { get; set; }

        public ArchetypeDTO Archetype { get; set; }

        public int LevelId { get; set; }

        public BackgroundDTO Background { get; set; }

        //TODO: Add PlayerDTO
        //public PlayerDTO Player { get; set; }

        public RaceDTO Race { get; set; }

        public SubRaceDTO SubRace { get; set; }

        public AlignmentDTO Alignment { get; set; }

        public int ExperiencePoints { get; set; }

        //TODO: Add PartyDTO 
        //public PartyDTO Party { get; set; }
    }
}
