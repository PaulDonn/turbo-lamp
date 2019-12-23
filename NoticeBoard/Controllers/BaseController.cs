using AutoMapper;
using BusinessLogic.Classes;
using Core.PlayerCharacters.Query;
using DataModel;
using Infrastructure.CQRS;
using Infrastructure.Mediator;
using Infrastructure.Session;
using Microsoft.AspNetCore.DataProtection;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Filters;
using Microsoft.Extensions.Configuration;

namespace NoticeBoard.Controllers
{
    public abstract class BaseController : Controller
    {
        protected NoticeBoardContext _context { get; }
        protected readonly IConfiguration _configuration;
        protected readonly IMapper _mapper;
        protected readonly ISessionInformation _sessionInformation;
        public IMediator _mediator { get; }
        private readonly IDataProtectionProvider _dataProtectionProvider;
        protected ClassBusinessLogic _classBusinessLogic;

        public BaseController(IMediator mediator, NoticeBoardContext databaseContext, IConfiguration configuration, IMapper mapper, ISessionInformation sessionInformation, IDataProtectionProvider dataProtectionProvider)
        {
            _configuration = configuration;
            _mediator = mediator;
            _context = databaseContext;
            _mapper = mapper;
            _sessionInformation = sessionInformation;
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

        protected void SetBusinessLogic(int pcId)
        {
            var classId = SendQuery<GetPCClassIdQuery, int>(new GetPCClassIdQuery { PcId = pcId });

            switch(classId)
            {
                case 12:
                    _classBusinessLogic = new WizardBusinessLogic(_mediator);
                    break;
            }
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
