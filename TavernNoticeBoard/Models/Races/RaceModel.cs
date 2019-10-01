using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace TavernNoticeBoard.Models.Races
{
    public class RaceModel
    {
        public RaceModel()
        {
            Languages = new List<int>();
        }

        public int Id { get; set; }

        public string Name { get; set; }

        public string Description { get; set; }

        public bool HasSubRace { get; set; }

        public List<int> Languages { get; set; }
    }
}
