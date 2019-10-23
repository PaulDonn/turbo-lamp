using System;

namespace TavernNoticeBoard.Models.Abilities
{
    public class PcAbilityScoreModel
    {
        public int Id { get; set; }

        public int AbilityId { get; set; }

        public int PcId { get; set; }

        public int Score { get; set; }

        public int Bonus { get { return (int)Math.Floor((Score - 10m) / 2); } }
    }
}
