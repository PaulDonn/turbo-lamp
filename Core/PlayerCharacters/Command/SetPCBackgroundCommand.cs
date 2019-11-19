using DataModel;
using Infrastructure.CQRS;

namespace Core.PlayerCharacters.Command
{
    public class SetPCBackgroundCommand : ICommand
    {
        public int PcId { get; set; }

        public int BackgroundId { get; set; }
    }

    public class SetPCBackgroundCommandHandler : ICommandHandler<SetPCBackgroundCommand>
    {
        private NoticeBoardContext _context;

        public SetPCBackgroundCommandHandler(NoticeBoardContext context)
        {
            _context = context;
        }

        public ExecutionResult Handle(SetPCBackgroundCommand command)
        {
            var result = new ExecutionResult();

            var pc = _context.PlayerCharacter.Find(command.PcId);

            pc.BackgroundId = command.BackgroundId;
            _context.SaveChanges();

            result.Success = true;

            return result;
        }
    }
}
