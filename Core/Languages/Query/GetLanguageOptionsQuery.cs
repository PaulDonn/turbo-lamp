using AutoMapper;
using Core.Languages.DTO;
using Core.Races.DTO;
using DataModel;
using Infrastructure.CQRS;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;

namespace Core.Languages.Query
{
    public class GetLanguageOptionsQuery : IQuery<PlayerLanguagesDTO>
    {
        public int PartyId { get; set; }
        public int PcId { get; set; }
    }

    public class GetLanguageOptionsQueryHandler : IQueryHandler<GetLanguageOptionsQuery, PlayerLanguagesDTO>
    {
        private NoticeBoardContext _context;
        private IMapper _mapper;

        public GetLanguageOptionsQueryHandler(NoticeBoardContext context, IMapper mapper)
        {
            _context = context;
            _mapper = mapper;
        }

        PlayerLanguagesDTO IQueryHandler<GetLanguageOptionsQuery, PlayerLanguagesDTO>.Handle(GetLanguageOptionsQuery query)
        {
            var dto = new PlayerLanguagesDTO();
            var languageOptions = new List<LanguageDTO>();

            var partySources = _context.PartySource.Where(n => n.PartyId == query.PartyId)
                                                   .Select(n => n.SourceId);


            var pc = _context.PlayerCharacter.Where(n => n.Id == query.PcId)
                                             .Include(n => n.Race.RaceLanguage)
                                             .Include(n => n.SubRace)
                                             .Include(n => n.Background)
                                             .Include(n => n.PcLanguage)
                                             .FirstOrDefault();

            if (pc != null && partySources.Count() > 0)
            {
                var languages = _context.Language.Where(n => partySources.Contains(n.SourceId))
                                                 .OrderBy(n => n.Name)
                                                 .ToList();

                foreach (var language in languages)
                {
                    var languageOption = _mapper.Map<Language, LanguageDTO>(language);
                    if (pc.Race.RaceLanguage.Any(n => n.LanguageId == languageOption.Id))
                    {
                        languageOption.IsMandatory = true;
                        languageOption.IsSelected = true;
                    }
                    if(pc.PcLanguage.Any(n => n.LanguageId == language.Id))
                    {
                        languageOption.IsSelected = true;
                    }
                    languageOptions.Add(languageOption);
                }

                dto.Languages = languageOptions;

                dto.NumberOfLanguages = Math.Max(pc.PcLanguage.Count(), dto.Languages.Count(n => n.IsMandatory) +
                                        (pc.Race?.AdditionalLanguages ?? 0) +
                                        (pc.SubRace?.AdditionalLanguages ?? 0) +
                                        (pc.Background?.AdditionalLanguages ?? 0));
            }

            return dto;
        }
    }
}
