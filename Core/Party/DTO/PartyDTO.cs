using System;
using System.Collections.Generic;
using System.Text;

namespace Core._Party.DTO
{
    public class PartyDTO
    {
        public string Name { get; set; }

        public string Description { get; set; }

        public List<SourceDTO> Sources { get; set; }

        public CharacterGenerationMethodDTO CharacterGenerationMethod { get; set; }

        public int NewCharacterStartingLevel { get; set; }

        public bool UserIsDM { get; set; }

        public bool NewCharacterAvailable { get; set; }
    }
}
