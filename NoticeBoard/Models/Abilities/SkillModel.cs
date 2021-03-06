﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace NoticeBoard.Models.Abilities
{
    public class SkillModel
    {
        public int Id { get; set; }

        public string Name { get; set; }

        public int AbilityId { get; set; }

        public string AbilityName { get; set; }

        public string Actions { get; set; }

        public bool IsValid { get; set; }

        public bool IsMandatory { get; set; }

        public bool IsSelected { get; set; }
    }
}
