using Core.PlayerCharacter.Command;
using Core.PlayerCharacter.CommandHandler;
using Infrastructure.CQRS;
using Microsoft.Extensions.DependencyInjection;

namespace TavernNoticeBoard.Utility.DIMappers
{
    public class PlayerCharacterMapper
    {
        public static void Setup(IServiceCollection services)
        {
            //Command Handlers
            services.AddTransient<ICommandHandler<CreatePCCommand>, CreatePCCommandHandler>();

            //Query Handlers
        }
    }
}
