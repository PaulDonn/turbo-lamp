using DataModel;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;
using TavernNoticeBoard.Models.Abilities;
using TavernNoticeBoard.Models.Alignments;
using TavernNoticeBoard.Models.Backgrounds;
using TavernNoticeBoard.Models.Classes;
using TavernNoticeBoard.Models.Races;

namespace TavernNoticeBoard.Models.PlayerCharacters
{
    public partial class PlayerCharacterModel
    {
        public PlayerCharacterModel()
        {
            PlayerClass = new ClassModel();
            Archetype = new ArchetypeModel();
            Background = new BackgroundModel();
            Race = new RaceModel();
            Alignment = new AlignmentModel();
            AbilityScores = new List<PcAbilityScoreModel>();
            SavingThrows = new List<int>();
            PlayerSkills = new List<int>();
        }

        public int Id { get; set; }

        public int ProficiencyBonus { get
            {
                if (LevelId >= 17) return 6;
                if (LevelId >= 13) return 5;
                if (LevelId >= 9) return 4;
                if (LevelId >= 5) return 3;
                if (LevelId >= 1) return 2;
                return 0;
            }
        }

        [Display(Name = "Name")]
        public string CharacterName { get; set; }

        [Display(Name = "Level")]
        public int LevelId { get; set; }

        [Display(Name = "Experience Points")]
        public int ExperiencePoints { get; set; }

        public ClassModel PlayerClass { get; set; }

        public ArchetypeModel Archetype { get; set; }

        public BackgroundModel Background { get; set; }

        public RaceModel Race { get; set; }

        public SubRaceModel SubRace { get; set; }

        public AlignmentModel Alignment { get; set; }

        public List<PcAbilityScoreModel> AbilityScores { get; set; }

        public List<int> SavingThrows { get; set; }

        public List<int> PlayerSkills { get; set; }

        public List<Ability> Abilities { get; set; }

        public List<Skill> Skills { get; set; }
    }
}
