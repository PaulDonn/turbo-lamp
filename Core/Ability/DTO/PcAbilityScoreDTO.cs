using System;
using System.Collections.Generic;
using System.Text;

namespace Core.Ability.DTO
{
    public class PcAbilityScoreDTO
    {
        public int Id { get; set; }

        public int AbilityId { get; set; }

        public int PcId { get; set; }

        public int Score { get; set; }
    }
}
