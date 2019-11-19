using DataModel;
using Infrastructure.CQRS;

namespace Core.PlayerCharacters.Command
{
    public class SetPCArchetypeCommand : ICommand
    {
        public int PcId { get; set; }

        public int ArchetypeId { get; set; }
    }

    public class SetPCArchetypeCommandHandler : ICommandHandler<SetPCArchetypeCommand>
    {
        private NoticeBoardContext _context;

        public SetPCArchetypeCommandHandler(NoticeBoardContext context)
        {
            _context = context;
        }

        public ExecutionResult Handle(SetPCArchetypeCommand command)
        {
            var result = new ExecutionResult();

            var pc = _context.PlayerCharacter.Find(command.PcId);

            pc.ArchetypeId = command.ArchetypeId;
            _context.SaveChanges();

            result.Success = true;

            return result;
        }
    }
}
