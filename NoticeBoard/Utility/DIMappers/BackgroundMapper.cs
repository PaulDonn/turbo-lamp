using Core.Backgrounds.DTO;
using Core.Backgrounds.Query;
using Infrastructure.CQRS;
using Microsoft.Extensions.DependencyInjection;
using System.Collections.Generic;

namespace NoticeBoard.Utility.DIMappers
{
    public class BackgroundMapper
    {
        public static void Setup(IServiceCollection services)
        {
            //Command Handlers

            //Query Handlers
            services.AddTransient<IQueryHandler<GetBackgroundQuery, BackgroundDTO>, GetBackgroundQueryHandler>();
            services.AddTransient<IQueryHandler<GetBackgroundsQuery, IEnumerable<BackgroundDTO>>, GetBackgroundsQueryHandler>();
        }
    }
}
