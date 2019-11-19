using DataModel;
using Infrastructure.CQRS;

namespace Core.PlayerCharacters.Command
{
    public class SetPCRaceCommand : ICommand
    {
        public int PcId { get; set; }

        public int RaceId { get; set; }
    }

    public class SetPCRaceCommandHandler : ICommandHandler<SetPCRaceCommand>
    {
        private NoticeBoardContext _context;

        public SetPCRaceCommandHandler(NoticeBoardContext context)
        {
            _context = context;
        }

        public ExecutionResult Handle(SetPCRaceCommand command)
        {
            var result = new ExecutionResult();

            var pc = _context.PlayerCharacter.Find(command.PcId);

            pc.RaceId = command.RaceId;
            _context.SaveChanges();

            result.Success = true;

            return result;
        }
    }
}
