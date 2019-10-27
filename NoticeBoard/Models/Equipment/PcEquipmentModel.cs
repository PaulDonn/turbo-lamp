using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace NoticeBoard.Models.Equipment
{
    public class PcEquipmentModel
    {
        public int Id { get; set; }

        public EquipmentModel Equipment { get; set; }

        public int? Quantity { get; set; }

        public string Name { get; set; }

        public string EquippedSlot { get; set; }

        public string DisplayName()
        {
            if(String.IsNullOrWhiteSpace(Name))
            {
                return Equipment.DisplayName();
            }
            return Name;
        }
    }
}
