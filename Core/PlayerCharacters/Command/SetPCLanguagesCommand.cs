using DataModel;
using Infrastructure.CQRS;
using Microsoft.EntityFrameworkCore;
using System;
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
                                             .Include(n => n.Race.RaceLanguage)
                                             .ThenInclude(n => n.Language)
                                             .Include(n => n.SubRace)
                                             .Include(n => n.Background)
                                             .SingleOrDefault();

            if (pc != null)
            {
                var numberOfLanguages = Math.Max(pc.PcLanguage.Count(), pc.Race.RaceLanguage.Count() +
                                        (pc.Race?.AdditionalLanguages ?? 0) +
                                        (pc.SubRace?.AdditionalLanguages ?? 0) +
                                        (pc.Background?.AdditionalLanguages ?? 0));

                foreach (var language in pc.Race.RaceLanguage)
                {
                    if (!command.Languages.Contains(language.Language.Id))
                    {
                        result.ErrorMessages.Add($"{language.Language.Name} is a mandatory language but was not selected");
                        return result;
                    }
                }

                if (command.Languages.Count != numberOfLanguages)
                {
                    result.ErrorMessages.Add($"Invalid number of languages selected");
                    return result;
                }

                _context.PcLanguage.RemoveRange(_context.PcLanguage.Where(n => n.PcId == pc.Id));

                _context.SaveChanges();

                foreach (var languageId in command.Languages)
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
