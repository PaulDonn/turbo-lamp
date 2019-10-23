using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace NoticeBoard.Models.Spells
{
    public class PcSpellModel
    {
        public int Id { get; set; }

        public SpellModel Spell { get; set; }

        public bool IsPrepared { get; set; }
    }
}
