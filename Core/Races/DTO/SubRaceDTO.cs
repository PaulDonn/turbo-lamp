using Core.Features.DTO;
using System.Collections.Generic;

namespace Core.Races.DTO
{
    public class SubRaceDTO
    {
        public SubRaceDTO()
        {
            Features = new List<FeatureDTO>();
        }
        public int Id { get; set; }

        public string Name { get; set; }

        public string Description { get; set; }

        public int RaceId { get; set; }

        public List<FeatureDTO> Features { get; set; }
    }
}
