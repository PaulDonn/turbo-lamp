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
using NoticeBoard.Models.Spells;
using NoticeBoard.Models.Equipment;
using NoticeBoard.Models.Treasure;
using NoticeBoard.Models.Features;

namespace NoticeBoard.Models.PlayerCharacters
{
    public partial class PlayerCharacterModel
    {
        public PlayerCharacterModel()
        {
            AbilityScores = new List<PcAbilityScoreModel>();
            Alignment = new AlignmentModel();
            Archetype = new ArchetypeModel();
            Background = new BackgroundModel();
            PlayerClass = new ClassModel();
            Equipment = new List<PcEquipmentModel>();
            Features = new List<FeatureModel>();
            Player = new PlayerModel();
            Race = new RaceModel();
            SavingThrows = new List<int>();
            PlayerSkills = new List<int>();
            Spells = new List<PcSpellModel>();
            SpellLevels = new List<PcSpellLevelModel>();
            Traits = new List<TraitModel>();
            Treasure = new List<PcTreasureModel>();
        }

        public int Id { get; set; }

        public int _ProficiencyBonus
        {
            get
            {
                if (Level >= 17) return 6;
                if (Level >= 13) return 5;
                if (Level >= 9) return 4;
                if (Level >= 5) return 3;
                if (Level >= 1) return 2;
                return 0;
            }
        }

        public string ProficiencyBonus
        {
            get
            {
                return (_ProficiencyBonus >= 0 ? "+" : null) + _ProficiencyBonus.ToString();
            }
        }

        public string SavingThrowBonus(int abilityId)
        {
            var bonus = AbilityScores.Single(n => n.AbilityId == abilityId).Bonus;
            var proficiencyBonus = SavingThrows.Contains(abilityId) ? _ProficiencyBonus : 0;
            var total = bonus + proficiencyBonus;
            return (total >= 0 ? "+" : null) + total.ToString();
        }

        public string SkillBonus(int skillId)
        {
            var skill = Skills.Single(n => n.Id == skillId);
            var bonus = AbilityScores.Single(n => n.AbilityId == skill.AbilityId).Bonus;
            var proficiencyBonus = PlayerSkills.Contains(skillId) ? _ProficiencyBonus : 0;
            var total = bonus + proficiencyBonus;
            return (total >= 0 ? "+" : null) + total.ToString();
        }

        public string WeaponAttackBonus(int equipmentId)
        {
            var weapon = Equipment.Single(n => n.Id == equipmentId).Equipment;
            var bonus = 0;
            var strBonus = AbilityScores.Single(n => n.AbilityId == 1).Bonus;
            var dexBonus = AbilityScores.Single(n => n.AbilityId == 2).Bonus;
            
            if(weapon.WeaponType.IsRanged)
            {
                bonus = dexBonus;
            }
            else
            {
                bonus = strBonus;
            }
            
            if (weapon.WeaponType.IsFinesse)
            {
                if (weapon.WeaponType.IsFinesse)
                {
                    bonus = Math.Max(strBonus, dexBonus);
                }
            }

            var proficiencyBonus = _ProficiencyBonus; //TODO: Get weapon proficiency from user
            var weaponBonus = weapon.Bonus + bonus + proficiencyBonus;

            if (weaponBonus >= 0)
            {
                return "+" + weaponBonus.ToString();
            }
            return weaponBonus.ToString();
        }

        public string WeaponDamageBonus(int equipmentId)
        {
            var weapon = Equipment.Single(n => n.Id == equipmentId).Equipment;
            var bonus = 0;
            var strBonus = AbilityScores.Single(n => n.AbilityId == 1).Bonus;
            var dexBonus = AbilityScores.Single(n => n.AbilityId == 2).Bonus;

            if (weapon.WeaponType.IsRanged)
            {
                bonus = dexBonus;
            }
            else
            {
                bonus = strBonus;
            }

            if (weapon.WeaponType.IsFinesse)
            {
                if (weapon.WeaponType.IsFinesse)
                {
                    bonus = Math.Max(strBonus, dexBonus);
                }
            }

            var weaponBonus = weapon.Bonus + bonus;

            if(weaponBonus < 0)
            {
                return weapon.WeaponType.NumberOfDice + "d" + weapon.WeaponType.DamageDie + weaponBonus.ToString();
            }
            else if (weaponBonus > 0)
            {
                return weapon.WeaponType.NumberOfDice + "d" + weapon.WeaponType.DamageDie + "+" + weaponBonus.ToString();
            }

            return weapon.WeaponType.NumberOfDice + "d" + weapon.WeaponType.DamageDie;
        }

        public string SpellSaveDC
        {
            get
            {
                var spellBonus = AbilityScores.First(n => n.AbilityId == PlayerClass.SpellcastingAbility.Id).Bonus;
                return (8 + _ProficiencyBonus + spellBonus).ToString();
            }
        }

        public string SpellAttackBonus
        {
            get
            {
                var spellBonus = AbilityScores.First(n => n.AbilityId == PlayerClass.SpellcastingAbility.Id).Bonus;
                var total = _ProficiencyBonus + spellBonus;
                return (total >= 0 ? "+" : null) + total.ToString();
            }
        }

        [Display(Name = "Name")]
        public string CharacterName { get; set; }

        [Display(Name = "Level")]
        public int Level { get; set; }

        public ClassModel PlayerClass { get; set; }

        public ArchetypeModel Archetype { get; set; }

        public BackgroundModel Background { get; set; }

        public PlayerModel Player { get; set; }

        public RaceModel Race { get; set; }

        public SubRaceModel SubRace { get; set; }

        public AlignmentModel Alignment { get; set; }

        public List<TraitModel> Traits { get; set; }

        [Display(Name = "Experience Points")]
        public int ExperiencePoints { get; set; }

        public List<Ability> Abilities { get; set; }

        public List<PcSpellLevelModel> SpellLevels { get; set; }

        public List<PcAbilityScoreModel> AbilityScores { get; set; }

        public List<int> SavingThrows { get; set; }

        public List<Skill> Skills { get; set; }

        public List<int> PlayerSkills { get; set; }

        public List<FeatureModel> Features { get; set; }

        public int ArmourClass { get; set; }

        public int? Initiative { get; set; }

        public int Speed { get; set; }

        public int HitPointMaximum { get; set; }

        public int HitPointCurrent { get; set; }

        public int? HitPointTemporary { get; set; }

        public int HitDieMaximum { get; set; }

        public int HitDieCurrent { get; set; }

        public List<PcSpellModel> Spells { get; set; }

        public List<PcEquipmentModel> Equipment { get; set; }

        public List<PcTreasureModel> Treasure { get; set; }

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

        public int TotalGold { get { return (int)Math.Floor(Convert.ToDecimal(Copper) / 100m)
                                          + (int)Math.Floor(Convert.ToDecimal(Silver) / 10m)
                                          + (int)Math.Floor(Convert.ToDecimal(Electrum) / 2m)
                                          + Gold
                                          + (Platinum * 10); } }
    }
}
