using DataModel;
using Infrastructure.CQRS;
using Infrastructure.Mediator;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Filters;
using Microsoft.Extensions.Configuration;

namespace TavernNoticeBoard.Controllers
{
    public abstract class BaseController : Controller
    {
        public NoticeBoardContext DatabaseContext { get; }
        public IConfiguration Configuration;
        private IMediator Mediator { get; }

        public BaseController(IMediator mediator, NoticeBoardContext databaseContext, IConfiguration configuration)
        {
            Configuration = configuration;
            Mediator = mediator;
            DatabaseContext = databaseContext;
        }

        public override void OnActionExecuting(ActionExecutingContext context)
        {
            base.OnActionExecuting(context);
        }

        internal TResponse SendQuery<TQuery, TResponse>(TQuery query)
            where TQuery : IQuery<TResponse>
        {
            var response = Mediator.Request<TQuery, TResponse>(query);

            return response;
        }

        internal ExecutionResult SendCommand<T>(T command)
             where T : ICommand
        {
            var result = Mediator.Send(command);

            if (result.Success == false)
            {
                ViewBag.ErrorList = result.ErrorMessages;
            }

            return result;
        }

        internal ExecutionResult<U> SendCommand<T, U>(T command)
            where T : ICommand
        {
            ExecutionResult<U> result = Mediator.Send<T, U>(command);

            if (result.Success == false)
            {
                ViewBag.ErrorList = result.ErrorMessages;
            }

            return result;
        }
    }
}
