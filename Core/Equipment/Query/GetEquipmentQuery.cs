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
    public class GetEquipmentQuery: IQuery<EquipmentDTO>
    {
        public int Id { get; set; }
    }

    public class GetEquipmentQueryHandler : IQueryHandler<GetEquipmentQuery, EquipmentDTO>
    {
        private NoticeBoardContext _context;
        private IMapper _mapper;

        public GetEquipmentQueryHandler(NoticeBoardContext context, IMapper mapper)
        {
            _context = context;
            _mapper = mapper;
        }

        public EquipmentDTO Handle(GetEquipmentQuery query)
        {
            var dto = new EquipmentDTO();

            var equipment = _context.Equipment.Where(n => n.Id == query.Id)
                                              .Include(n => n.EquipmentType)
                                              .Include(n => n.WeaponType)
                                              .Include(n => n.ArmorType)
                                              .SingleOrDefault();

            if(equipment != null)
            {
                dto = _mapper.Map<Equipment, EquipmentDTO>(equipment);
            }

            return dto;
        }
    }
}
