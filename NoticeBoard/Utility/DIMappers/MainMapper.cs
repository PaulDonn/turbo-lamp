using Microsoft.Extensions.DependencyInjection;

namespace NoticeBoard.Utility.DIMappers
{
    public class MainMapper
    {
        public void Setup(IServiceCollection services)
        {
            AlignmentMapper.Setup(services);
            BackgroundMapper.Setup(services);
            ClassMapper.Setup(services);
            EquipmentMapper.Setup(services);
            LanguageMapper.Setup(services);
            CampaignMapper.Setup(services);
            PlayerCharacterMapper.Setup(services);
            RaceMapper.Setup(services);
            SkillMapper.Setup(services);
            SpellMapper.Setup(services);
            TreasureMapper.Setup(services);
        }
    }
}
