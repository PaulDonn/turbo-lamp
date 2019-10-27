using System;
using System.Collections.Generic;
using System.Text;

namespace Core.Equipment.DTO
{
    public class WeaponTypeDTO
    {
        public int Id { get; set; }

        public string Name { get; set; }

        public bool IsMartial { get; set; }

        public bool IsRanged { get; set; }

        public int DamageDie { get; set; }

        public int NumberOfDice { get; set; }

        public string DamageType { get; set; }

        public bool IsLight { get; set; }

        public bool IsHeavy { get; set; }

        public bool IsFinesse { get; set; }

        public bool IsThrown { get; set; }

        public int? RangeLow { get; set; }

        public int? RangeHigh { get; set; }

        public bool IsTwoHanded { get; set; }

        public bool IsVersatile { get; set; }

        public int? VersatileDamageDie { get; set; }

        public bool RequiresLoading { get; set; }

        public bool RequiresAmmunition { get; set; }

        public bool HasReach { get; set; }

        public bool IsSpecial { get; set; }
    }
}
