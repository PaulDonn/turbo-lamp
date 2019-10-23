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
using NoticeBoard.Models.Abilities;
using NoticeBoard.Models.Alignments;
using NoticeBoard.Models.Backgrounds;
using NoticeBoard.Models.Classes;
using NoticeBoard.Models.PlayerCharacters;
using NoticeBoard.Models.Races;
using Core.Player.DTO;
using NoticeBoard.Models.Player;
using Core.Spell.DTO;
using NoticeBoard.Models.Spells;

namespace NoticeBoard.Utility.AutoMapper
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
            PlayerMaps();
            PlayerCharacterMaps();
            RaceMaps();
            //SkillMaps();
            SpellMaps();
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
            CreateMap<Class, ClassDTO>()
                .ForMember(dest => dest.SpellcastingAbility, opts => opts.MapFrom(src => src.SpellcastingAbility))
                .ReverseMap();
            CreateMap<ClassDTO, ClassModel>()
                .ForMember(dest => dest.SpellcastingAbility, opts => opts.MapFrom(src => src.SpellcastingAbility))
                .ReverseMap();
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

        private void PlayerMaps()
        {
            CreateMap<Player, PlayerDTO>().ReverseMap();
            CreateMap<PlayerDTO, PlayerModel>().ReverseMap();
        }

        private void PlayerCharacterMaps()
        {
            CreateMap<PlayerCharacter, PlayerCharacterDTO>()
                .ForMember(dest => dest.PlayerClass, opts => opts.MapFrom(src => src.Class))
                .ForMember(dest => dest.AbilityScores, opts => opts.MapFrom(src => src.PcAbilityScore))
                .ForMember(dest => dest.SavingThrows, opts => opts.MapFrom(src => src.PcSavingThrow))
                .ForMember(dest => dest.Skills, opts => opts.MapFrom(src => src.PcSkill))
                .ForMember(dest => dest.Spells, opts => opts.MapFrom(src => src.PcSpell.ToList()))
                .ReverseMap();
            CreateMap<PlayerCharacterDTO, PlayerCharacterModel>()
                .ForMember(dest => dest.SavingThrows, opts => opts.MapFrom(src => src.SavingThrows.Select(n => n.AbilityId)))
                .ForMember(dest => dest.PlayerSkills, opts => opts.MapFrom(src => src.Skills.Select(n => n.SkillId)))
                .ForMember(dest => dest.SpellSlots, opts => opts.MapFrom(src => new Dictionary<int, Tuple<int,int>>()
                    {
                        { 1, new Tuple<int,int>(src.Level1SlotsMaximum, src.Level1SlotsCurrent) },
                        { 2, new Tuple<int,int>(src.Level2SlotsMaximum, src.Level2SlotsCurrent) },
                        { 3, new Tuple<int,int>(src.Level3SlotsMaximum, src.Level3SlotsCurrent) },
                        { 4, new Tuple<int,int>(src.Level4SlotsMaximum, src.Level4SlotsCurrent) },
                        { 5, new Tuple<int,int>(src.Level5SlotsMaximum, src.Level5SlotsCurrent) },
                        { 6, new Tuple<int,int>(src.Level6SlotsMaximum, src.Level6SlotsCurrent) },
                        { 7, new Tuple<int,int>(src.Level7SlotsMaximum, src.Level7SlotsCurrent) },
                        { 8, new Tuple<int,int>(src.Level8SlotsMaximum, src.Level8SlotsCurrent) },
                        { 9, new Tuple<int,int>(src.Level9SlotsMaximum, src.Level9SlotsCurrent) },
                    }))
                .ForMember(dest => dest.Abilities, opts => opts.Ignore())
                .ForMember(dest => dest.Skills, opts => opts.Ignore())
                .ForMember(dest => dest.Spells, opts => opts.MapFrom(src => src.Spells.OrderBy(n => n.Spell.Name)))
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

        private void SpellMaps()
        {
            CreateMap<Spell, SpellDTO>()
                .ForMember(dest => dest.SpellSchool, opts => opts.MapFrom(src => src.SpellSchool.Name)).ReverseMap();
            CreateMap<SpellDTO, SpellModel>().ReverseMap();

            CreateMap<PcSpell, PcSpellDTO>().ReverseMap();
            CreateMap<PcSpellDTO, PcSpellModel>().ReverseMap();
        }
    }
}
