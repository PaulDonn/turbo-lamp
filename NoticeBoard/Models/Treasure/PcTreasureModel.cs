using NoticeBoard.Utility;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace NoticeBoard.Models.Treasure
{
    public class PcTreasureModel
    {
        public int Id { get; set; }

        public TreasureModel Treasure { get; set; }

        public int? Quantity { get; set; }

        public string Name { get; set; }

        public string TotalValue
        {
            get
            {
                if(Quantity.HasValue && Treasure.Value > 0)
                {
                    var totalValue = Quantity.Value * Treasure.Value;
                    return MoneyHelper.GetLargestCoinValue(totalValue);
                }
                return string.Empty;
            }
        }

        public string DisplayName()
        {
            if (String.IsNullOrWhiteSpace(Name))
            {
                return Treasure.Name;
            }
            return Name;
        }
    }
}
