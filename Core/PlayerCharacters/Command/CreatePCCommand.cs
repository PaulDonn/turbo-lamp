using DataModel;
using Infrastructure.CQRS;
using Infrastructure.Session;
using System.Linq;

namespace Core.PlayerCharacters.Command
{
    public class CreatePCCommand : ICommand
    {
        public int CampaignId { get; set; }
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
                    CampaignId = command.CampaignId,
                    PlayerId = player.Id,
                    Level = 1
                };

                _context.PlayerCharacter.Add(pc);

                foreach(var abilityId in _context.Ability.ToList().Select(n => n.Id))
                {
                    pc.PcAbilityScore.Add(new PcAbilityScore
                    {
                        AbilityId = abilityId,
                        Score = 0
                    });
                }

                for(int i = 1; i <= 9; i++)
                {
                    pc.PcSpellLevel.Add(new PcSpellLevel
                    {
                        SpellLevel = i
                    });
                }

                _context.SaveChanges();

                result.Success = true;
                result.NewRecordId = pc.Id;
            }

            return result;
        }
    }
}
