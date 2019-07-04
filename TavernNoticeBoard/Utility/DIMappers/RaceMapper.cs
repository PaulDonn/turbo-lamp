using Core.Race.DTO;
using Core.Race.Query;
using Core.Race.QueryHandler;
using Infrastructure.CQRS;
using Microsoft.Extensions.DependencyInjection;
using System.Collections.Generic;

namespace TavernNoticeBoard.Utility.DIMappers
{
    public class RaceMapper
    {
        public static void Setup(IServiceCollection services)
        {
            //Command Handlers

            //Query Handlers
            services.AddTransient<IQueryHandler<GetRaceQuery, RaceDTO>, GetRaceQueryHandler>();
            services.AddTransient<IQueryHandler<GetRacesQuery, IEnumerable<RaceDTO>>, GetRacesQueryHandler>();
            services.AddTransient<IQueryHandler<GetSubRaceQuery, SubRaceDTO>, GetSubRaceQueryHandler>();
            services.AddTransient<IQueryHandler<GetSubRacesQuery, IEnumerable<SubRaceDTO>>, GetSubRacesQueryHandler>();
        }
    }
}
