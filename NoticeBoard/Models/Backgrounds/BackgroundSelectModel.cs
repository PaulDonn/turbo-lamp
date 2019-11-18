using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace NoticeBoard.Models.Backgrounds
{
    public class BackgroundSelectModel
    {
        public BackgroundSelectModel()
        {
            Backgrounds = new List<BackgroundModel>();
        }

        public List<BackgroundModel> Backgrounds { get; set; }

        public int PcId { get; set; }

        public int PartyId { get; set; }

        public int SelectedBackgroundId { get; set; }
    }
}
