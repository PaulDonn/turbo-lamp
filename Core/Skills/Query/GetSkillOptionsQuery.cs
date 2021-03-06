﻿using AutoMapper;
using Core.Languages.DTO;
using Core.Races.DTO;
using Core.Skills.DTO;
using DataModel;
using Infrastructure.CQRS;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;

namespace Core.Skills.Query
{
    public class GetSkillOptionsQuery : IQuery<PcSkillsDTO>
    {
        public int CampaignId { get; set; }
        public int PcId { get; set; }
    }

    public class GetSkillOptionsQueryHandler : IQueryHandler<GetSkillOptionsQuery, PcSkillsDTO>
    {
        private NoticeBoardContext _context;
        private IMapper _mapper;

        public GetSkillOptionsQueryHandler(NoticeBoardContext context, IMapper mapper)
        {
            _context = context;
            _mapper = mapper;
        }

        PcSkillsDTO IQueryHandler<GetSkillOptionsQuery, PcSkillsDTO>.Handle(GetSkillOptionsQuery query)
        {
            var dto = new PcSkillsDTO();
            var skillOptions = new List<SkillDTO>();

            var campaignSources = _context.CampaignSource.Where(n => n.CampaignId == query.CampaignId)
                                                   .Select(n => n.SourceId);


            var pc = _context.PlayerCharacter.Where(n => n.Id == query.PcId)
                                             .Include(n => n.Class.ClassSkill)
                                             .Include(n => n.Background.BgSkill)
                                             .FirstOrDefault();

            if (pc != null && campaignSources.Count() > 0)
            {
                var skills = _context.Skill.Include(n => n.Ability).OrderBy(n => n.Name).ToList();

                foreach (var skill in skills)
                {
                    var skillOption = _mapper.Map<Skill, SkillDTO>(skill);
                    if (pc.Class.ClassSkill.Any(n => n.SkillId == skillOption.Id))
                    {
                        skillOption.IsValid = true;
                    }
                    if (pc.Background.BgSkill.Any(n => n.SkillId == skillOption.Id))
                    {
                        skillOption.IsValid = true;
                        skillOption.IsMandatory = true;
                        skillOption.IsSelected = true;
                    }
                    if (pc.PcSkill.Any(n => n.SkillId == skill.Id))
                    {
                        skillOption.IsValid = true;
                        skillOption.IsSelected = true;
                    }
                    skillOptions.Add(skillOption);
                }

                dto.Skills = skillOptions;

                dto.NumberOfSkills = Math.Max(pc.PcSkill.Count(), (pc.Class?.NumberOfStartingSkills ?? 0) +
                                        (pc.Background?.BgSkill.Count() ?? 0));
            }

            return dto;
        }
    }
}
