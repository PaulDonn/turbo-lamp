namespace Core.Skills.DTO
{
    public class SkillDTO
    {
        public int Id { get; set; }

        public string Name { get; set; }

        public string AbilityId { get; set; }

        public string AbilityName { get; set; }

        public string Actions { get; set; }

        public bool IsValid { get; set; }

        public bool IsMandatory { get; set; }

        public bool IsSelected { get; set; }
    }
}
