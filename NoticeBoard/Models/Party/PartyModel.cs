using Microsoft.AspNetCore.Mvc.Rendering;
using NoticeBoard.Models.Player;
using NoticeBoard.Models.PlayerCharacters;
using NoticeBoard.Models.Shared;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.Json;
using System.Threading.Tasks;

namespace NoticeBoard.Models.Party
{
    public class PartyModel
    {
        public int Id { get; set; }

        public string PartyId { get; set; }

        public string Name { get; set; }

        public string Description { get; set; }

        public List<PlayerCharacterModel> PlayerCharacters { get; set; }

        public List<PlayerModel> Players { get; set; }

        public List<SourceModel> Sources { get; set; }

        public CharacterGenerationMethodModel CharacterGenerationMethod { get; set; }

        public int NewCharacterStartingLevel { get; set; }

        public bool UserIsDM { get; set; }

        public bool NewCharacterAvailable { get; set; }
    }
}
