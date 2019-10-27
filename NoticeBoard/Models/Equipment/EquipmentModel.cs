using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace NoticeBoard.Models.Equipment
{
    public class EquipmentModel
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

        public ArmorTypeModel ArmorType { get; set; }

        public WeaponTypeModel WeaponType { get; set; }

        public string DisplayName()
        {
            if (String.IsNullOrWhiteSpace(Name) && ArmorType != null)
            {
                return ArmorType.Name;
            }
            if (String.IsNullOrWhiteSpace(Name) && WeaponType != null)
            {
                return WeaponType.Name;
            }
            return Name;
        }
    }
}
