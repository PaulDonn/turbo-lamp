using DataModel;
using Infrastructure.CQRS;

namespace Core.PlayerCharacters.Command
{
    public class SetPCAlignmentCommand : ICommand
    {
        public int PcId { get; set; }

        public int AlignmentId { get; set; }
    }

    public class SetPCAlignmentCommandHandler : ICommandHandler<SetPCAlignmentCommand>
    {
        private NoticeBoardContext _context;

        public SetPCAlignmentCommandHandler(NoticeBoardContext context)
        {
            _context = context;
        }

        public ExecutionResult Handle(SetPCAlignmentCommand command)
        {
            var result = new ExecutionResult();

            var pc = _context.PlayerCharacter.Find(command.PcId);

            pc.AlignmentId = command.AlignmentId;
            _context.SaveChanges();

            result.Success = true;

            return result;
        }
    }
}
