using Core.PlayerCharacters.Command;
using Core.PlayerCharacters.Query;
using Infrastructure.Mediator;
using System;
using System.Collections.Generic;
using System.Text;

namespace BusinessLogic.Classes
{
    public class WizardBusinessLogic : ClassBusinessLogic
    {
        public WizardBusinessLogic(IMediator mediator) : base(mediator)
        {
        }

        public override void ShortRest(int pcId)
        {
            base.ShortRest(pcId);
        }

        public override void LongRest(int pcId)
        {
            base.LongRest(pcId);
        }

        public override List<KeyValuePair<string, int>>GetLevelUpRequirements(int pcId)
        {
            var level = _mediator.Request<GetPCLevelQuery, int>(new GetPCLevelQuery { PcId = pcId });

            switch (level+1)
            {
                case 2:
                    return new List<KeyValuePair<string, int>>
                    {
                        new KeyValuePair<string, int>("Archetype",0),
                        new KeyValuePair<string, int>("Spell",2),
                        new KeyValuePair<string, int>("MaxSpellLevel",1)
                    };
                case 3:
                    return new List<KeyValuePair<string, int>>
                    {
                        new KeyValuePair<string, int>("Spell",2),
                        new KeyValuePair<string, int>("MaxSpellLevel",2)
                    };
                case 4:
                    return new List<KeyValuePair<string, int>>
                    {
                        new KeyValuePair<string, int>("Spell",2),
                        new KeyValuePair<string, int>("MaxSpellLevel",2),
                        new KeyValuePair<string, int>("AbilityScoreImprovement",2)
                    };
                case 5:
                    return new List<KeyValuePair<string, int>>
                    {
                        new KeyValuePair<string, int>("Spell",2),
                        new KeyValuePair<string, int>("MaxSpellLevel",3)
                    };
                case 6:
                    return new List<KeyValuePair<string, int>>
                    {
                        new KeyValuePair<string, int>("Spell",2),
                        new KeyValuePair<string, int>("MaxSpellLevel",3)
                    };
                case 7:
                    return new List<KeyValuePair<string, int>>
                    {
                        new KeyValuePair<string, int>("Spell",2),
                        new KeyValuePair<string, int>("MaxSpellLevel",4)
                    };
                case 8:
                    return new List<KeyValuePair<string, int>>
                    {
                        new KeyValuePair<string, int>("Spell",2),
                        new KeyValuePair<string, int>("MaxSpellLevel",4),
                        new KeyValuePair<string, int>("AbilityScoreImprovement",2)
                    };
                case 9:
                    return new List<KeyValuePair<string, int>>
                    {
                        new KeyValuePair<string, int>("Spell",2),
                        new KeyValuePair<string, int>("MaxSpellLevel",5)
                    };
                case 10:
                    return new List<KeyValuePair<string, int>>
                    {
                        new KeyValuePair<string, int>("Spell",2),
                        new KeyValuePair<string, int>("MaxSpellLevel",5)
                    };
                case 11:
                    return new List<KeyValuePair<string, int>>
                    {
                        new KeyValuePair<string, int>("Spell",2),
                        new KeyValuePair<string, int>("MaxSpellLevel",6)
                    };
                case 12:
                    return new List<KeyValuePair<string, int>>
                    {
                        new KeyValuePair<string, int>("Spell",2),
                        new KeyValuePair<string, int>("MaxSpellLevel",6),
                        new KeyValuePair<string, int>("AbilityScoreImprovement",2)
                    };
                case 13:
                    return new List<KeyValuePair<string, int>>
                    {
                        new KeyValuePair<string, int>("Spell",2),
                        new KeyValuePair<string, int>("MaxSpellLevel",7)
                    };
                case 14:
                    return new List<KeyValuePair<string, int>>
                    {
                        new KeyValuePair<string, int>("Spell",2),
                        new KeyValuePair<string, int>("MaxSpellLevel",7)
                    };
                case 15:
                    return new List<KeyValuePair<string, int>>
                    {
                        new KeyValuePair<string, int>("Spell",2),
                        new KeyValuePair<string, int>("MaxSpellLevel",8)
                    };
                case 16:
                    return new List<KeyValuePair<string, int>>
                    {
                        new KeyValuePair<string, int>("Spell",2),
                        new KeyValuePair<string, int>("MaxSpellLevel",8),
                        new KeyValuePair<string, int>("AbilityScoreImprovement",2)
                    };
                case 17:
                    return new List<KeyValuePair<string, int>>
                    {
                        new KeyValuePair<string, int>("Spell",2),
                        new KeyValuePair<string, int>("MaxSpellLevel",9)
                    };
                case 18:
                    return new List<KeyValuePair<string, int>>
                    {
                        new KeyValuePair<string, int>("Spell",2),
                        new KeyValuePair<string, int>("MaxSpellLevel",9)
                    };
                case 19:
                    return new List<KeyValuePair<string, int>>
                    {
                        new KeyValuePair<string, int>("Spell",2),
                        new KeyValuePair<string, int>("MaxSpellLevel",9),
                        new KeyValuePair<string, int>("AbilityScoreImprovement",2)
                    };
                case 20:
                    return new List<KeyValuePair<string, int>>
                    {
                        new KeyValuePair<string, int>("Spell",2),
                        new KeyValuePair<string, int>("MaxSpellLevel",9)
                    };
                default:
                    throw new InvalidOperationException($"Cannot perform a level up on a character of level {level}.");
            }
        }

        protected override void AddSpells(int pcId, List<int> spells, int? spellToRemove)
        {
        }

