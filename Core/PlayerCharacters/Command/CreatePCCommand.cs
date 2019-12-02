using DataModel;
using Infrastructure.CQRS;
using Infrastructure.Session;
using System.Linq;

namespace Core.PlayerCharacters.Command
{
    public class CreatePCCommand : ICommand
    {
        public int PartyId { get; set; }
    }

    public class CreatePCCommandHandler : ICommandHandler<CreatePCCommand>
    {
        private NoticeBoardContext _context;

        private ISessionInformation _sessionInformation;

        public CreatePCCommandHandler(NoticeBoardContext context, ISessionInformation sessionInformation)
        {
            _context = context;
            _sessionInformation = sessionInformation;
        }

        public ExecutionResult Handle(CreatePCCommand command)
        {
            var result = new ExecutionResult();

            var player = _context.Player.SingleOrDefault(n => n.UserId == _sessionInformation.UserId && n.IsEnabled);

            if (player != null)
            {
                var pc = new PlayerCharacter
                {
                    PartyId = command.PartyId,
                    PlayerId = player.Id
                };

                _context.PlayerCharacter.Add(pc);
                _context.SaveChanges();

                result.Success = true;
                result.NewRecordId = pc.Id;
            }

            return result;
        }
    }
}
