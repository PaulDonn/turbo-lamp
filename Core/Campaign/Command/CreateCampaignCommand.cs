using DataModel;
using Infrastructure.CQRS;
using Infrastructure.Session;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Core._Campaign.Command
{
    public class CreateCampaignCommand : ICommand
    {
        public string Name { get; set; }

        public string Description { get; set; }

        public List<int> Sources { get; set; }

        public int NewCharacterStartingLevel { get; set; }

        public int CharacterGenerationMethodId { get; set; }
    }

    public class CreateCampaignCommandHandler : ICommandHandler<CreateCampaignCommand>
    {
        private NoticeBoardContext _context;

        private ISessionInformation _sessionInformation;

        public CreateCampaignCommandHandler(NoticeBoardContext context, ISessionInformation sessionInformation)
        {
            _context = context;
            _sessionInformation = sessionInformation;
        }

        public ExecutionResult Handle(CreateCampaignCommand command)
        {
            var result = new ExecutionResult();

            if(_sessionInformation.IsDM)
            {
                var dm = _context.Player.SingleOrDefault(n => n.UserId == _sessionInformation.UserId && n.IsEnabled);

                if (dm != null)
                {
                    var campaign = new Campaign
                    {
                        Name = command.Name,
                        Description = command.Description,
                        OwningDmId = dm.Id,
                        CharacterGenerationMethodId = command.CharacterGenerationMethodId,
                        NewCharacterStartingLevel = command.NewCharacterStartingLevel
                    };

                    _context.Campaign.Add(campaign);

                    campaign.PlayerCampaign.Add(new PlayerCampaign
                    {
                        PlayerId = dm.Id
                    });

                    foreach (var source in command.Sources)
                    {
                        campaign.CampaignSource.Add(new CampaignSource
                        {
                            SourceId = source
                        });
                    }

                    _context.SaveChanges();

                    result.NewRecordId = campaign.Id;
                }
            }

            return result;
        }
    }
}
