using Modelo.controladores;
using Modelo.modelos;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace peces_deploy
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            PreCargarDatos();
        }

        private void PreCargarDatos()
        {
            Modelo.modelos.Ticket t1 = new Modelo.modelos.Ticket()
            {
                Id = Guid.NewGuid().ToString(),
                Producto = "Producto 1",
                Descripcion = "Descripción del producto 1",
                Estado = "Abierto",
                Cliente = new Empresa()
                {
                    Id = Guid.NewGuid().ToString(),
                    Rut = "99.999.999-9",
                    Nombre = "Empresa 1",
                    Telefono = "+56 9 9999 9999",
                    Email = "email1@gmail.com",
                    RazonSocial = "Razón social 1"
                }
            };
            Modelo.modelos.Ticket t2 = new Modelo.modelos.Ticket()
            {
                Id = Guid.NewGuid().ToString(),
                Producto = "Producto 2",
                Descripcion = "Descripción del producto 2",
                Estado = "Cerrado",
                Cliente = new PersonaNatural()
                {
                    Id = Guid.NewGuid().ToString(),
                    Rut = "11.111.111-1",
                    Nombre = "Persona 1",
                    Telefono = "+56 9 1111 1111",
                    Email = "email2@gmail.com"
                }
            };
            TicketController.Create(t1);
            TicketController.Create(t2);
        }
    }
}