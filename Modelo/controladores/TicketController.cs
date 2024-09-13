using Datos.entities;
using Modelo.modelos;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Modelo.controladores
{
    public static class TicketController
    {
        public static string Create(Ticket ticket)
        {
            ClienteEntity clienteEntity = ToClienteEntity(ticket.Cliente);

            TicketEntity t = new TicketEntity()
            {
                Cliente = clienteEntity,
                Producto = ticket.Producto,
                Descripcion = ticket.Descripcion,
                Estado = ticket.Estado,
                Id = ticket.Id
            };

            TicketEntityCollection.ListadoTickets.Add(t);

            return "Cliente valido";
        }

        public static Ticket? Read(string id)
        {
            TicketEntity? ticketEntity =
                TicketEntityCollection.ListadoTickets.Find((entity =>
                    entity.Id == id));

            if (ticketEntity == null) return null;

            Cliente cliente = ToCliente(ticketEntity.Cliente);

            Ticket ticket = new Ticket()
            {
                Id = ticketEntity.Id,
                Producto = ticketEntity.Producto,
                Descripcion = ticketEntity.Descripcion,
                Estado = ticketEntity.Estado,
                Cliente = cliente
            };

            return ticket;
        }

        public static string Update(
            string id,
            string producto,
            string descripcion,
            string email,
            string telefono
        )
        {
            TicketEntity? ticketEntity =
                TicketEntityCollection.ListadoTickets.Find((entity =>
                    entity.Id == id));

            if (ticketEntity == null) return "Ticket no encontrado";

            ticketEntity.Descripcion = descripcion;
            ticketEntity.Producto = producto;
            ticketEntity.Cliente.Email = email;
            ticketEntity.Cliente.Telefono = telefono;

            return "Ticket actualizado";
        }

        public static string Delete(string id)
        {
            int ticketEntity =
                TicketEntityCollection.ListadoTickets.FindIndex((entity =>
                    entity.Id == id));

            if (ticketEntity < 0) return "Ticket no encontrado";

            TicketEntityCollection.ListadoTickets.RemoveAt(ticketEntity);

            return "Ticket eliminado";
        }

        public static List<Ticket> ReadAll()
        {
            List<Ticket> tickets = new List<Ticket>();

            foreach (TicketEntity ticketEntity in TicketEntityCollection.ListadoTickets)
            {
                Cliente cliente = ToCliente(ticketEntity.Cliente);

                Ticket ticket = new Ticket()
                {
                    Id = ticketEntity.Id,
                    Producto = ticketEntity.Producto,
                    Descripcion = ticketEntity.Descripcion,
                    Estado = ticketEntity.Estado,
                    Cliente = cliente
                };

                tickets.Add(ticket);
            }

            return tickets;
        }

        public static List<Ticket> Search(string text)
        {
            List<Ticket> tickets = new List<Ticket>();

            foreach (TicketEntity ticketEntity in TicketEntityCollection.ListadoTickets)
            {
                Cliente cliente = ToCliente(ticketEntity.Cliente);

                Ticket ticket = new Ticket()
                {
                    Id = ticketEntity.Id,
                    Producto = ticketEntity.Producto,
                    Descripcion = ticketEntity.Descripcion,
                    Estado = ticketEntity.Estado,
                    Cliente = cliente
                };

                if (ticket.Cliente.Nombre.ToLower().Contains(text) || ticket.Cliente.Rut.ToLower().Contains(text) || ticket.Estado.ToLower().Contains(text))
                    tickets.Add(ticket);
            }

            return tickets;
        }

        private static Cliente ToCliente(ClienteEntity clienteEntity)
        {
            Cliente cliente;

            if (clienteEntity is EmpresaEntity e)
                cliente = new Empresa()
                {
                    Id = clienteEntity.Id,
                    Nombre = clienteEntity.Nombre,
                    Rut = clienteEntity.Rut,
                    Telefono = clienteEntity.Telefono,
                    Email = clienteEntity.Email,
                    RazonSocial = e.RazonSocial
                };
            else
            {
                cliente = new PersonaNatural()
                {
                    Id = clienteEntity.Id,
                    Nombre = clienteEntity.Nombre,
                    Rut = clienteEntity.Rut,
                    Telefono = clienteEntity.Telefono,
                    Email = clienteEntity.Email
                };
            }

            return cliente;
        }

        private static ClienteEntity ToClienteEntity(Cliente cliente)
        {
            ClienteEntity clienteEntity;

            if (cliente is Empresa e)
                clienteEntity = new EmpresaEntity()
                {
                    Id = cliente.Id,
                    Nombre = cliente.Nombre,
                    Rut = cliente.Rut,
                    Telefono = cliente.Telefono,
                    Email = cliente.Email,
                    RazonSocial = e.RazonSocial
                };
            else
            {
                clienteEntity = new PersonaNaturalEntity()
                {
                    Id = cliente.Id,
                    Nombre = cliente.Nombre,
                    Rut = cliente.Rut,
                    Telefono = cliente.Telefono,
                    Email = cliente.Email
                };
            }

            return clienteEntity;
        }
    }

}
