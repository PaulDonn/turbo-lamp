using Core.Language.DTO;
using Infrastructure.CQRS;

namespace Core.Language.Query
{
    public class GetLanguageQuery : IQuery<LanguageDTO>
    {
        public int Id { get; set; }
    }
}
