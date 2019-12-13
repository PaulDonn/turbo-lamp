namespace Core.Languages.DTO
{
    public class LanguageDTO
    {
        public int Id { get; set; }

        public string Name { get; set; }

        public string TypicalSpeakers { get; set; }

        public string Script { get; set; }

        public bool IsExotic { get; set; }

        public bool IsMandatory { get; set; }
    }
}
