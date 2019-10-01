using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace TavernNoticeBoard.Models.Classes
{
    public class ArchetypeModel
    {
        public int Id { get; set; }

        public string Name { get; set; }

        public string ShortName { get; set; }

        public string Description { get; set; }

        public int ClassId { get; set; }
    }
}
