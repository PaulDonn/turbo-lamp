using Core._Equipment.DTO;
using Core._Equipment.Query;
using Infrastructure.CQRS;
using Microsoft.Extensions.DependencyInjection;
using System.Collections.Generic;

namespace NoticeBoard.Utility.DIMappers
{
    public class EquipmentMapper
    {
        public static void Setup(IServiceCollection services)
        {
            //Command Handlers

            //Query Handlers
            services.AddTransient<IQueryHandler<GetEquipmentQuery, EquipmentDTO>, GetEquipmentQueryHandler>();
            services.AddTransient<IQueryHandler<GetPcEquipmentQuery, PcEquipmentDTO>, GetPcEquipmentQueryHandler>();
        }
    }
}
