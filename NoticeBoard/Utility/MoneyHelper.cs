using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace NoticeBoard.Utility
{
    public static class MoneyHelper
    {
        public static string GetLargestCoinValue(int copperValue)
        {
            if (copperValue % 10 != 0)
            {
                return copperValue.ToString() + "CP";
            }
            if (copperValue % 100 != 0)
            {
                return (copperValue / 10).ToString() + "SP";
            }
            if (copperValue % 500 != 0)
            {
                return (copperValue / 50).ToString() + "EP";
            }
            if (copperValue % 1000 != 0)
            {
                return (copperValue / 100).ToString() + "GP";
            }
            return (copperValue / 1000).ToString() + "PP";
        }
    }
}
