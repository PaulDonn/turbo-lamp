using Core.PlayerCharacters.Command;
using Core.PlayerCharacters.DTO;
using Core.PlayerCharacters.Query;
using Core.Skills.DTO;
using Core.Skills.Query;
using Infrastructure.CQRS;
using Microsoft.Extensions.DependencyInjection;

namespace NoticeBoard.Utility.DIMappers
{
    public class SkillMapper
    {
        public static void Setup(IServiceCollection services)
        {
            //Command Handlers

            //Query Handlers
            services.AddTransient<IQueryHandler<GetSkillOptionsQuery, PlayerSkillsDTO>, GetSkillOptionsQueryHandler>();
        }
    }
}
