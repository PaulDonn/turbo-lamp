using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace NoticeBoard.Models.Classes
{
    public class ClassSelectModel
    {
        public ClassSelectModel()
        {
            Classes = new List<ClassModel>();
        }

        public List<ClassModel> Classes { get; set; }

        public int PcId { get; set; }

        public int PartyId { get; set; }

        public int SelectedClassId { get; set; }

        public bool HasLevel1Archetype { get; set; }
    }
}
