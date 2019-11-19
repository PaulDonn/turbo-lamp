using DataModel;
using Infrastructure.CQRS;

namespace Core.PlayerCharacters.Command
{
    public class SetPCClassCommand : ICommand
    {
        public int PcId { get; set; }

        public int ClassId { get; set; }
    }

    public class SetPCClassCommandHandler : ICommandHandler<SetPCClassCommand>
    {
        private NoticeBoardContext _context;

        public SetPCClassCommandHandler(NoticeBoardContext context)
        {
            _context = context;
        }

        public ExecutionResult Handle(SetPCClassCommand command)
        {
            var result = new ExecutionResult();

            var pc = _context.PlayerCharacter.Find(command.PcId);

            pc.ClassId = command.ClassId;
            _context.SaveChanges();

            result.Success = true;

            return result;
        }
    }
}
