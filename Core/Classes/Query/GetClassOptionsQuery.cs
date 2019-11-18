using AutoMapper;
using Core.Classes.DTO;
using DataModel;
using Infrastructure.CQRS;
using System;
using System.Collections.Generic;
using System.Text;

namespace Core.Classes.Query
{
    public class GetClassOptionsQuery: IQuery<IEnumerable<ClassDTO>>
    {
        public int partyId { get; set; }
    }

    public class GetClassOptionsQueryHandler : IQueryHandler<GetClassOptionsQuery, IEnumerable<ClassDTO>>
    {
        private NoticeBoardContext _context;

        private IMapper _mapper;

        public GetClassOptionsQueryHandler(NoticeBoardContext context, IMapper mapper)
        {
            _context = context;
            _mapper = mapper;
        }

        public IEnumerable<ClassDTO> Handle(GetClassOptionsQuery query)
        {
            var dto = new List<ClassDTO>();

            return dto;
        }
    }
}
