using System;
using System.Collections.Generic;
using System.Text;

namespace Core.Skills.DTO
{
    public class PlayerSkillsDTO
    {
        public PlayerSkillsDTO()
        {
            Skills = new List<SkillDTO>();
        }

        public List<SkillDTO> Skills { get; set; }

        public int NumberOfSkills { get; set; }
    }
}