        protected override void Level1(int pcId, string additionalOptions)
        {
            _mediator.Send(new SetPCSpellSlotsCommand
            {
                PcId = pcId,
                SpellSlots = new List<KeyValuePair<int, int>>
                {
                    new KeyValuePair<int, int>(1,2)
                }
            });
        }

        protected override void Level2(int pcId, string additionalOptions)
        {
            if (!Int32.TryParse(additionalOptions, out int archetypeId))
            {
                throw new InvalidOperationException($"Invalid Archetype Selected {additionalOptions}");
            }

            _mediator.Send(new SetPCSpellSlotsCommand
            {
                PcId = pcId,
                SpellSlots = new List<KeyValuePair<int, int>>
                {
                    new KeyValuePair<int, int>(1,3)
                }
            });

            _mediator.Send(new SetPCArchetypeCommand
            {
                PcId = pcId,
                ArchetypeId = archetypeId
            });
        }

        protected override void Level3(int pcId, string additionalOptions)
        {
            _mediator.Send(new SetPCSpellSlotsCommand
            {
                PcId = pcId,
                SpellSlots = new List<KeyValuePair<int, int>>
                {
                    new KeyValuePair<int, int>(1,4),
                    new KeyValuePair<int, int>(2,2)
                }
            });
        }

        protected override void Level4(int pcId, string additionalOptions)
        {
            _mediator.Send(new SetPCSpellSlotsCommand
            {
                PcId = pcId,
                SpellSlots = new List<KeyValuePair<int, int>>
                {
                    new KeyValuePair<int, int>(2,3)
                }
            });
        }

        protected override void Level5(int pcId, string additionalOptions)
        {
            _mediator.Send(new SetPCSpellSlotsCommand
            {
                PcId = pcId,
                SpellSlots = new List<KeyValuePair<int, int>>
                {
                    new KeyValuePair<int, int>(3,2)
                }
            });
        }

        protected override void Level6(int pcId, string additionalOptions)
        {
            _mediator.Send(new SetPCSpellSlotsCommand
            {
                PcId = pcId,
                SpellSlots = new List<KeyValuePair<int, int>>
                {
                    new KeyValuePair<int, int>(3,3)
                }
            });
        }

        protected override void Level7(int pcId, string additionalOptions)
        {
            _mediator.Send(new SetPCSpellSlotsCommand
            {
                PcId = pcId,
                SpellSlots = new List<KeyValuePair<int, int>>
                {
                    new KeyValuePair<int, int>(4,1)
                }
            });
        }

        protected override void Level8(int pcId, string additionalOptions)
        {
            _mediator.Send(new SetPCSpellSlotsCommand
            {
                PcId = pcId,
                SpellSlots = new List<KeyValuePair<int, int>>
                {
                    new KeyValuePair<int, int>(4,2)
                }
            });
        }

        protected override void Level9(int pcId, string additionalOptions)
        {
            _mediator.Send(new SetPCSpellSlotsCommand
            {
                PcId = pcId,
                SpellSlots = new List<KeyValuePair<int, int>>
                {
                    new KeyValuePair<int, int>(4,3),
                    new KeyValuePair<int, int>(5,1)
                }
            });
        }

        protected override void Level10(int pcId, string additionalOptions)
        {
            _mediator.Send(new SetPCSpellSlotsCommand
            {
                PcId = pcId,
                SpellSlots = new List<KeyValuePair<int, int>>
                {
                    new KeyValuePair<int, int>(5,2)
                }
            });
        }

        protected override void Level11(int pcId, string additionalOptions)
        {
            _mediator.Send(new SetPCSpellSlotsCommand
            {
                PcId = pcId,
                SpellSlots = new List<KeyValuePair<int, int>>
                {
                    new KeyValuePair<int, int>(6,1)
                }
            });
        }

        protected override void Level13(int pcId, string additionalOptions)
        {
            _mediator.Send(new SetPCSpellSlotsCommand
            {
                PcId = pcId,
                SpellSlots = new List<KeyValuePair<int, int>>
                {
                    new KeyValuePair<int, int>(7,1)
                }
            });
        }

        protected override void Level15(int pcId, string additionalOptions)
        {
            _mediator.Send(new SetPCSpellSlotsCommand
            {
                PcId = pcId,
                SpellSlots = new List<KeyValuePair<int, int>>
                {
                    new KeyValuePair<int, int>(8,1)
                }
            });
        }

        protected override void Level17(int pcId, string additionalOptions)
        {
            _mediator.Send(new SetPCSpellSlotsCommand
            {
                PcId = pcId,
                SpellSlots = new List<KeyValuePair<int, int>>
                {
                    new KeyValuePair<int, int>(9,1)
                }
            });
        }

        protected override void Level18(int pcId, string additionalOptions)
        {
            _mediator.Send(new SetPCSpellSlotsCommand
            {
                PcId = pcId,
                SpellSlots = new List<KeyValuePair<int, int>>
                {
                    new KeyValuePair<int, int>(5,3)
                }
            });
        }

        protected override void Level19(int pcId, string additionalOptions)
        {
            _mediator.Send(new SetPCSpellSlotsCommand
            {
                PcId = pcId,
                SpellSlots = new List<KeyValuePair<int, int>>
                {
                    new KeyValuePair<int, int>(6,2)
                }
            });
        }

        protected override void Level20(int pcId, string additionalOptions)
        {
            _mediator.Send(new SetPCSpellSlotsCommand
            {
                PcId = pcId,
                SpellSlots = new List<KeyValuePair<int, int>>
                {
                    new KeyValuePair<int, int>(7,2)
                }
            });
        }
    }
}
