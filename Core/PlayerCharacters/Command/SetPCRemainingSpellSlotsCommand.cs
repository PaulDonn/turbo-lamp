using DataModel;
using Infrastructure.CQRS;
using Microsoft.EntityFrameworkCore;
using System.Collections.Generic;
using System.Linq;

namespace Core.PlayerCharacters.Command
{
    public class SetPCRemainingSpellSlotsCommand : ICommand
    {
        public int PcId { get; set; }

        public List<KeyValuePair<int,int>> SpellSlots { get; set; }
    }

    public class SetPCRemainingSpellSlotsCommandHandler : ICommandHandler<SetPCRemainingSpellSlotsCommand>
    {
        private NoticeBoardContext _context;

        public SetPCRemainingSpellSlotsCommandHandler(NoticeBoardContext context)
        {
            _context = context;
        }

        public ExecutionResult Handle(SetPCRemainingSpellSlotsCommand command)
        {
            var result = new ExecutionResult();

            var pc = _context.PlayerCharacter.Include(n => n.PcSpellLevel).SingleOrDefault(n => n.Id == command.PcId);

            if(pc != null)
            {
                foreach(var spellSlot in command.SpellSlots)
                {
                    var pcSpellLevel = pc.PcSpellLevel.Single(n => n.SpellLevel == spellSlot.Key);

                    if(spellSlot.Value >= 0 && spellSlot.Value <= pcSpellLevel.SlotsMaximum)
                    {
                        pcSpellLevel.SlotsCurrent = spellSlot.Value;
                    }
                }

                _context.SaveChanges();

                result.Success = true;
            }

            return result;
        }
    }
}
