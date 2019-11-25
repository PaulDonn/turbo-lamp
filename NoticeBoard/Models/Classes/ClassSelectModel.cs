using NoticeBoard.Models.Races;
using NoticeBoard.Models.Shared;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.Json;
using System.Threading.Tasks;

namespace NoticeBoard.Models.Classes
{
    public class ClassSelectModel: RadioSelectModel<ClassModel>
    {
        public ClassSelectModel() : base()
        {
        }

        public bool HasLevel1Archetype { get; set; }
    }
}
