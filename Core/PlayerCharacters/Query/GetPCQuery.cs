using Core.PlayerCharacters.DTO;
using Infrastructure.CQRS;
using System;
using System.Collections.Generic;
using System.Text;

namespace Core.PlayerCharacters.Query
{
    public class GetPCQuery : IQuery<PlayerCharacterDTO>
    {
        public int PcId { get; set; }
    }
}
