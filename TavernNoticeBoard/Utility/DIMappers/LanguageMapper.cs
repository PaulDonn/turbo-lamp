using Core.Language.DTO;
using Core.Language.Query;
using Core.Language.QueryHandler;
using Infrastructure.CQRS;
using Microsoft.Extensions.DependencyInjection;
using System.Collections.Generic;

namespace TavernNoticeBoard.Utility.DIMappers
{
    public class LanguageMapper
    {
        public static void Setup(IServiceCollection services)
        {
            //Command Handlers

            //Query Handlers
            services.AddTransient<IQueryHandler<GetLanguageQuery, LanguageDTO>, GetLanguageQueryHandler>();
            services.AddTransient<IQueryHandler<GetLanguagesQuery, IEnumerable<LanguageDTO>>, GetLanguagesQueryHandler>();
            services.AddTransient<IQueryHandler<GetMaxLanguagesQuery, int>, GetMaxLanguagesQueryHandler>();
        }
    }
}
