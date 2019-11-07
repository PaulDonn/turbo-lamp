using Core.Languages.DTO;
using Core.Languages.Query;
using Infrastructure.CQRS;
using Microsoft.Extensions.DependencyInjection;
using System.Collections.Generic;

namespace NoticeBoard.Utility.DIMappers
{
    public class LanguageMapper
    {
        public static void Setup(IServiceCollection services)
        {
            //Command Handlers

            //Query Handlers
            services.AddTransient<IQueryHandler<GetLanguageQuery, LanguageDTO>, GetLanguageQueryHandler>();
            services.AddTransient<IQueryHandler<GetLanguagesQuery, IEnumerable<LanguageDTO>>, GetLanguagesQueryHandler>();
            services.AddTransient<IQueryHandler<GetPcLanguagesQuery, PcLanguagesDTO>, GetPcLanguagesQueryHandler>();
        }
    }
}
