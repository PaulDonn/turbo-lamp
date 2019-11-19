﻿using Core.PlayerCharacters.Command;
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
            services.AddTransient<ICommandHandler<SetPCRaceCommand>, SetPCRaceCommandHandler>();
            services.AddTransient<ICommandHandler<SetPCSubRaceCommand>, SetPCSubRaceCommandHandler>();
            services.AddTransient<ICommandHandler<SetPCClassCommand>, SetPCClassCommandHandler>();
            services.AddTransient<ICommandHandler<SetPCArchetypeCommand>, SetPCArchetypeCommandHandler>();
            services.AddTransient<ICommandHandler<SetPCBackgroundCommand>, SetPCBackgroundCommandHandler>();

            //Query Handlers
            services.AddTransient<IQueryHandler<GetPlayerCharacterQuery, PlayerCharacterDTO>, GetPlayerCharacterQueryHandler>();
        }
    }
}
