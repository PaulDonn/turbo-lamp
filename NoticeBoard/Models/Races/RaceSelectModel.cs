using System;
using System.Collections.Generic;
using System.Linq;
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

        public int PcId { get; set; }

        public int PartyId { get; set; }

        public int SelectedRaceId { get; set; }
    }
}
