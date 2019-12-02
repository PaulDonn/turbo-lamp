using Core._Party.Command;
using Core._Party.DTO;
using Core._Party.Query;
using Core.Races.DTO;
using Core.Races.Query;
using Infrastructure.CQRS;
using Microsoft.Extensions.DependencyInjection;
using System.Collections.Generic;

namespace NoticeBoard.Utility.DIMappers
{
    public class PartyMapper
    {
        public static void Setup(IServiceCollection services)
        {
            //Command Handlers
            services.AddTransient<ICommandHandler<CreatePartyCommand>, CreatePartyCommandHandler>();

            //Query Handlers
            services.AddTransient<IQueryHandler<GetPlayerPartiesQuery, IEnumerable<PartyDTO>>, GetPlayerPartiesQueryHandler>();
            services.AddTransient<IQueryHandler<GetSourcesQuery, IEnumerable<SourceDTO>>, GetSourcesQueryHandler>();
            services.AddTransient<IQueryHandler<GetCharacterGenerationOptionsQuery, IEnumerable<CharacterGenerationMethodDTO>>, GetCharacterGenerationOptionsQueryHandler>();
        }
    }
}
