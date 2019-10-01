using AutoMapper;
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
        protected NoticeBoardContext _databaseContext { get; }
        protected IConfiguration _configuration;
        protected IMapper _mapper;
        private IMediator _mediator { get; }

        public BaseController(IMediator mediator, NoticeBoardContext databaseContext, IConfiguration configuration, IMapper mapper)
        {
            _configuration = configuration;
            _mediator = mediator;
            _databaseContext = databaseContext;
            _mapper = mapper;
        }

        public override void OnActionExecuting(ActionExecutingContext context)
        {
            base.OnActionExecuting(context);
        }

        internal TResponse SendQuery<TQuery, TResponse>(TQuery query)
            where TQuery : IQuery<TResponse>
        {
            var response = _mediator.Request<TQuery, TResponse>(query);

            return response;
        }

        internal ExecutionResult SendCommand<T>(T command)
             where T : ICommand
        {
            var result = _mediator.Send(command);

            if (result.Success == false)
            {
                ViewBag.ErrorList = result.ErrorMessages;
            }

            return result;
        }

        internal ExecutionResult<U> SendCommand<T, U>(T command)
            where T : ICommand
        {
            ExecutionResult<U> result = _mediator.Send<T, U>(command);

            if (result.Success == false)
            {
                ViewBag.ErrorList = result.ErrorMessages;
            }

            return result;
        }
    }
}
