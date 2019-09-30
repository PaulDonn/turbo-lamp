using Core.PlayerCharacters.Command;
using DataModel;
using Infrastructure.CQRS;

namespace Core.PlayerCharacters.CommandHandler
{
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
