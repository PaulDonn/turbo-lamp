using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace NoticeBoard.Models.Spells
{
    public class PcSpellLevelModel
    {
        public int SpellLevel { get; set; }

        public int SlotsMaximum { get; set; }

        public int SlotsCurrent { get; set; }
    }
}
