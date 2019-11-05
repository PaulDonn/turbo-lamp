using DataModel;
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

    public class CreatePCCommandHandler : ICommandHandler<CreatePCCommand>
    {
        private NoticeBoardContext context;

        public CreatePCCommandHandler(NoticeBoardContext _context)
        {
            context = _context;
        }

        public ExecutionResult Handle(CreatePCCommand command)
        {
            var result = new ExecutionResult();

            var pc = new PlayerCharacter
            {
                CharacterName = command.CharacterName,
                ClassId = command.ClassId,
                ArchetypeId = command.ArchetypeId,
                BackgroundId = command.BackGroundId,
                RaceId = command.RaceId,
                AlignmentId = command.AlignmentId
            };

            context.PlayerCharacter.Add(pc);
            context.SaveChanges();

            result.Success = true;
            result.NewRecordId = pc.Id;

            return result;
        }
    }
}
