using System;
using System.Collections.Generic;
using System.Text;

namespace Core._Treasure.DTO
{
    public class TreasureDTO
    {
        public int Id { get; set; }

        public string Name { get; set; }

        public string Description { get; set; }

        public int Weight { get; set; }

        public int Value { get; set; }

        public string ImagePath { get; set; }
    }
}
