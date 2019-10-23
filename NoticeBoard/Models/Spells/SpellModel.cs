using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace NoticeBoard.Models.Spells
{
    public class SpellModel
    {
        public int Id { get; set; }

        public string Name { get; set; }

        public string SpellSchool { get; set; }

        public string CastingTime { get; set; }

        public string Range { get; set; }

        public string Duration { get; set; }

        public bool RequiresConcentration { get; set; }

        public int SpellLevel { get; set; }

        public bool RequiresVerbal { get; set; }

        public bool RequiresSomatic { get; set; }

        public bool RequiresMaterial { get; set; }

        public string MaterialDescription { get; set; }

        public bool IsRitual { get; set; }

        public string Description { get; set; }

        public string HigherLevelDescription { get; set; }
    }
}
