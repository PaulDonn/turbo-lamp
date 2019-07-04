using Microsoft.Extensions.DependencyInjection;

namespace TavernNoticeBoard.Utility.DIMappers
{
    public class MainMapper
    {
        public void Setup(IServiceCollection services)
        {
            PlayerCharacterMapper.Setup(services);
            RaceMapper.Setup(services);
            ClassMapper.Setup(services);
            BackgroundMapper.Setup(services);
            AlignmentMapper.Setup(services);
        }
    }
}
