using Microsoft.Extensions.DependencyInjection;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace TavernNoticeBoard.Utility.DIMappers
{
    public class MainMapper
    {
        public void Setup(IServiceCollection services)
        {
            PlayerCharacterMapper.Setup(services);
        }
    }
}
