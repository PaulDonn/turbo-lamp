using Core.Language.DTO;
using Infrastructure.CQRS;
using System.Collections.Generic;

namespace Core.Language.Query
{
    public class GetLanguagesQuery : IQuery<IEnumerable<LanguageDTO>>
    {
        public bool Filter { get; set; }
        public bool? IsExotic { get; set; }
    }
}
