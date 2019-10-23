using DataModel;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;
using NoticeBoard.Models.Abilities;
using NoticeBoard.Models.Alignments;
using NoticeBoard.Models.Backgrounds;
using NoticeBoard.Models.Classes;
using NoticeBoard.Models.Races;
using NoticeBoard.Models.Player;

namespace NoticeBoard.Models.PlayerCharacters
{
    public partial class PlayerCharacterModel
    {
        public PlayerCharacterModel()
        {
            PlayerClass = new ClassModel();
            Archetype = new ArchetypeModel();
            Background = new BackgroundModel();
            Race = new RaceModel();
            Player = new PlayerModel();
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

        public ClassModel PlayerClass { get; set; }

        public ArchetypeModel Archetype { get; set; }

        public BackgroundModel Background { get; set; }

        public PlayerModel Player { get; set; }

        public RaceModel Race { get; set; }

        public SubRaceModel SubRace { get; set; }

        public AlignmentModel Alignment { get; set; }

        [Display(Name = "Experience Points")]
        public int ExperiencePoints { get; set; }

        public List<Ability> Abilities { get; set; }

        public List<PcAbilityScoreModel> AbilityScores { get; set; }

        public List<int> SavingThrows { get; set; }

        public List<Skill> Skills { get; set; }

        public List<int> PlayerSkills { get; set; }

        public int ArmourClass { get; set; }

        public int? Initiative { get; set; }

        public int Speed { get; set; }

        public int HitPointMaximum { get; set; }

        public int HitPointCurrent { get; set; }

        public int? HitPointTemporary { get; set; }

        public int HitDieMaximum { get; set; }

        public int HitDieCurrent { get; set; }


    }
}
