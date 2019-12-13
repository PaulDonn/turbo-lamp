using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace NoticeBoard.Models.Languages
{
    public class SelectLanguagesModel
    {
        public SelectLanguagesModel()
        {
            Languages = new List<LanguageModel>();
        }

        public string PlayerId { get; set; }

        public string PcId { get; set; }

        public int PartyId { get; set; }

        public List<LanguageModel> Languages { get; set; }

        public List<LanguageModel> CommonLanguages { 
            get 
            {
                return Languages.Where(n => !n.IsExotic).ToList();
            }
        }

        public List<LanguageModel> ExoticLanguages
        {
            get
            {
                return Languages.Where(n => n.IsExotic).ToList();
            }
        }

        public int NumberOfLanguages { get; set; }
    }
}
