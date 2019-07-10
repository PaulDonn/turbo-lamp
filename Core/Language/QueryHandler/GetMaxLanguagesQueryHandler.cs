using Core.Alignment.DTO;
using Core.Alignment.Query;
using Core.Language.DTO;
using Core.Language.Query;
using DataModel;
using Infrastructure.CQRS;
using System.Collections.Generic;
using System.Linq;

namespace Core.Language.QueryHandler
{
    public class GetMaxLanguagesQueryHandler : IQueryHandler<GetMaxLanguagesQuery, int>
    {
        private NoticeBoardContext context;

        public GetMaxLanguagesQueryHandler(NoticeBoardContext _context)
        {
            context = _context;
        }

        int IQueryHandler<GetMaxLanguagesQuery, int>.Handle(GetMaxLanguagesQuery query)
        {
            var result = 0;

            var languages = context.Language.Where(n => n.RaceLanguage.Any(m => m.RaceId == query.RaceId)).ToList();

            var subRaceLanguages = 0;
            if (query.SubRaceId.HasValue)
            {
                subRaceLanguages = context.SubRace.Single(n => n.Id == query.SubRaceId).AdditionalLanguages ?? 0;
            }

            var archetypeLanguages = 0;
            if (query.ArchetypeId.HasValue)
            {
                archetypeLanguages = context.Archetype.Single(n => n.Id == query.ArchetypeId).AdditionalLanguages ?? 0;
            }

            var backgroundLanguages = context.Background.Single(n => n.Id == query.BackgroundId).AdditionalLanguages ?? 0;

            result = languages.Count() + subRaceLanguages + archetypeLanguages + backgroundLanguages;

            return result;
        }
    }
}
