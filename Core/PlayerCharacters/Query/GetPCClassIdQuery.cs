using DataModel;
using Infrastructure.CQRS;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Core.PlayerCharacters.Query
{
    public class GetPCClassIdQuery : IQuery<int>
    {
        public int PcId { get; set; }
    }

    public class GetPCClassIdQueryHandler : IQueryHandler<GetPCClassIdQuery, int>
    {
        private NoticeBoardContext _context;

        public GetPCClassIdQueryHandler(NoticeBoardContext context)
        {
            _context = context;
        }

        public int Handle(GetPCClassIdQuery query)
        {
            return _context.PlayerCharacter.SingleOrDefault(n => n.Id == query.PcId)?.ClassId ?? 0;
        }
    }
}
