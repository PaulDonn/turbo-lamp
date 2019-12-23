using DataModel;
using Infrastructure.CQRS;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;

namespace Core.PlayerCharacters.Command
{
    public class LevelUpPCCommand : ICommand
    {
        public int PcId { get; set; }

        public int HitPointMaxIncrease { get; set; }

        public bool ProficiencyBonusIncrease { get; set; }

        public List<int> AbilityIncrease { get; set; }
    }

    public class LevelUpPCCommandHandler : ICommandHandler<LevelUpPCCommand>
    {
        private NoticeBoardContext _context;

        public LevelUpPCCommandHandler(NoticeBoardContext context)
        {
            _context = context;
        }

        public ExecutionResult Handle(LevelUpPCCommand command)
        {
            var result = new ExecutionResult();

            var pc = _context.PlayerCharacter.Include(n => n.PcFeature)
                                             .Include(n => n.Class)
                                             .Include(n => n.PcAbilityScore)
                                             .SingleOrDefault(n => n.Id == command.PcId);

            if (pc != null)
            {
                var classFeatures = _context.ClassFeature.Include(n => n.Feature)
                                                         .Where(n => n.ClassId == pc.ClassId && n.Level == (pc.Level + 1)
                                                         || (pc.ArchetypeId != null && n.ArchetypeId == pc.ArchetypeId && n.Level == (pc.Level + 1)));

                foreach (var classFeature in classFeatures)
                {
                    pc.PcFeature.Add(new PcFeature
                    {
                        ClassFeatureId = classFeature.Id,
                        QuantityMaximum = classFeature.Feature.Quantity
                    });
                }
                
                var conModifier = Math.Floor((pc.PcAbilityScore.SingleOrDefault(n => n.AbilityId == 3).Score - 10m) / 2m);

                if (command.HitPointMaxIncrease < Math.Max(1, (1 + conModifier)) || command.HitPointMaxIncrease > Math.Max(1, (pc.Class.HitDie + conModifier)))
                {
                    result.ErrorMessages.Add($"Invalid Hit Point increase: {command.HitPointMaxIncrease}");
                    return result;
                }

                if(command.AbilityIncrease.Any() && command.AbilityIncrease.Count != 2)
                {
                    result.ErrorMessages.Add($"Invalid number of Ability Score increases: {command.AbilityIncrease.Count}");
                    return result;
                }
                foreach(var abilityId in command.AbilityIncrease)
                {
                    var pcAbilityScore = pc.PcAbilityScore.SingleOrDefault(n => n.AbilityId == abilityId);
                    if(pcAbilityScore.Score >= 20)
                    {
                        result.ErrorMessages.Add($"Cannot increase Ability Score past 20.");
                        return result;
                    }
                    pcAbilityScore.Score++;
                }

                if(command.ProficiencyBonusIncrease)
                {
                    pc.ProficiencyBonus++;
                }

                pc.HitPointMaximum += command.HitPointMaxIncrease;
                pc.HitDiceMaximum++;
                pc.Level++;

                _context.SaveChanges();

                result.Success = true;
            }

            return result;
        }
    }
}
