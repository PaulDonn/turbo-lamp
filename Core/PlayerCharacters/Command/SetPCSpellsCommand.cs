using DataModel;
using Infrastructure.CQRS;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;

namespace Core.PlayerCharacters.Command
{
    public class SetPCSpellsCommand : ICommand
    {
        public int PcId { get; set; }

        public int? SpellToRemove { get; set; }

        public List<int> Spells { get; set; }
    }

    public class SetPCSpellsCommandHandler : ICommandHandler<SetPCSpellsCommand>
    {
        private NoticeBoardContext _context;

        public SetPCSpellsCommandHandler(NoticeBoardContext context)
        {
            _context = context;
        }

        public ExecutionResult Handle(SetPCSpellsCommand command)
        {
            var result = new ExecutionResult();

            var pc = _context.PlayerCharacter.Where(n => n.Id == command.PcId)
                                             .Include(n => n.PcSpell)
                                             .SingleOrDefault();

            if (pc != null)
            {
                if(command.SpellToRemove.HasValue)
                {
                    var spellToRemove = pc.PcSpell.Single(n => n.SpellId == command.SpellToRemove.Value);

                    pc.PcSpell.Remove(spellToRemove);
                }

                foreach(var spellId in command.Spells)
                {
                    pc.PcSpell.Add(new PcSpell
                    {
                        SpellId = spellId
                    });
                }

                _context.SaveChanges();

                result.Success = true;
            }

            return result;
        }
    }
}
