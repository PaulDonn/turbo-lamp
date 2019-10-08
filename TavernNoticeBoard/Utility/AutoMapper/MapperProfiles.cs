using AutoMapper;
using Core.Ability.DTO;
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
using TavernNoticeBoard.Models.Abilities;
using TavernNoticeBoard.Models.Alignments;
using TavernNoticeBoard.Models.Backgrounds;
using TavernNoticeBoard.Models.Classes;
using TavernNoticeBoard.Models.PlayerCharacters;
using TavernNoticeBoard.Models.Races;

namespace TavernNoticeBoard.Utility.AutoMapper
{
    public class MapperProfiles : Profile
    {
        public MapperProfiles()
        {

            AbilityMaps();
            AlignmentMaps();
            BackgroundMaps();
            ClassMaps();
            //FeatureMaps();
            LanguageMaps();
            PlayerCharacterMaps();
            RaceMaps();
            //SkillMaps();
        }

        private void AbilityMaps()
        {
            CreateMap<Ability, AbilityDTO>().ReverseMap();
            CreateMap<AbilityDTO, AbilityModel>().ReverseMap();
            CreateMap<PcAbilityScore, PcAbilityScoreDTO>().ReverseMap();
            CreateMap<PcAbilityScoreDTO, PcAbilityScoreModel>().ReverseMap();
            CreateMap<PcSavingThrow, PcSavingThrowDTO>().ReverseMap();
            CreateMap<Skill, SkillDTO>().ReverseMap();
            CreateMap<SkillDTO, SkillModel>().ReverseMap();
            CreateMap<PcSkill, PcSkillDTO>().ReverseMap();
            CreateMap<PcSkillDTO, PcSkillModel>().ReverseMap();
        }

        private void AlignmentMaps()
        {
            CreateMap<Alignment, AlignmentDTO>().ReverseMap();
            CreateMap<AlignmentDTO, AlignmentModel>().ReverseMap();
        }

        private void BackgroundMaps()
        {
            CreateMap<Background, BackgroundDTO>().ReverseMap();
            CreateMap<BackgroundDTO, BackgroundModel>().ReverseMap();
        }

        private void ClassMaps()
        {
            CreateMap<Class, ClassDTO>().ReverseMap();
            CreateMap<ClassDTO, ClassModel>().ReverseMap();
            CreateMap<Archetype, ArchetypeDTO>().ReverseMap();
            CreateMap<ArchetypeDTO, ArchetypeModel>().ReverseMap();
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
                .ForMember(dest => dest.AbilityScores, opts => opts.MapFrom(src => src.PcAbilityScore))
                .ForMember(dest => dest.SavingThrows, opts => opts.MapFrom(src => src.PcSavingThrow))
                .ForMember(dest => dest.Skills, opts => opts.MapFrom(src => src.PcSkill))
                .ReverseMap();
            CreateMap<PlayerCharacterDTO, PlayerCharacterModel>()
                .ForMember(dest => dest.SavingThrows, opts => opts.MapFrom(src => src.SavingThrows.Select(n => n.AbilityId)))
                .ForMember(dest => dest.PlayerSkills, opts => opts.MapFrom(src => src.Skills.Select(n => n.SkillId)))
                .ForMember(dest => dest.Abilities, opts => opts.Ignore())
                .ForMember(dest => dest.Skills, opts => opts.Ignore())
                .ReverseMap();
        }

        private void RaceMaps()
        {
            CreateMap<Race, RaceDTO>()
                .ForMember(dest => dest.HasSubRace, opts => opts.MapFrom(src => src.SubRace.Any()))
                .ForMember(dest => dest.Languages, opts => opts.MapFrom(src => src.RaceLanguage.Select(n => n.LanguageId).ToList()))
                .ReverseMap();
            CreateMap<RaceDTO, RaceModel>().ReverseMap();
            CreateMap<SubRace, SubRaceDTO>().ReverseMap();
            CreateMap<SubRaceDTO, SubRaceModel>().ReverseMap();
        }
    }
}
