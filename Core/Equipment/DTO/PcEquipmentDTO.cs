using System;
using System.Collections.Generic;
using System.Text;

namespace Core._Equipment.DTO
{
    public class PcEquipmentDTO
    {
        public int Id { get; set; }

        public EquipmentDTO Equipment { get; set; }

        public int? Quantity { get; set; }

        public string Name { get; set; }

        public string EquippedSlot { get; set; }
    }
}
