using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.Json;
using System.Threading.Tasks;

namespace NoticeBoard.Models.Races
{
    public class RaceSelectModel
    {
        public RaceSelectModel()
        {
            Races = new List<RaceModel>();
        }

        public List<RaceModel> Races { get; set; }

        public string Options
        {
            get
            {
                return JsonSerializer.Serialize(Races);
            }
        }

        public int PcId { get; set; }

        public int PartyId { get; set; }

        public int SelectedRaceId { get; set; }
    }
}
