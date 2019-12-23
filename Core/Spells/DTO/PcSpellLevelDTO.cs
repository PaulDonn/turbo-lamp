using System;
using System.Collections.Generic;
using System.Text;

namespace Core.Spells.DTO
{
    public class PcSpellLevelDTO
    {
        public int SpellLevel { get; set; }
        
        public int SlotsMaximum { get; set; }

        public int SlotsCurrent { get; set; }
    }
}
