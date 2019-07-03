using System;
using System.Collections.Generic;
using System.Text;

namespace Infrastructure.CQRS
{
    public interface ICommandHandlerResult<in TCommand, TResult>
        where TCommand : ICommand
    {
        ExecutionResult<TResult> Handle(TCommand command);
    }
}
