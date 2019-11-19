using DataModel;
using Infrastructure.CQRS;

namespace Core.PlayerCharacters.Command
{
    public class SetPCSubRaceCommand : ICommand
    {
        public int PcId { get; set; }

        public int SubRaceId { get; set; }
    }

    public class SetPCSubRaceCommandHandler : ICommandHandler<SetPCSubRaceCommand>
    {
        private NoticeBoardContext _context;

        public SetPCSubRaceCommandHandler(NoticeBoardContext context)
        {
            _context = context;
        }

        public ExecutionResult Handle(SetPCSubRaceCommand command)
        {
            var result = new ExecutionResult();

            var pc = _context.PlayerCharacter.Find(command.PcId);

            pc.SubRaceId = command.SubRaceId;
            _context.SaveChanges();

            result.Success = true;

            return result;
        }
    }
}
