using AutoMapper;
using Core._Equipment.DTO;
using DataModel;
using Infrastructure.CQRS;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Core._Equipment.Query
{
    public class GetPcEquipmentQuery: IQuery<PcEquipmentDTO>
    {
        public int Id { get; set; }
    }

    public class GetPcEquipmentQueryHandler : IQueryHandler<GetPcEquipmentQuery, PcEquipmentDTO>
    {
        private NoticeBoardContext _context;
        private IMapper _mapper;

        public GetPcEquipmentQueryHandler(NoticeBoardContext context, IMapper mapper)
        {
            _context = context;
            _mapper = mapper;
        }

        public PcEquipmentDTO Handle(GetPcEquipmentQuery query)
        {
            var dto = new PcEquipmentDTO();

            var pcEquipment = _context.PcEquipment.Where(n => n.Id == query.Id)
                                                  .Include(n => n.Equipment.EquipmentType)
                                                  .Include(n => n.Equipment.WeaponType)
                                                  .Include(n => n.Equipment.ArmorType)
                                                  .SingleOrDefault();

            if(pcEquipment != null)
            {
                dto = _mapper.Map<PcEquipment, PcEquipmentDTO>(pcEquipment);
            }

            return dto;
        }
    }
}
