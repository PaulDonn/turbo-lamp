using System;
using System.Collections.Generic;
using System.Text;

namespace Core.Equipment.DTO
{
    public class EquipmentDTO
    {
        public int Id { get; set; }

        public string Name { get; set; }

        public string EquipmentType { get; set; }

        public string Description { get; set; }

        public bool IsCursed { get; set; }

        public string CurseDescription { get; set; }

        public int Weight { get; set; }

        public int Value { get; set; }

        public int? PreRequisiteAbilityId { get; set; }

        public int? PreRequisiteAbilityScore { get; set; }

        public int Bonus { get; set; }

        public bool IsMagical { get; set; }

        public string ImagePath { get; set; }

        public ArmorTypeDTO ArmorType { get; set; }

        public WeaponTypeDTO WeaponType { get; set; }

    }
}
