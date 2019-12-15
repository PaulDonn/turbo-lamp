using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace NoticeBoard.Models.Languages
{
    public class LanguageModel
    {
        public int Id { get; set; }

        public string Name { get; set; }

        public string TypicalSpeakers { get; set; }

        public string Script { get; set; }

        public bool IsMandatory { get; set; }

        public bool IsExotic { get; set; }

        public bool IsSelected { get; set; }
    }
}
