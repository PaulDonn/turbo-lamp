using AutoMapper;
using DataModel;
using Infrastructure.CQRS;
using Infrastructure.Mediator;
using Microsoft.AspNetCore.DataProtection;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Filters;
using Microsoft.Extensions.Configuration;

namespace NoticeBoard.Controllers
{
    public abstract class BaseController : Controller
    {
        protected NoticeBoardContext _databaseContext { get; }
        protected readonly IConfiguration _configuration;
        protected readonly IMapper _mapper;
        private IMediator _mediator { get; }
        private readonly IDataProtectionProvider _dataProtectionProvider;

        public BaseController(IMediator mediator, NoticeBoardContext databaseContext, IConfiguration configuration, IMapper mapper, IDataProtectionProvider dataProtectionProvider)
        {
            _configuration = configuration;
            _mediator = mediator;
            _databaseContext = databaseContext;
            _mapper = mapper;
            _dataProtectionProvider = dataProtectionProvider;
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

        public string Encrypt(string input)
        {
            var protector = _dataProtectionProvider.CreateProtector(GetType().FullName);
            return protector.Protect(input);
        }

        public string Decrypt(string cipherText)
        {
            var protector = _dataProtectionProvider.CreateProtector(GetType().FullName);
            return protector.Unprotect(cipherText);
        }
    }
}
