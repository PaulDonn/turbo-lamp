using DataModel;
using Infrastructure.CQRS;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Core.PlayerCharacters.Query
{
    public class GetPCLevelQuery : IQuery<int>
    {
        public int PcId { get; set; }
    }

    public class GetPCLevelQueryHandler : IQueryHandler<GetPCLevelQuery, int>
    {
        private NoticeBoardContext _context;

        public GetPCLevelQueryHandler(NoticeBoardContext context)
        {
            _context = context;
        }

        public int Handle(GetPCLevelQuery query)
        {
            return _context.PlayerCharacter.SingleOrDefault(n => n.Id == query.PcId)?.Level ?? 0;
        }
    }
}
