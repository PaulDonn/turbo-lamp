using AutoMapper;
using Core.Alignment.DTO;
using Core.Background.DTO;
using Core.Class.DTO;
using Core.Language.DTO;
using Core.PlayerCharacters.DTO;
using Core.Races.DTO;
using DataModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace TavernNoticeBoard.Utility.AutoMapper
{
    public class MapperProfiles : Profile
    {
        public MapperProfiles()
        {
            //AbilityMaps();
            AlignmentMaps();
            BackgroundMaps();
            ClassMaps();
            //FeatureMaps();
            LanguageMaps();
            PlayerCharacterMaps();
            RaceMaps();
            //SkillMaps();
        }

        //TODO: AbilityMaps
        //private void AbilityMaps()
        //{
        //    CreateMap<Ability, AbilityDTO>();
        //}

        private void AlignmentMaps()
        {
            CreateMap<Alignment, AlignmentDTO>().ReverseMap();
        }

        private void BackgroundMaps()
        {
            CreateMap<Background, BackgroundDTO>().ReverseMap();
        }

        private void ClassMaps()
        {
            CreateMap<Class, ClassDTO>().ReverseMap();
            CreateMap<Archetype, ArchetypeDTO>().ReverseMap();
        }

        //TODO: FeatureMaps
        //private void FeatureMaps()
        //{
        //    CreateMap<Feature, FeatureDTO>();
        //}

        private void LanguageMaps()
        {
            CreateMap<Language, LanguageDTO>().ReverseMap();
        }

        private void PlayerCharacterMaps()
        {
            CreateMap<PlayerCharacter, PlayerCharacterDTO>()
                .ForMember(dest => dest.PlayerClass, opts => opts.MapFrom(src => src.Class))
                .ReverseMap();
        }

        private void RaceMaps()
        {
            CreateMap<Race, RaceDTO>()
                .ForMember(dest => dest.HasSubRace, opts => opts.MapFrom(src => src.SubRace.Any()))
                .ForMember(dest => dest.Languages, opts => opts.MapFrom(src => src.RaceLanguage.Select(n => n.LanguageId).ToList()))
                .ReverseMap();
            CreateMap<SubRace, SubRaceDTO>().ReverseMap();
        }

        //TODO: SkillMaps
        //private void SkillMaps()
        //{
        //    CreateMap<Skill, SkillDTO>().ReverseMap();
        //}
    }
}
