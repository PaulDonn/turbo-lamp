using Core.PlayerCharacters.Command;
using Core.PlayerCharacters.Query;
using Infrastructure.Mediator;
using System;
using System.Collections.Generic;

namespace BusinessLogic.Classes
{
    public abstract class ClassBusinessLogic
    {
        protected IMediator _mediator { get; set; }

        public ClassBusinessLogic(IMediator mediator)
        {
            _mediator = mediator;
        }

        public virtual void Initialize(int pcId, string additionalOptions)
        {
            Level1(pcId, additionalOptions);
        }

        public virtual void ShortRest(int pcId)
        {

        }

        public virtual void LongRest(int pcId)
        {

        }

        public abstract List<KeyValuePair<string, int>> GetLevelUpRequirements(int pcId);

        public virtual void LevelUp(int pcId, int hpMaxIncrease, List<int> abilityScoreIncreases, List<int> spells, int? spellToRemove, string additionalOptions)
        {
            var level = _mediator.Request<GetPCLevelQuery, int>(new GetPCLevelQuery { PcId = pcId });

            bool proficiencyBonusIncrease = false;

            switch(level+1)
            {
                case 2:
                    Level2(pcId, additionalOptions);
                    break;
                case 3:
                    Level3(pcId, additionalOptions);
                    break;
                case 4:
                    Level4(pcId, additionalOptions);
                    break;
                case 5:
                    proficiencyBonusIncrease = true;
                    Level5(pcId, additionalOptions);
                    break;
                case 6:
                    Level6(pcId, additionalOptions);
                    break;
                case 7:
                    Level7(pcId, additionalOptions);
                    break;
                case 8:
                    Level8(pcId, additionalOptions);
                    break;
                case 9:
                    Level9(pcId, additionalOptions);
                    break;
                case 10:
                    proficiencyBonusIncrease = true;
                    Level10(pcId, additionalOptions);
                    break;
                case 11:
                    Level11(pcId, additionalOptions);
                    break;
                case 12:
                    Level12(pcId, additionalOptions);
                    break;
                case 13:
                    Level13(pcId, additionalOptions);
                    break;
                case 14:
                    proficiencyBonusIncrease = true;
                    Level14(pcId, additionalOptions);
                    break;
                case 15:
                    Level15(pcId, additionalOptions);
                    break;
                case 16:
                    Level16(pcId, additionalOptions);
                    break;
                case 17:
                    Level17(pcId, additionalOptions);
                    break;
                case 18:
                    proficiencyBonusIncrease = true;
                    Level18(pcId, additionalOptions);
                    break;
                case 19:
                    Level19(pcId, additionalOptions);
                    break;
                case 20:
                    Level20(pcId, additionalOptions);
                    break;
                default:
                    throw new InvalidOperationException($"Cannot perform a level up on a character of level {level}.");
            }

            AddSpells(pcId, spells, spellToRemove);

            _mediator.Send(new LevelUpPCCommand 
            { 
                PcId = pcId, 
                HitPointMaxIncrease = hpMaxIncrease,
                ProficiencyBonusIncrease = proficiencyBonusIncrease,
                AbilityIncrease = abilityScoreIncreases
            });
        }

        protected virtual void AddSpells(int pcId, List<int> spells, int? spellToRemove)
        {

        }

        protected virtual void Level1(int pcId, string additionalOptions)
        {

        }

        protected virtual void Level2(int pcId, string additionalOptions)
        {

        }

        protected virtual void Level3(int pcId, string additionalOptions)
        {

        }

        protected virtual void Level4(int pcId, string additionalOptions)
        {

        }

        protected virtual void Level5(int pcId, string additionalOptions)
        {

        }

        protected virtual void Level6(int pcId, string additionalOptions)
        {

        }

        protected virtual void Level7(int pcId, string additionalOptions)
        {

        }

        protected virtual void Level8(int pcId, string additionalOptions)
        {

        }

        protected virtual void Level9(int pcId, string additionalOptions)
        {

        }

        protected virtual void Level10(int pcId, string additionalOptions)
        {

        }

        protected virtual void Level11(int pcId, string additionalOptions)
        {

        }

        protected virtual void Level12(int pcId, string additionalOptions)
        {

        }

        protected virtual void Level13(int pcId, string additionalOptions)
        {

        }

        protected virtual void Level14(int pcId, string additionalOptions)
        {

        }

        protected virtual void Level15(int pcId, string additionalOptions)
        {

        }

        protected virtual void Level16(int pcId, string additionalOptions)
        {

        }

        protected virtual void Level17(int pcId, string additionalOptions)
        {

        }

        protected virtual void Level18(int pcId, string additionalOptions)
        {

        }

        protected virtual void Level19(int pcId, string additionalOptions)
        {

        }

        protected virtual void Level20(int pcId, string additionalOptions)
        {

        }

    }
}
