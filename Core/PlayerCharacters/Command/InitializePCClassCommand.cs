using DataModel;
using Infrastructure.CQRS;
using Microsoft.EntityFrameworkCore;
using System.Collections.Generic;
using System.Linq;

namespace Core.PlayerCharacters.Command
{
    public class InitializePCClassCommand : ICommand
    {
        public int PcId { get; set; }
    }

    public class InitializePCClassCommandHandler : ICommandHandler<InitializePCClassCommand>
    {
        private NoticeBoardContext _context;

        public InitializePCClassCommandHandler(NoticeBoardContext context)
        {
            _context = context;
        }

        public ExecutionResult Handle(InitializePCClassCommand command)
        {
            var result = new ExecutionResult();

            var pc = _context.PlayerCharacter.Include(n => n.PcFeature)
                                             .SingleOrDefault(n => n.Id == command.PcId);

            if(pc != null)
            {
                var classFeatures = _context.ClassFeature.Include(n => n.Feature)
                                                         .Where(n => n.ClassId == pc.ClassId && n.Level == 1
                                                         ||(pc.ArchetypeId != null && n.ArchetypeId == pc.ArchetypeId && n.Level == 1));

                foreach(var classFeature in classFeatures)
                {
                    pc.PcFeature.Add(new PcFeature
                    {
                        ClassFeatureId = classFeature.Id,
                        QuantityMaximum = classFeature.Feature.Quantity
                    });
                }

                _context.SaveChanges();

                result.Success = true;
            }

            return result;
        }
    }
}
