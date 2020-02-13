using NoticeBoard.Models.Shared;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace NoticeBoard.Models.Spells
{
    public class SpellSelectModel
    {
        public RadioSelectModel<SpellModel> radioSelectModel;

        public CheckboxSelectModel<SpellModel> checkboxSelectModel;
    }
}
