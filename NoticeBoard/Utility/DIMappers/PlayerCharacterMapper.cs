using Core.PlayerCharacters.Command;
using Core.PlayerCharacters.DTO;
using Core.PlayerCharacters.Query;
using Infrastructure.CQRS;
using Microsoft.Extensions.DependencyInjection;

namespace NoticeBoard.Utility.DIMappers
{
    public class PlayerCharacterMapper
    {
        public static void Setup(IServiceCollection services)
        {
            //Command Handlers
            services.AddTransient<ICommandHandler<CreatePCCommand>, CreatePCCommandHandler>();

            //Query Handlers
            services.AddTransient<IQueryHandler<GetPCQuery, PlayerCharacterDTO>, GetPCQueryHandler>();
        }
    }
}
