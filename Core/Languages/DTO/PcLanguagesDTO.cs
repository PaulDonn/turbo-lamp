using System;
using System.Collections.Generic;
using System.Text;

namespace Core.Languages.DTO
{
    public class PcLanguagesDTO
    {
        public PcLanguagesDTO()
        {
            StandardLanguages = new List<LanguageDTO>();

            ExoticLanguages = new List<LanguageDTO>();
        }

        public List<LanguageDTO> StandardLanguages { get; set; }

        public List<LanguageDTO> ExoticLanguages { get; set; }

        public List<int> MandatoryLanguages { get; set; }

        public int MaxLanguages { get; set; }
    }
}
