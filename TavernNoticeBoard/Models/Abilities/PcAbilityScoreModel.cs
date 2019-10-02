using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace TavernNoticeBoard.Models.Abilities
{
    public class PcAbilityScoreModel
    {
        public int Id { get; set; }

        public int AbilityId { get; set; }

        public int PcId { get; set; }

        public int Score { get; set; }
    }
}
