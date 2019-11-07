using Core.Spells.DTO;
using Core.Spells.Query;
using Infrastructure.CQRS;
using Microsoft.Extensions.DependencyInjection;
using System.Collections.Generic;

namespace NoticeBoard.Utility.DIMappers
{
    public class SpellMapper
    {
        public static void Setup(IServiceCollection services)
        {
            //Command Handlers

            //Query Handlers
            services.AddTransient<IQueryHandler<GetSpellQuery, SpellDTO>, GetSpellQueryHandler>();
            services.AddTransient<IQueryHandler<GetSpellListQuery, IEnumerable<SpellDTO>>, GetSpellListQueryHandler>();
        }
    }
}
