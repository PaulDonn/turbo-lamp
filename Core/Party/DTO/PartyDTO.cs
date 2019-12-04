using Core.PlayerCharacters.DTO;
using Core.Players.DTO;
using System;
using System.Collections.Generic;
using System.Text;

namespace Core._Party.DTO
{
    public class PartyDTO
    {
        public int Id { get; set; }

        public string Name { get; set; }

        public string Description { get; set; }

        public List<PlayerCharacterDTO> PlayerCharacters { get; set; }

        public List<PlayerDTO> Players { get; set; }

        public List<SourceDTO> Sources { get; set; }

        public CharacterGenerationMethodDTO CharacterGenerationMethod { get; set; }

        public int NewCharacterStartingLevel { get; set; }

        public bool UserIsDM { get; set; }

        public bool NewCharacterAvailable { get; set; }
    }
}
