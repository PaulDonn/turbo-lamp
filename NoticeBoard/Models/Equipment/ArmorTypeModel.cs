using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace NoticeBoard.Models.Equipment
{
    public class ArmorTypeModel
    {
        public int Id { get; set; }

        public string Name { get; set; }

        public string Class { get; set; }

        public int BaseAC { get; set; }

        public bool AddDexterityBonus { get; set; }

        public int? DexterityBonusMax { get; set; }

        public int? StrengthRequirement { get; set; }

        public bool StealthDisadvantage { get; set; }
    }
}
