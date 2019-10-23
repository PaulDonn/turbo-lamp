﻿using Core.Ability.DTO;
using Core.Alignment.DTO;
using Core.Background.DTO;
using Core.Class.DTO;
using Core.Player.DTO;
using Core.Races.DTO;
using System.Collections.Generic;

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
        }

        public int Id { get; set; }

        public string CharacterName { get; set; }

        public ClassDTO PlayerClass { get; set; }

        public ArchetypeDTO Archetype { get; set; }

        public int LevelId { get; set; }

        public BackgroundDTO Background { get; set; }

        //TODO: Add PlayerDTO
        //public PlayerDTO Player { get; set; }

        public RaceDTO Race { get; set; }

        public SubRaceDTO SubRace { get; set; }

        public AlignmentDTO Alignment { get; set; }

        public int ExperiencePoints { get; set; }

        public List<PcAbilityScoreDTO> AbilityScores { get; set; }

        public List<PcSavingThrowDTO> SavingThrows { get; set; }

        public List<PcSkillDTO> Skills { get; set; }

        public PlayerDTO Player { get; set; }

        //TODO: Add PartyDTO 
        //public PartyDTO Party { get; set; }
    }
}
