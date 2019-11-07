using Core._Treasure.DTO;
using Core._Treasure.Query;
using Infrastructure.CQRS;
using Microsoft.Extensions.DependencyInjection;

namespace NoticeBoard.Utility.DIMappers
{
    public class TreasureMapper
    {
        public static void Setup(IServiceCollection services)
        {
            //Command Handlers

            //Query Handlers
            services.AddTransient<IQueryHandler<GetTreasureQuery, TreasureDTO>, GetTreasureQueryHandler>();
            services.AddTransient<IQueryHandler<GetPcTreasureQuery, PcTreasureDTO>, GetPcTreasureQueryHandler>();
        }
    }
}
