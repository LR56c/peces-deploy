using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Datos.entities
{
    public static class TicketEntityCollection
    {
        private static List<TicketEntity> _listadoTickets { get; set; } = new List<TicketEntity>();

        public static List<TicketEntity> ListadoTickets
        {
            get => _listadoTickets;
            set => _listadoTickets = value;
        }
    }
}
