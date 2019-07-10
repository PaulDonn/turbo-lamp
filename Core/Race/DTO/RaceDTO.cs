using Core.Language.DTO;
using System.Collections.Generic;

namespace Core.Race.DTO
{
    public class RaceDTO
    {
        public RaceDTO()
        {
            Languages = new List<int>();
        }

        public int Id { get; set; }

        public string Name { get; set; }

        public string Description { get; set; }

        public bool HasSubRace { get; set; }

        public List<int> Languages { get; set; }
    }
}
