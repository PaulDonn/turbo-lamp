using Core.Class.DTO;
using Core.Class.Query;
using Core.Class.QueryHandler;
using Infrastructure.CQRS;
using Microsoft.Extensions.DependencyInjection;
using System.Collections.Generic;

namespace NoticeBoard.Utility.DIMappers
{
    public class ClassMapper
    {
        public static void Setup(IServiceCollection services)
        {
            //Command Handlers

            //Query Handlers
            services.AddTransient<IQueryHandler<GetClassQuery, ClassDTO>, GetClassQueryHandler>();
            services.AddTransient<IQueryHandler<GetClassesQuery, IEnumerable<ClassDTO>>, GetClassesQueryHandler>();
            services.AddTransient<IQueryHandler<GetArchetypeQuery, ArchetypeDTO>, GetArchetypeQueryHandler>();
            services.AddTransient<IQueryHandler<GetArchetypesQuery, IEnumerable<ArchetypeDTO>>, GetArchetypesQueryHandler>();
        }
    }
}
