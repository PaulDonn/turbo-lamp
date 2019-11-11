using System;
using System.Collections.Generic;
using System.Text;

namespace Core.Features.DTO
{
    public class PcFeatureDTO
    {
        public FeatureDTO Feature { get; set; }

        public string Origin { get; set; }

        public string Description { get; set; }

        public int Level { get; set; }

        public bool Hidden { get; set; }
    }
}
