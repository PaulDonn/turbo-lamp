using Core.Language.DTO;
using DataModel;
using Infrastructure.CQRS;
using System.Linq;

namespace Core.Language.Query
{
    public class GetLanguageQuery : IQuery<LanguageDTO>
    {
        public int Id { get; set; }
    }

    public class GetLanguageQueryHandler : IQueryHandler<GetLanguageQuery, LanguageDTO>
    {
        private NoticeBoardContext context;

        public GetLanguageQueryHandler(NoticeBoardContext _context)
        {
            context = _context;
        }

        public LanguageDTO Handle(GetLanguageQuery query)
        {
            var dto = new LanguageDTO();
            if (query.Id > 0)
            {
                var language = context.Language.Single(n => n.Id == query.Id);

                dto.Id = language.Id;
                dto.Name = language.Name;
                dto.TypicalSpeakers = language.TypicalSpeakers;
                dto.Script = language.Script;
                dto.IsExotic = language.IsExotic;
            }

            return dto;
        }
    }
}
