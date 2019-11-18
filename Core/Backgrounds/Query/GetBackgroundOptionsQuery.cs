using AutoMapper;
using Core.Backgrounds.DTO;
using Core.Classes.DTO;
using DataModel;
using Infrastructure.CQRS;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Core.Backgrounds.Query
{
    public class GetBackgroundOptionsQuery : IQuery<IEnumerable<BackgroundDTO>>
    {
        public int PartyId { get; set; }
    }

    public class GetBackgroundOptionsQueryHandler : IQueryHandler<GetBackgroundOptionsQuery, IEnumerable<BackgroundDTO>>
    {
        private NoticeBoardContext _context;

        private IMapper _mapper;

        public GetBackgroundOptionsQueryHandler(NoticeBoardContext context, IMapper mapper)
        {
            _context = context;
            _mapper = mapper;
        }

        public IEnumerable<BackgroundDTO> Handle(GetBackgroundOptionsQuery query)
        {
            var dto = new List<BackgroundDTO>();

            var party = _context.Party.Where(n => n.Id == query.PartyId)
                                      .Include(n => n.PartySource)
                                      .SingleOrDefault();

            if (party != null)
            {
                var backgrounds = _context.Background.Where(n => party.PartySource.Any(m => m.SourceId == n.SourceId));

                foreach (var background in backgrounds)
                {
                    dto.Add(_mapper.Map<Background, BackgroundDTO>(background));
                }
            }

            return dto;
        }
    }
}
