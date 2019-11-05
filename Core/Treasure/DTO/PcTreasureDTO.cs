using System;
using System.Collections.Generic;
using System.Text;

namespace Core.Treasure.DTO
{
    public class PcTreasureDTO
    {
        public int Id { get; set; }

        public TreasureDTO Treasure { get; set; }

        public int? Quantity { get; set; }

        public string Name { get; set; }
    }
}
