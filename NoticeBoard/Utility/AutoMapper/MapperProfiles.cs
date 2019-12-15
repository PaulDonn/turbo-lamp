using AutoMapper;
using Core._Equipment.DTO;
using Core._Party.DTO;
using Core._Treasure.DTO;
using Core.Abilities.DTO;
using Core.Alignments.DTO;
using Core.Backgrounds.DTO;
using Core.Classes.DTO;
using Core.Features.DTO;
using Core.Languages.DTO;
using Core.PlayerCharacters.DTO;
using Core.Players.DTO;
using Core.Races.DTO;
using Core.Skills.DTO;
using Core.Spells.DTO;
using DataModel;
using NoticeBoard.Models.Abilities;
using NoticeBoard.Models.Alignments;
using NoticeBoard.Models.Backgrounds;
using NoticeBoard.Models.Classes;
using NoticeBoard.Models.Equipment;
using NoticeBoard.Models.Features;
using NoticeBoard.Models.Languages;
using NoticeBoard.Models.Party;
using NoticeBoard.Models.Player;
using NoticeBoard.Models.PlayerCharacters;
using NoticeBoard.Models.Races;
using NoticeBoard.Models.Shared;
using NoticeBoard.Models.Spells;
using NoticeBoard.Models.Treasure;
using System;
using System.Collections.Generic;
using System.Linq;

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
            PartyMaps();
            PlayerMaps();
            PlayerCharacterMaps();
            RaceMaps();
            SkillMaps();
            SpellMaps();
            TreasureMaps();
        }

        private void AbilityMaps()
        {
            CreateMap<Ability, AbilityDTO>();

            CreateMap<AbilityDTO, AbilityModel>();

            CreateMap<PcAbilityScore, PcAbilityScoreDTO>();

            CreateMap<PcAbilityScoreDTO, PcAbilityScoreModel>();

            CreateMap<PcSavingThrow, PcSavingThrowDTO>();
        }

        private void AlignmentMaps()
        {
            CreateMap<Alignment, AlignmentDTO>();

            CreateMap<AlignmentDTO, AlignmentModel>();
        }

        private void BackgroundMaps()
        {
            CreateMap<Background, BackgroundDTO>();

            CreateMap<BackgroundDTO, BackgroundModel>();
        }

        private void ClassMaps()
        {
            CreateMap<Class, ClassDTO>()
                .ForMember(dest => dest.SpellcastingAbility, opts => opts.MapFrom(src => src.SpellcastingAbility))
                .ForMember(dest => dest.Features, opts => opts.MapFrom(src => src.ClassFeature));

            CreateMap<ClassDTO, ClassModel>()
                .ForMember(dest => dest.SpellcastingAbility, opts => opts.MapFrom(src => src.SpellcastingAbility));

            CreateMap<Archetype, ArchetypeDTO>()
                .ForMember(dest => dest.Features, opts => opts.MapFrom(src => src.ClassFeature));

            CreateMap<ArchetypeDTO, ArchetypeModel>();
        }

        private void EquipmentMaps()
        {
            CreateMap<WeaponType, WeaponTypeDTO>()
                .ForMember(dest => dest.DamageType, opts => opts.MapFrom(src => src.DamageType.Name));

            CreateMap<WeaponTypeDTO, WeaponTypeModel>();

            CreateMap<ArmorType, ArmorTypeDTO>();

            CreateMap<ArmorTypeDTO, ArmorTypeModel>();

            CreateMap<Equipment, EquipmentDTO>()
                .ForMember(dest => dest.EquipmentType, opts => opts.MapFrom(src => src.EquipmentType.Name));

            CreateMap<EquipmentDTO, EquipmentModel>();

            CreateMap<PcEquipment, PcEquipmentDTO>();

            CreateMap<PcEquipmentDTO, PcEquipmentModel>()
                .ForMember(dest => dest.Equipment, opts => opts.MapFrom(src => src.Equipment));

        }

        private void FeatureMaps()
        {
            CreateMap<Feature, FeatureDTO>();

            CreateMap<RaceFeature, FeatureDTO>()
                .ForMember(dest => dest.Name, opts => opts.MapFrom(src => src.Feature.Name))
                .ForMember(dest => dest.Code, opts => opts.MapFrom(src => src.Feature.Code))
                .ForMember(dest => dest.QuantityMaximum, opts => opts.MapFrom(src => src.Feature.Quantity))
                .ForMember(dest => dest.Description, opts => opts.MapFrom(src => src.Description ?? src.Feature.Description))
                .ForMember(dest => dest.IsRaceFeature, opts => opts.MapFrom(src => true));

            CreateMap<ClassFeature, FeatureDTO>()
                .ForMember(dest => dest.Name, opts => opts.MapFrom(src => src.Feature.Name))
                .ForMember(dest => dest.Code, opts => opts.MapFrom(src => src.Feature.Code))
                .ForMember(dest => dest.QuantityMaximum, opts => opts.MapFrom(src => src.Feature.Quantity))
                .ForMember(dest => dest.Description, opts => opts.MapFrom(src => src.Description ?? src.Feature.Description))
                .ForMember(dest => dest.IsClassFeature, opts => opts.MapFrom(src => true));

            CreateMap<FeatureDTO, FeatureModel>();
        }

        private List<FeatureDTO> PcFeatureResolver(ICollection<PcFeature> pcFeatures)
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
            CreateMap<Language, LanguageDTO>();
            CreateMap<LanguageDTO, LanguageModel>()
                .ForMember(dest => dest.IsSelected, opts => opts.MapFrom(src => src.IsMandatory));
            CreateMap<PlayerLanguagesDTO, CheckboxSelectModel<LanguageModel>>()
                .ForMember(dest => dest.Options, opts => opts.MapFrom(src => src.Languages))
                .ForMember(dest => dest.NumberOfSelections, opts => opts.MapFrom(src => src.NumberOfLanguages));
        }

        private void PartyMaps()
        {
            CreateMap<Party, PartyDTO>()
                .ForMember(dest => dest.Sources, opts => opts.MapFrom(src => src.PartySource.Select(n => n.Source).ToList()))
                .ForMember(dest => dest.Players, opts => opts.MapFrom(src => src.PlayerParty.Select(n => n.Player).ToList()))
                .ForMember(dest => dest.PlayerCharacters, opts => opts.MapFrom(src => src.PlayerCharacter.ToList()))
                .ForMember(dest => dest.CharacterGenerationMethod, opts => opts.MapFrom(src => src.CharacterGenerationMethod));

            CreateMap<PartyDTO, PartyModel>();

            CreateMap<Source, SourceDTO>();

            CreateMap<SourceDTO, SourceModel>();
               // .ForMember(dest => dest.IsSelected, opts => opts.MapFrom(src => true));

            CreateMap<CharacterGenerationMethod, CharacterGenerationMethodDTO>();

            CreateMap<CharacterGenerationMethodDTO, CharacterGenerationMethodModel>();
        }

        private void PlayerMaps()
        {
            CreateMap<Player, PlayerDTO>();

            CreateMap<PlayerDTO, PlayerModel>();
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
                .ForMember(dest => dest.Features, opts => opts.MapFrom(src => PcFeatureResolver(src.PcFeature)));

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
                .ForMember(dest => dest.Spells, opts => opts.MapFrom(src => src.Spells.OrderBy(n => n.Spell.Name)));

            CreateMap<TraitDTO, TraitModel>();
        }

        private void RaceMaps()
        {
            CreateMap<Race, RaceDTO>()
                .ForMember(dest => dest.HasSubRace, opts => opts.MapFrom(src => src.SubRace.Any()))
                .ForMember(dest => dest.Languages, opts => opts.MapFrom(src => src.RaceLanguage.Select(n => n.LanguageId).ToList()));

            CreateMap<RaceDTO, RaceModel>();

            CreateMap<SubRace, SubRaceDTO>();

            CreateMap<SubRaceDTO, SubRaceModel>();
        }

        private void SkillMaps()
        {
            CreateMap<Skill, SkillDTO>()
                .ForMember(dest => dest.AbilityName, opts => {
                    opts.Condition(src => src.Ability != null);
                    opts.MapFrom(src => src.Ability.Name);
                });

            CreateMap<SkillDTO, SkillModel>();

            CreateMap<PcSkill, PcSkillDTO>();

            CreateMap<PcSkillDTO, PcSkillModel>();

            CreateMap<PlayerSkillsDTO, CheckboxSelectModel<SkillModel>>()
                .ForMember(dest => dest.Options, opts => opts.MapFrom(src => src.Skills))
                .ForMember(dest => dest.NumberOfSelections, opts => opts.MapFrom(src => src.NumberOfSkills));
        }

        private void SpellMaps()
        {
            CreateMap<Spell, SpellDTO>()
                .ForMember(dest => dest.SpellSchool, opts => opts.MapFrom(src => src.SpellSchool.Name));

            CreateMap<SpellDTO, SpellModel>();

            CreateMap<PcSpell, PcSpellDTO>();

            CreateMap<PcSpellDTO, PcSpellModel>();
        }

        private void TreasureMaps()
        {
            CreateMap<Treasure, TreasureDTO>();

            CreateMap<TreasureDTO, TreasureModel>();

            CreateMap<PcTreasure, PcTreasureDTO>();

            CreateMap<PcTreasureDTO, PcTreasureModel>();
        }
    }
}
