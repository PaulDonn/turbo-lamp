using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace NoticeBoard.Models.Races
{
    public class SubRaceSelectModel
    {
        public SubRaceSelectModel()
        {
            SubRaces = new List<SubRaceModel>();
        }

        public List<SubRaceModel> SubRaces { get; set; }

        public int PcId { get; set; }

        public int PartyId { get; set; }

        public int SelectedSubRaceId { get; set; }
    }
}
