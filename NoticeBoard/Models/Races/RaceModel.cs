﻿using NoticeBoard.Models.Features;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace NoticeBoard.Models.Races
{
    public class RaceModel
    {
        public RaceModel()
        {
            Languages = new List<int>();
            Features = new List<FeatureModel>();
        }

        public int Id { get; set; }

        [Display(Name = "Race")]
        public string Name { get; set; }

        public string Description { get; set; }

        public bool HasSubRace { get; set; }

        public List<int> Languages { get; set; }

        public List<FeatureModel> Features { get; set; }

        public string ImagePath { get; set; }
    }
}
