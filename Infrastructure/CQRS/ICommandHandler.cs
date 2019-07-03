using System;
using System.Collections.Generic;
using System.Text;

namespace Infrastructure.CQRS
{
    public interface ICommandHandler<in TCommand>
        where TCommand : ICommand
    {
        ExecutionResult Handle(TCommand command);
    }
}
