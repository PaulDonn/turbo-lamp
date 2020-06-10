using Microsoft.AspNetCore.Mvc.Rendering;
using NoticeBoard.Models.Shared;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.Json;
using System.Threading.Tasks;

namespace NoticeBoard.Models.Campaign
{
    public class CreateCampaignModel
    {
        public CreateCampaignModel()
        {
            NewCharacterStartingLevel = 1;
        }

        public string Name { get; set; }

        public string Description { get; set; }

        public List<SourceModel> Sources { get; set; }

        public List<CharacterGenerationMethodModel> CharacterGenOptionModels { get; set; }

        public int SelectedCharacterGenOptionId { get; set; }

        public int NewCharacterStartingLevel { get; set; }
    }
}
