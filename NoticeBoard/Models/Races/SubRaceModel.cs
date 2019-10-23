using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace NoticeBoard.Models.Races
{
    public class SubRaceModel
    {
        public int Id { get; set; }

        [Display(Name = "SubRace")]
        public string Name { get; set; }

        public string Description { get; set; }

        public int RaceId { get; set; }
    }
}
