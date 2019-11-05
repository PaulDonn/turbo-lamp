using Core.Ability.DTO;
using Core.Alignment.DTO;
using Core.Background.DTO;
using Core.Class.DTO;
using Core.Equipment.DTO;
using Core.Player.DTO;
using Core.Races.DTO;
using Core.Spell.DTO;
using Core.Treasure.DTO;
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
            Spells = new List<PcSpellDTO>();
            Traits = new List<TraitDTO>();
            Equipment = new List<PcEquipmentDTO>();
            Treasure = new List<PcTreasureDTO>();
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

        public List<TraitDTO> Traits { get; set; }

        public int ExperiencePoints { get; set; }

        public List<PcAbilityScoreDTO> AbilityScores { get; set; }

        public List<PcSavingThrowDTO> SavingThrows { get; set; }

        public List<PcSkillDTO> Skills { get; set; }

        public PlayerDTO Player { get; set; }

        //TODO: Add PartyDTO 
        //public PartyDTO Party { get; set; }

        public int HitPointMaximum { get; set; }

        public int HitPointCurrent { get; set; }

        public int? HitPointTemporary { get; set; }

        public int HitDieMaximum { get; set; }

        public int HitDieCurrent { get; set; }

        public List<PcSpellDTO> Spells { get; set; }

        public int Level1SlotsMaximum { get; set; }

        public int Level1SlotsCurrent { get; set; }

        public int Level2SlotsMaximum { get; set; }

        public int Level2SlotsCurrent { get; set; }

        public int Level3SlotsMaximum { get; set; }

        public int Level3SlotsCurrent { get; set; }

        public int Level4SlotsMaximum { get; set; }

        public int Level4SlotsCurrent { get; set; }

        public int Level5SlotsMaximum { get; set; }

        public int Level5SlotsCurrent { get; set; }

        public int Level6SlotsMaximum { get; set; }

        public int Level6SlotsCurrent { get; set; }

        public int Level7SlotsMaximum { get; set; }

        public int Level7SlotsCurrent { get; set; }

        public int Level8SlotsMaximum { get; set; }

        public int Level8SlotsCurrent { get; set; }

        public int Level9SlotsMaximum { get; set; }

        public int Level9SlotsCurrent { get; set; }

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
