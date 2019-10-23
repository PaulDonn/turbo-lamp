using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace NoticeBoard.Models.Abilities
{
    public class PcSkillModel
    {
        public int Id { get; set; }

        public int PcId { get; set; }

        public int SkillId { get; set; }
    }
}
