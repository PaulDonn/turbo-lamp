using DataModel;
using Infrastructure.CQRS;
using Infrastructure.Session;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Core._Party.Command
{
    public class CreatePartyCommand : ICommand
    {
        public string Name { get; set; }

        public string Description { get; set; }

        public List<int> Sources { get; set; }

        public int NewCharacterStartingLevel { get; set; }

        public int CharacterGenerationMethodId { get; set; }
    }

    public class CreatePartyCommandHandler : ICommandHandler<CreatePartyCommand>
    {
        private NoticeBoardContext _context;

        private ISessionInformation _sessionInformation;

        public CreatePartyCommandHandler(NoticeBoardContext context, ISessionInformation sessionInformation)
        {
            _context = context;
            _sessionInformation = sessionInformation;
        }

        public ExecutionResult Handle(CreatePartyCommand command)
        {
            var result = new ExecutionResult();

            if(_sessionInformation.IsDM)
            {
                var dm = _context.Player.SingleOrDefault(n => n.UserId == _sessionInformation.UserId && n.IsEnabled);

                if (dm != null)
                {
                    var party = new Party
                    {
                        Name = command.Name,
                        Description = command.Description,
                        OwningDmId = dm.Id,
                        CharacterGenerationMethodId = command.CharacterGenerationMethodId,
                        NewCharacterStartingLevel = command.NewCharacterStartingLevel
                    };

                    _context.Party.Add(party);

                    party.PlayerParty.Add(new PlayerParty
                    {
                        PlayerId = dm.Id
                    });

                    foreach (var source in command.Sources)
                    {
                        party.PartySource.Add(new PartySource
                        {
                            SourceId = source
                        });
                    }

                    _context.SaveChanges();
                }
            }

            return result;
        }
    }
}
