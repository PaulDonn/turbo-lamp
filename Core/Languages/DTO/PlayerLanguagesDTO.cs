using System;
using System.Collections.Generic;
using System.Text;

namespace Core.Languages.DTO
{
    public class PlayerLanguagesDTO
    {
        public PlayerLanguagesDTO()
        {
            Languages = new List<LanguageDTO>();
        }

        public List<LanguageDTO> Languages { get; set; }

        public int NumberOfLanguages { get; set; }
    }
}
