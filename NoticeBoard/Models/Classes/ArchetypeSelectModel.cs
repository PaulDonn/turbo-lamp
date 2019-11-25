using NoticeBoard.Models.Classes;
using NoticeBoard.Models.Shared;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.Json;
using System.Threading.Tasks;

namespace NoticeBoard.Models.Classes
{
    public class ArchetypeSelectModel : RadioSelectModel<ArchetypeModel>
    {
        public ArchetypeSelectModel(): base()
        {
        }

        public string ArchetypeName { get; set; }

        public string ArchetypeDescription { get; set; }
    }
}
