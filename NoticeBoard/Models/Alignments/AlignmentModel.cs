using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace NoticeBoard.Models.Alignments
{
    public class AlignmentModel
    {
        public int Id { get; set; }

        [Display(Name = "Alignment")]
        public string Name { get; set; }

        public string Description { get; set; }

        public string Code { get; set; }
    }
}
