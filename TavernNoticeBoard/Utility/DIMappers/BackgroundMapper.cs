using Core.Background.DTO;
using Core.Background.Query;
using Core.Background.QueryHandler;
using Infrastructure.CQRS;
using Microsoft.Extensions.DependencyInjection;
using System.Collections.Generic;

namespace TavernNoticeBoard.Utility.DIMappers
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
