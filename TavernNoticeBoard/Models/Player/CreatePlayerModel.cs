using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace TavernNoticeBoard.Models.Player
{
    public class CreatePlayerModel
    {
        public string CharacterName { get; set; }

        public int ClassId { get; set; }

        public int SubClassId { get; set; }

        public int BackGroundId { get; set; }

        public int RaceId { get; set; }

        public int AlignmentId { get; set; }
    }
}
