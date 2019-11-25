using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.Json;
using System.Threading.Tasks;

namespace NoticeBoard.Models.Alignments
{
    public class AlignmentSelectModel
    {
        public AlignmentSelectModel()
        {
            Alignments = new List<AlignmentModel>();
        }

        public List<AlignmentModel> Alignments { get; set; }

        public string Options
        {
            get
            {
                return JsonSerializer.Serialize(Alignments);
            }
        }

        public string PcId { get; set; }

        public int PartyId { get; set; }

        public int SelectedOptionId { get; set; }
    }
}
