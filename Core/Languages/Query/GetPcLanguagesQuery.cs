using Core.Languages.DTO;
using DataModel;
using Infrastructure.CQRS;
using System.Collections.Generic;
using System.Linq;

namespace Core.Languages.Query
{
    public class GetPcLanguagesQuery : IQuery<PcLanguagesDTO>
    {
        public int RaceId { get; set; }

        public int? SubRaceId { get; set; }

        public int? ArchetypeId { get; set; }

        public int BackgroundId { get; set; }

        public int MaxLanguages { get; set; }
    }

    public class GetPcLanguagesQueryHandler : IQueryHandler<GetPcLanguagesQuery, PcLanguagesDTO>
    {
        private NoticeBoardContext context;

        public GetPcLanguagesQueryHandler(NoticeBoardContext _context)
        {
            context = _context;
        }

        PcLanguagesDTO IQueryHandler<GetPcLanguagesQuery, PcLanguagesDTO>.Handle(GetPcLanguagesQuery query)
        {
            var result = new PcLanguagesDTO();

            result.StandardLanguages = context.Language.Where(n => !n.IsExotic)
                                    .Select(n => new LanguageDTO
                                    {
                                        Id = n.Id,
                                        Name = n.Name,
                                        TypicalSpeakers = n.TypicalSpeakers,
                                        Script = n.Script,
                                        IsExotic = n.IsExotic
                                    }).ToList();

            result.ExoticLanguages = context.Language.Where(n => n.IsExotic)
                                    .Select(n => new LanguageDTO
                                    {
                                        Id = n.Id,
                                        Name = n.Name,
                                        TypicalSpeakers = n.TypicalSpeakers,
                                        Script = n.Script,
                                        IsExotic = n.IsExotic
                                    }).ToList();

            result.MandatoryLanguages = context.Language.Where(n => n.RaceLanguage.Any(m => m.RaceId == query.RaceId)).Select(n => n.Id).ToList();

            var subRaceLanguages = 0;
            if (query.SubRaceId.HasValue)
            {
                subRaceLanguages = context.SubRace.Single(n => n.Id == query.SubRaceId).AdditionalLanguages ?? 0;
            }

            var backgroundLanguages = context.Background.Single(n => n.Id == query.BackgroundId).AdditionalLanguages ?? 0;

            result.MaxLanguages = result.MandatoryLanguages.Count() + subRaceLanguages + backgroundLanguages;

            return result;
        }
    }
}
