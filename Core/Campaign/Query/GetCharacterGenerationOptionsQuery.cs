using AutoMapper;
using Core._Campaign.DTO;
using DataModel;
using Infrastructure.CQRS;
using Infrastructure.Session;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Core._Campaign.Query
{
    public class GetCharacterGenerationOptionsQuery : IQuery<IEnumerable<CharacterGenerationMethodDTO>>
    {
    }

    public class GetCharacterGenerationOptionsQueryHandler : IQueryHandler<GetCharacterGenerationOptionsQuery, IEnumerable<CharacterGenerationMethodDTO>>
    {
        private NoticeBoardContext _context;

        private ISessionInformation _sessionInformation;

        private IMapper _mapper;

        public GetCharacterGenerationOptionsQueryHandler(NoticeBoardContext context, ISessionInformation sessionInformation, IMapper mapper)
        {
            _context = context;
            _mapper = mapper;
        }

        public IEnumerable<CharacterGenerationMethodDTO> Handle(GetCharacterGenerationOptionsQuery query)
        {
            return _mapper.Map<List<CharacterGenerationMethod>, List<CharacterGenerationMethodDTO>>(_context.CharacterGenerationMethod.ToList());
        }
    }
}
