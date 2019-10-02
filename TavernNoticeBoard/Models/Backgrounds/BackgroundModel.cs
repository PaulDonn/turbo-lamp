using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace TavernNoticeBoard.Models.Backgrounds
{
    public class BackgroundModel
    {
        public int Id { get; set; }

        [Display(Name = "Background")]
        public string Name { get; set; }

        public string Description { get; set; }
    }
}
