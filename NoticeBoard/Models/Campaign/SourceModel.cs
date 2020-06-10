using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace NoticeBoard.Models.Campaign
{
    public class SourceModel
    {
        public SourceModel()
        {
            IsSelected = true;
        }

        public int Id { get; set; }

        public string Name { get; set; }

        public string Code { get; set; }

        public bool IsSelected { get; set; }
    }
}
