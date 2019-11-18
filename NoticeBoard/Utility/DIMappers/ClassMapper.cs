using Core.Classes.DTO;
using Core.Classes.Query;
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
            services.AddTransient<IQueryHandler<GetClassOptionsQuery, IEnumerable<ClassDTO>>, GetClassOptionsQueryHandler>();

            services.AddTransient<IQueryHandler<GetArchetypeQuery, ArchetypeDTO>, GetArchetypeQueryHandler>();
            services.AddTransient<IQueryHandler<GetArchetypesQuery, IEnumerable<ArchetypeDTO>>, GetArchetypesQueryHandler>();
            services.AddTransient<IQueryHandler<GetArchetypeOptionsQuery, IEnumerable<ArchetypeDTO>>, GetArchetypeOptionsQueryHandler>();
        }
    }
}
