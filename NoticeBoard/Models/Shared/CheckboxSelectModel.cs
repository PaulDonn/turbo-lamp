using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace NoticeBoard.Models.Shared
{
    public class CheckboxSelectModel<T>
    {
        public CheckboxSelectModel()
        {
            Options = new List<T>();
        }

        public string PlayerId { get; set; }

        public string PcId { get; set; }

        public int PartyId { get; set; }

        public List<T> Options { get; set; }

        public int NumberOfSelections { get; set; }
    }
}
