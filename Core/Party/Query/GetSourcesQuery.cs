using AutoMapper;
using Core._Party.DTO;
using DataModel;
using Infrastructure.CQRS;
using Infrastructure.Session;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Core._Party.Query
{
    public class GetSourcesQuery : IQuery<IEnumerable<SourceDTO>>
    {
    }

    public class GetSourcesQueryHandler : IQueryHandler<GetSourcesQuery, IEnumerable<SourceDTO>>
    {
        private NoticeBoardContext _context;

        private ISessionInformation _sessionInformation;

        private IMapper _mapper;

        public GetSourcesQueryHandler(NoticeBoardContext context, ISessionInformation sessionInformation, IMapper mapper)
        {
            _context = context;
            _mapper = mapper;
        }

        public IEnumerable<SourceDTO> Handle(GetSourcesQuery query)
        {
            return _mapper.Map<List<Source>, List<SourceDTO>>(_context.Source.ToList());
        }
    }
}
