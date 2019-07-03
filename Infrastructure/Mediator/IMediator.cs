using Infrastructure.CQRS;
using System;
using System.Collections.Generic;
using System.Text;

namespace Infrastructure.Mediator
{
    public interface IMediator
    {
        /// <summary>
        /// Find and execute the handler to perform the query of type <typeparamref name="TQuery"/> which returns a response of type <typeparamref name="TResponse"/>.
        /// </summary>
        /// <typeparam name="TQuery">Query type to resolve.</typeparam>
        /// <typeparam name="TResponse">Response type to resolve.</typeparam>
        /// <param name="query">Query instance with execution properties.</param>
        /// <returns>Response of the request handler.</returns>
        TResponse Request<TQuery, TResponse>(TQuery query)
            where TQuery : IQuery<TResponse>;

        /// <summary>
        /// Find and execute the handler to perform the command of type <typeparamref name="TCommand"/>.
        /// </summary>
        /// <typeparam name="TCommand">Command type to resolve.</typeparam>
        /// <param name="command">Command instance with execution properties.</param>
        ExecutionResult Send<TCommand>(TCommand command)
            where TCommand : ICommand;

        /// <summary>
        /// Find and execute the handler to perform the command of type <typeparamref name="TCommand"/>.
        /// </summary>
        /// <typeparam name="TCommand">Command type to resolve.</typeparam>
        /// <param name="command">Command instance with execution properties.</param>
        ExecutionResult<U> Send<TCommand, U>(TCommand command)
            where TCommand : ICommand;
    }
}
