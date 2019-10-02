using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace TavernNoticeBoard.Models.Classes
{
    public class ArchetypeModel
    {
        public int Id { get; set; }

        [Display(Name = "Archetype")]
        public string Name { get; set; }

        [Display(Name = "Archetype")]
        public string ShortName { get; set; }

        public string Description { get; set; }

        public int ClassId { get; set; }
    }
}
