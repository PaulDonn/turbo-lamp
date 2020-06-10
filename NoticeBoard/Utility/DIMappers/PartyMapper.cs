using Core._Campaign.Command;
using Core._Campaign.DTO;
using Core._Campaign.Query;
using Core.Races.DTO;
using Core.Races.Query;
using Infrastructure.CQRS;
using Microsoft.Extensions.DependencyInjection;
using System.Collections.Generic;

namespace NoticeBoard.Utility.DIMappers
{
    public class CampaignMapper
    {
        public static void Setup(IServiceCollection services)
        {
            //Command Handlers
            services.AddTransient<ICommandHandler<CreateCampaignCommand>, CreateCampaignCommandHandler>();

            //Query Handlers
            services.AddTransient<IQueryHandler<GetCampaignQuery, CampaignDTO>, GetCampaignQueryHandler>();
            services.AddTransient<IQueryHandler<GetPlayerCampaignsQuery, IEnumerable<CampaignDTO>>, GetPlayerCampaignsQueryHandler>();
            services.AddTransient<IQueryHandler<GetSourcesQuery, IEnumerable<SourceDTO>>, GetSourcesQueryHandler>();
            services.AddTransient<IQueryHandler<GetCharacterGenerationOptionsQuery, IEnumerable<CharacterGenerationMethodDTO>>, GetCharacterGenerationOptionsQueryHandler>();
        }
    }
}
