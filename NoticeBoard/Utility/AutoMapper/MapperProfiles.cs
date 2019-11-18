using AutoMapper;
using Core.Abilities.DTO;
using Core.Alignments.DTO;
using Core.Backgrounds.DTO;
using Core.Classes.DTO;
using Core.Languages.DTO;
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
using Core.Players.DTO;
using NoticeBoard.Models.Player;
using Core.Spells.DTO;
using NoticeBoard.Models.Spells;
using Core._Equipment.DTO;
using NoticeBoard.Models.Equipment;
using Core._Treasure.DTO;
using NoticeBoard.Models.Treasure;
using Core.Features.DTO;
using NoticeBoard.Models.Features;

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
            EquipmentMaps();
            FeatureMaps();
            LanguageMaps();
            PlayerMaps();
            PlayerCharacterMaps();
            RaceMaps();
            SpellMaps();
            TreasureMaps();
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

        private void EquipmentMaps()
        {
            CreateMap<WeaponType, WeaponTypeDTO>()
                .ForMember(dest => dest.DamageType, opts => opts.MapFrom(src => src.DamageType.Name))
                .ReverseMap();
            CreateMap<WeaponTypeDTO, WeaponTypeModel>().ReverseMap();
            CreateMap<ArmorType, ArmorTypeDTO>().ReverseMap();
            CreateMap<ArmorTypeDTO, ArmorTypeModel>().ReverseMap();
            CreateMap<Equipment, EquipmentDTO>()
                .ForMember(dest => dest.EquipmentType, opts => opts.MapFrom(src => src.EquipmentType.Name))
                .ReverseMap();
            CreateMap<EquipmentDTO, EquipmentModel>().ReverseMap();
            CreateMap<PcEquipment, PcEquipmentDTO>().ReverseMap();
            CreateMap<PcEquipmentDTO, PcEquipmentModel>()
                .ForMember(dest => dest.Equipment, opts => opts.MapFrom(src => src.Equipment))
                .ReverseMap();

        }

        private void FeatureMaps()
        {
            CreateMap<Feature, FeatureDTO>();
            CreateMap<RaceFeature, FeatureDTO>()
                .ForMember(dest => dest.Name, opts => opts.MapFrom(src => src.Feature.Name))
                .ForMember(dest => dest.Description, opts => opts.MapFrom(src => src.Description ?? src.Feature.Description));
            CreateMap<ClassFeature, FeatureDTO>()
                .ForMember(dest => dest.Name, opts => opts.MapFrom(src => src.Feature.Name))
                .ForMember(dest => dest.Description, opts => opts.MapFrom(src => src.Description ?? src.Feature.Description));
            CreateMap<FeatureDTO, FeatureModel>();
        }

        private List<FeatureDTO> FeatureResolver(ICollection<PcFeature> pcFeatures)
        {
            var features = new List<FeatureDTO>();

            foreach (var pcFeature in pcFeatures)
            {
                if (pcFeature.FeatureId.HasValue)
                {
                    features.Add(new FeatureDTO
                    {
                        Name = pcFeature.Feature.Name,
                        Code = pcFeature.Feature.Code,
                        Description = pcFeature.Feature.Description,
                        QuantityMaximum = pcFeature.QuantityMaximum,
                        QuantityCurrent = pcFeature.QuantityCurrent
                    });
                }
                else if (pcFeature.RaceFeatureId.HasValue)
                {
                    features.Add(new FeatureDTO
                    {
                        Name = pcFeature.RaceFeature.Feature.Name,
                        Code = pcFeature.RaceFeature.Feature.Code,
                        Description = pcFeature.RaceFeature.Description ?? pcFeature.RaceFeature.Feature.Description,
                        Level = pcFeature.RaceFeature.Level,
                        Hidden = pcFeature.RaceFeature.Hidden,
                        IsRaceFeature = true,
                        QuantityMaximum = pcFeature.QuantityMaximum,
                        QuantityCurrent = pcFeature.QuantityCurrent
                    });
                }
                else if (pcFeature.ClassFeatureId.HasValue)
                {
                    features.Add(new FeatureDTO
                    {
                        Name = pcFeature.ClassFeature.Feature.Name,
                        Code = pcFeature.ClassFeature.Feature.Code,
                        Description = pcFeature.ClassFeature.Description ?? pcFeature.ClassFeature.Feature.Description,
                        Level = pcFeature.ClassFeature.Level,
                        Hidden = pcFeature.ClassFeature.Hidden,
                        IsClassFeature = true,
                        QuantityMaximum = pcFeature.QuantityMaximum,
                        QuantityCurrent = pcFeature.QuantityCurrent
                    });
                }
            }

            return features;
        }

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
                .ForMember(dest => dest.Traits, opts => opts.MapFrom(src => src.PcTrait.Select(n => new TraitDTO 
                    { 
                        TraitTypeId = n.TraitTypeId,
                        TraitType = n.TraitType.Name,
                        Description = n.Description
                    })))
                .ForMember(dest => dest.Equipment, opts => opts.MapFrom(src => src.PcEquipment))
                .ForMember(dest => dest.Treasure, opts => opts.MapFrom(src => src.PcTreasure))
                .ForMember(dest => dest.Features, opts => opts.MapFrom(src => FeatureResolver(src.PcFeature)))
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
                .ForMember(dest => dest.Equipment, opts => opts.MapFrom(src => src.Equipment))
                .ForMember(dest => dest.Features, opts => opts.MapFrom(src => src.Features))
                .ForMember(dest => dest.Treasure, opts => opts.MapFrom(src => src.Treasure))
                .ForMember(dest => dest.Abilities, opts => opts.Ignore())
                .ForMember(dest => dest.Skills, opts => opts.Ignore())
                .ForMember(dest => dest.Spells, opts => opts.MapFrom(src => src.Spells.OrderBy(n => n.Spell.Name)))
                .ReverseMap();

            CreateMap<TraitDTO, TraitModel>().ReverseMap();
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

        private void TreasureMaps()
        {
            CreateMap<Treasure, TreasureDTO>().ReverseMap();
            CreateMap<TreasureDTO, TreasureModel>().ReverseMap();

            CreateMap<PcTreasure, PcTreasureDTO>().ReverseMap();
            CreateMap<PcTreasureDTO, PcTreasureModel>().ReverseMap();
        }
    }
}
