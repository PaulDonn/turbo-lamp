using Core.Alignment.DTO;
using Core.Alignment.Query;
using Core.Alignment.QueryHandler;
using Infrastructure.CQRS;
using Microsoft.Extensions.DependencyInjection;
using System.Collections.Generic;

namespace TavernNoticeBoard.Utility.DIMappers
{
    public class AlignmentMapper
    {
        public static void Setup(IServiceCollection services)
        {
            //Command Handlers

            //Query Handlers
            services.AddTransient<IQueryHandler<GetAlignmentQuery, AlignmentDTO>, GetAlignmentQueryHandler>();
            services.AddTransient<IQueryHandler<GetAlignmentsQuery, IEnumerable<AlignmentDTO>>, GetAlignmentsQueryHandler>();
        }
    }
}
