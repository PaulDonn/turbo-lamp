﻿using System;
using System.Collections.Generic;
using System.Text;

namespace Core.Features.DTO
{
    public class FeatureDTO
    {
        public string Name { get; set; }

        public string Code { get; set; }

        public string Description { get; set; }

        public int Level { get; set; }

        public bool Hidden { get; set; }

        public bool IsRaceFeature { get; set; }

        public bool IsClassFeature { get; set; }

        public int? QuantityMaximum { get; set; }

        public int? QuantityCurrent { get; set; }
    }
}
