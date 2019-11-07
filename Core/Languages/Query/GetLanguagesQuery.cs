using Core.Languages.DTO;
using DataModel;
using Infrastructure.CQRS;
using System.Collections.Generic;
using System.Linq;

namespace Core.Languages.Query
{
    public class GetLanguagesQuery : IQuery<IEnumerable<LanguageDTO>>
    {
        public bool Filter { get; set; }
        public bool? IsExotic { get; set; }
    }

    public class GetLanguagesQueryHandler : IQueryHandler<GetLanguagesQuery, IEnumerable<LanguageDTO>>
    {
        private NoticeBoardContext context;

        public GetLanguagesQueryHandler(NoticeBoardContext _context)
        {
            context = _context;
        }

        IEnumerable<LanguageDTO> IQueryHandler<GetLanguagesQuery, IEnumerable<LanguageDTO>>.Handle(GetLanguagesQuery query)
        {
            var result = new List<LanguageDTO>();

            var languages = context.Language.Where(n => !query.Filter || n.IsExotic == query.IsExotic).ToList();

            foreach (var language in languages)
            {
                result.Add(new LanguageDTO
                {
                    Id = language.Id,
                    Name = language.Name,
                    TypicalSpeakers = language.TypicalSpeakers,
                    Script = language.Script,
                    IsExotic = language.IsExotic,
                });
            }

            return result;
        }
    }
}
