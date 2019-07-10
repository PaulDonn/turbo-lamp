using Microsoft.Extensions.DependencyInjection;

namespace TavernNoticeBoard.Utility.DIMappers
{
    public class MainMapper
    {
        public void Setup(IServiceCollection services)
        {
            AlignmentMapper.Setup(services);
            BackgroundMapper.Setup(services);
            ClassMapper.Setup(services);
            LanguageMapper.Setup(services);
            PlayerCharacterMapper.Setup(services);
            RaceMapper.Setup(services);
        }
    }
}
