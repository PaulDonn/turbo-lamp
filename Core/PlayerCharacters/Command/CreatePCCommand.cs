using DataModel;
using Infrastructure.CQRS;

namespace Core.PlayerCharacters.Command
{
    public class CreatePCCommand : ICommand
    {
        public int PartyId { get; set; }

        public int PlayerId { get; set; }
    }

    public class CreatePCCommandHandler : ICommandHandler<CreatePCCommand>
    {
        private NoticeBoardContext _context;

        public CreatePCCommandHandler(NoticeBoardContext context)
        {
            _context = context;
        }

        public ExecutionResult Handle(CreatePCCommand command)
        {
            var result = new ExecutionResult();

            var pc = new PlayerCharacter
            {
                PartyId = command.PartyId,
                PlayerId = command.PlayerId
            };

            _context.PlayerCharacter.Add(pc);
            _context.SaveChanges();

            result.Success = true;
            result.NewRecordId = pc.Id;

            return result;
        }
    }
}
