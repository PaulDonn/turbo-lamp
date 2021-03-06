﻿using Core.Abilities.DTO;
using Core.Alignments.DTO;
using Core.Backgrounds.DTO;
using Core.Classes.DTO;
using Core._Equipment.DTO;
using Core.Players.DTO;
using Core.Races.DTO;
using Core.Spells.DTO;
using Core._Treasure.DTO;
using System.Collections.Generic;
using Core.Features.DTO;

namespace Core.PlayerCharacters.DTO
{
    public class PlayerCharacterDTO
    {
        public PlayerCharacterDTO()
        {
            PlayerClass = new ClassDTO();
            Archetype = new ArchetypeDTO();
            Background = new BackgroundDTO();
            Race = new RaceDTO();
            Alignment = new AlignmentDTO();
            AbilityScores = new List<PcAbilityScoreDTO>();
            SavingThrows = new List<PcSavingThrowDTO>();
            Skills = new List<PcSkillDTO>();
            Player = new PlayerDTO();
            SpellLevels = new List<PcSpellLevelDTO>();
            Spells = new List<PcSpellDTO>();
            Traits = new List<TraitDTO>();
            Equipment = new List<PcEquipmentDTO>();
            Treasure = new List<PcTreasureDTO>();
            Features = new List<FeatureDTO>();
        }

        public int Id { get; set; }

        public string CharacterName { get; set; }

        public ClassDTO PlayerClass { get; set; }

        public ArchetypeDTO Archetype { get; set; }

        public int Level { get; set; }

        public BackgroundDTO Background { get; set; }

        //TODO: Add PlayerDTO
        //public PlayerDTO Player { get; set; }

        public RaceDTO Race { get; set; }

        public SubRaceDTO SubRace { get; set; }

        public AlignmentDTO Alignment { get; set; }

        public List<TraitDTO> Traits { get; set; }

        public int ExperiencePoints { get; set; }

        public List<PcAbilityScoreDTO> AbilityScores { get; set; }

        public List<PcSpellLevelDTO> SpellLevels { get; set; }

        public List<PcSavingThrowDTO> SavingThrows { get; set; }

        public List<PcSkillDTO> Skills { get; set; }

        public List<FeatureDTO> Features { get; set; }

        public PlayerDTO Player { get; set; }

        //TODO: Add CampaignDTO 
        //public CampaignDTO Campaign { get; set; }

        public int HitPointMaximum { get; set; }

        public int HitPointCurrent { get; set; }

        public int? HitPointTemporary { get; set; }

        public int HitDieMaximum { get; set; }

        public int HitDieCurrent { get; set; }

        public List<PcSpellDTO> Spells { get; set; }

        public string Age { get; set; }

        public string Height { get; set; }

        public string Weight { get; set; }

        public string Eyes { get; set; }

        public string Skin { get; set; }

        public string Hair { get; set; }

        public string Appearance { get; set; }

        public string Backstory { get; set; }

        public string AlliesAndOrganisations { get; set; }

        public int Copper { get; set; }

        public int Silver { get; set; }

        public int Electrum { get; set; }

        public int Gold { get; set; }

        public int Platinum { get; set; }

        public List<PcEquipmentDTO> Equipment { get; set; }

        public List<PcTreasureDTO> Treasure { get; set; }

    }
}
