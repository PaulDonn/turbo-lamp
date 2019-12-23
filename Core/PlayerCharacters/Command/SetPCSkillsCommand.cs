using DataModel;
using Infrastructure.CQRS;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;

namespace Core.PlayerCharacters.Command
{
    public class SetPCSkillsCommand : ICommand
    {
        public int PcId { get; set; }

        public List<int> Skills { get; set; }
    }

    public class SetPCSkillsCommandHandler : ICommandHandler<SetPCSkillsCommand>
    {
        private NoticeBoardContext _context;

        public SetPCSkillsCommandHandler(NoticeBoardContext context)
        {
            _context = context;
        }

        public ExecutionResult Handle(SetPCSkillsCommand command)
        {
            var result = new ExecutionResult();

            var pc = _context.PlayerCharacter.Where(n => n.Id == command.PcId)
                                             .Include(n => n.PcSkill)
                                             .Include(n => n.Class.ClassSkill)
                                             .ThenInclude(n => n.Skill)
                                             .Include(n => n.Background.BgSkill)
                                             .ThenInclude(n => n.Skill)
                                             .SingleOrDefault();

            if (pc != null)
            {
                var numberOfSkills = Math.Max(pc.PcSkill.Count(), (pc.Class?.NumberOfStartingSkills ?? 0) +
                                        (pc.Background?.BgSkill.Count() ?? 0));

                foreach (var skill in pc.Background.BgSkill)
                {
                    if (!command.Skills.Contains(skill.Skill.Id))
                    {
                        result.ErrorMessages.Add($"{skill.Skill.Name} is a mandatory skill but was not selected");
                        return result;
                    }
                }

                foreach (var skillId in command.Skills)
                {
                    if(!pc.Class.ClassSkill.Any(n => n.SkillId == skillId) && !pc.Background.BgSkill.Any(n => n.SkillId == skillId))
                    {
                        result.ErrorMessages.Add($"{_context.Skill.SingleOrDefault(n => n.Id == skillId)?.Name} is a not a valid skill for your character");
                        return result;
                    }
                }

                if (command.Skills.Count != numberOfSkills)
                {
                    result.ErrorMessages.Add($"Invalid number of skills selected");
                    return result;
                }

                _context.PcSkill.RemoveRange(_context.PcSkill.Where(n => n.PcId == pc.Id));

                _context.SaveChanges();

                foreach (var skillId in command.Skills)
                {
                    pc.PcSkill.Add(new PcSkill
                    {
                        SkillId = skillId
                    });
                }

                _context.SaveChanges();

                result.Success = true;
            }

            return result;
        }
    }
}
