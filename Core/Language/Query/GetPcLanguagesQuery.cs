using Core.Language.DTO;
using Infrastructure.CQRS;
using System.Collections.Generic;

namespace Core.Language.Query
{
    public class GetPcLanguagesQuery : IQuery<PcLanguagesDTO>
    {
        public int RaceId { get; set; }

        public int? SubRaceId { get; set; }

        public int? ArchetypeId { get; set; }

        public int BackgroundId { get; set; }

        public int MaxLanguages { get; set; }
    }
}
