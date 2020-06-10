using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.Json;
using System.Threading.Tasks;

namespace NoticeBoard.Models.Shared
{
    public class RadioSelectModel<T>
    {
        public RadioSelectModel()
        {
            OptionModels = new List<T>();
        }

        public List<T> OptionModels { get; set; }

        public string Options
        {
            get
            {
                return JsonSerializer.Serialize(OptionModels);
            }
        }

        public string PlayerId { get; set; }

        public string PcId { get; set; }

        public int CampaignId { get; set; }

        public int SelectedOptionId { get; set; }
    }
}
