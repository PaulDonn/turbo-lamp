using Infrastructure.CQRS;

namespace Core.PlayerCharacters.Command
{
    public class CreatePCCommand : ICommand
    {
        public string CharacterName { get; set; }

        public int ClassId { get; set; }

        public int ArchetypeId { get; set; }

        public int BackGroundId { get; set; }

        public int RaceId { get; set; }

        public int AlignmentId { get; set; }
    }
}
