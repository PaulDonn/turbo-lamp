using Core.PlayerCharacter.Command;
using DataModel;
using Infrastructure.CQRS;

namespace Core.PlayerCharacter.CommandHandler
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

            var pc = new DataModel.PlayerCharacter
            {
                CharacterName = command.CharacterName,
                ClassId = command.ClassId,
                //SubClassId = command.SubClassId,
                //BackgroundId = command.BackGroundId,
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
