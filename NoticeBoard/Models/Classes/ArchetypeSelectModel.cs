using NoticeBoard.Models.Classes;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace NoticeBoard.Models.Races
{
    public class ArchetypeSelectModel
    {
        public ArchetypeSelectModel()
        {
            Archetypes = new List<ArchetypeModel>();
        }

        public List<ArchetypeModel> Archetypes { get; set; }

        public int PcId { get; set; }

        public int PartyId { get; set; }

        public string ArchetypeName { get; set; }

        public string ArchetypeDescription { get; set; }

        public int SelectedArchetypeId { get; set; }
    }
}
