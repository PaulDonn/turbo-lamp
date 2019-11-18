using Core.Features.DTO;
using Core.Languages.DTO;
using System.Collections.Generic;

namespace Core.Races.DTO
{
    public class RaceDTO
    {
        public RaceDTO()
        {
            Languages = new List<int>();
            Features = new List<FeatureDTO>();
        }

        public int Id { get; set; }

        public string Name { get; set; }

        public string Description { get; set; }

        public bool HasSubRace { get; set; }

        public List<int> Languages { get; set; }

        public List<FeatureDTO> Features { get; set; }
    }
}
