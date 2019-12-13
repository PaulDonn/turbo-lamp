using DataModel;
using Infrastructure.CQRS;
using Microsoft.EntityFrameworkCore;
using System.Collections.Generic;
using System.Linq;

namespace Core.PlayerCharacters.Command
{
    public class SetPCLanguagesCommand : ICommand
    {
        public int PcId { get; set; }

        public List<int> Languages { get; set; }
    }

    public class SetPCLanguagesCommandHandler : ICommandHandler<SetPCLanguagesCommand>
    {
        private NoticeBoardContext _context;

        public SetPCLanguagesCommandHandler(NoticeBoardContext context)
        {
            _context = context;
        }

        public ExecutionResult Handle(SetPCLanguagesCommand command)
        {
            var result = new ExecutionResult();

            var pc = _context.PlayerCharacter.Where(n => n.Id == command.PcId)
                                             .Include(n => n.PcLanguage)
                                             .SingleOrDefault();

            if(pc != null)
            {
                _context.PcLanguage.RemoveRange(_context.PcLanguage.Where(n => n.PcId == pc.Id));

                _context.SaveChanges();

                foreach(var languageId in command.Languages)
                {
                    pc.PcLanguage.Add(new PcLanguage
                    {
                        LanguageId = languageId
                    });
                }

                _context.SaveChanges();

                result.Success = true;
            }

            return result;
        }
    }
}
