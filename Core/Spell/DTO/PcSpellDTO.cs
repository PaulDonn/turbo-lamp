﻿using System;
using System.Collections.Generic;
using System.Text;

namespace Core.Spell.DTO
{
    public class PcSpellDTO
    {
        public int Id { get; set; }

        public SpellDTO Spell { get; set; }

        public bool IsPrepared { get; set; }
    }
}
