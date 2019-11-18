using System;
using System.Collections.Generic;
using System.Text;

namespace NoticeBoard.Models.Features
{
    public class FeatureModel
    {
        public string Name { get; set; }

        public string Code { get; set; }

        public string Description { get; set; }

        public string ShortDescription { 
            get
            {
                if(Description.Length > 500)
                {
                    return Description.Substring(0, 500) + "...";
                }
                return Description;
            }
        }

        public int Level { get; set; }

        public bool Hidden { get; set; }

        public bool IsRaceFeature { get; set; }

        public bool IsClassFeature { get; set; }

        public int? QuantityMaximum { get; set; }

        public int? QuantityCurrent { get; set; }
    }
}
