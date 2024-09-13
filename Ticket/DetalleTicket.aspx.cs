using Modelo.controladores;
using Modelo.modelos;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace peces_deploy.Ticket
{
    public partial class DetalleTicket : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Request.Params["id"];
            if (id != null)
            {
                CargarDetalle(id);
            }
            else
            {
                lblMessage.Text =
                    "Error. No se ha encontrado el ticket solicitado";
            }

            lblMessage.Visible = lblMessage.Text.Length > 0;
        }

        private void CargarDetalle(string id)
        {
            var ticket = TicketController.Read(id);

            if (ticket == null)
            {
                lblMessage.Text = $"Ticket con ID {id} no encontrado";
            }
            else
            {
                var bEmpresa = ticket.Cliente is Empresa;
                lblIDValue.Text = ticket.Id;
                lblNombreClienteValue.Text = ticket.Cliente.Nombre;
                lblRutClienteValue.Text = ticket.Cliente.Rut;
                lblTelefonoClienteValue.Text = ticket.Cliente.Telefono;
                lblEmailClienteValue.Text = ticket.Cliente.Email;
                lblTipoClienteValue.Text = bEmpresa ? "Empresa" : "Persona";
                trRazonSocial.Visible = bEmpresa;
                if (bEmpresa)
                    lblRazonSocialValue.Text =
                        ((Empresa)ticket.Cliente).RazonSocial;
                lblProductoValue.Text = ticket.Producto;
                lblDescripcionProductoValue.Text = ticket.Descripcion;
                lblEstadoValue.Text = ticket.Estado;
                lblFechaValue.Text =
                    ticket.CreatedAt.ToString("dd/MM/yyyy HH:mm:ss");
            }
        }

        protected void btnActualizar_Click(object sender, EventArgs e)
        {
            string id = lblIDValue.Text;
            string url = $"~/Ticket/ActualizarTicket.aspx?id={id}";
            Response.Redirect(url);
        }

        protected void btnVolver_OnClick(object sender, EventArgs e)
        {
            Response.Redirect("~/Ticket/ListadoTicket.aspx");
        }
    }
}