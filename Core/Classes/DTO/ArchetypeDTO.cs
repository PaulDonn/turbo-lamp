using Core.Features.DTO;
using System.Collections.Generic;

namespace Core.Classes.DTO
{
    public class ArchetypeDTO
    {
        public ArchetypeDTO()
        {
            Features = new List<FeatureDTO>();
        }

        public int Id { get; set; }

        public string Name { get; set; }

        public string ShortName { get; set; }

        public string Description { get; set; }

        public int ClassId { get; set; }

        public List<FeatureDTO> Features { get; set; }

        public string ImagePath { get; set; }
    }
}
