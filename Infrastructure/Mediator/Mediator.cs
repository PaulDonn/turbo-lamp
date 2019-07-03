using Infrastructure.CQRS;
using System;
using Microsoft.Extensions.DependencyInjection;
using System.Collections.Generic;
using System.Text;

namespace Infrastructure.Mediator
{
    public class Mediator : IMediator
    {
        private readonly IServiceProvider _container;

        /// <summary>
        /// Initializes a new instance of the <see cref="IServiceProvider"/> class.
        /// </summary>
        /// <param name="provider">Used to find the right handler for the command or query.</param>
        public Mediator(IServiceProvider provider)
        {
            _container = provider;
        }

        /// <inheritdoc/>
        public TResponse Request<TQuery, TResponse>(TQuery query)
            where TQuery : IQuery<TResponse>
        {
            var handler = _container.GetService<IQueryHandler<TQuery, TResponse>>();
            var result = handler.Handle(query);
            return result;
        }

        /// <inheritdoc/>
        public ExecutionResult Send<TCommand>(TCommand command)
            where TCommand : ICommand
        {
            var handler = _container.GetService<ICommandHandler<TCommand>>();

            return handler.Handle(command);
        }

        /// <inheritdoc/>
        public ExecutionResult<U> Send<TCommand, U>(TCommand command)
            where TCommand : ICommand
        {
            var handler = _container.GetService<ICommandHandlerResult<TCommand, U>>();

            return handler.Handle(command);
        }
    }
}
