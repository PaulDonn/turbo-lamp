using DataModel;
using Infrastructure.CQRS;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;

namespace Core.PlayerCharacters.Command
{
    public class SetPCAbilityScoresCommand : ICommand
    {
        public int PcId { get; set; }

        public List<KeyValuePair<int, int>> AbilityScores { get; set; }
    }

    public class SetPCAbilityScoresCommandHandler : ICommandHandler<SetPCAbilityScoresCommand>
    {
        private NoticeBoardContext _context;

        public SetPCAbilityScoresCommandHandler(NoticeBoardContext context)
        {
            _context = context;
        }

        public ExecutionResult Handle(SetPCAbilityScoresCommand command)
        {
            var result = new ExecutionResult();

            var pc = _context.PlayerCharacter.Where(n => n.Id == command.PcId)
                                             .Include(n => n.PcAbilityScore)
                                             .SingleOrDefault();

            if (pc != null)
            {
                foreach(var abilityScore in command.AbilityScores)
                {
                    var pcAbility = pc.PcAbilityScore.Single(n => n.AbilityId == abilityScore.Key);

                    pcAbility.Score = abilityScore.Value;
                }

                _context.SaveChanges();

                result.Success = true;
            }

            return result;
        }
    }
}
