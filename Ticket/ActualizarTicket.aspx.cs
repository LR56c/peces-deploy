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
    public partial class ActualizarTicket : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string message = Request.Params["message"];

                if (message != null)
                {
                    lblMessage.Text = message;
                }

                string id = Request.Params["id"];

                if (id != null)
                {
                    CargarDatos(id);
                }
                else
                {
                    lblMessage.Text = "Error. No existe el ticket solicitado";
                }
            }

            lblMessage.Visible = lblMessage.Text.Length > 0;
        }

        private void CargarDatos(string id)
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
                txtTelefono.Text = ticket.Cliente.Telefono;
                txtEmail.Text = ticket.Cliente.Email;
                lblTipoClienteValue.Text = bEmpresa ? "Empresa" : "Persona";
                trRazonSocial.Visible = bEmpresa;
                if (bEmpresa)
                    lblRazonSocialValue.Text =
                        ((Empresa)ticket.Cliente).RazonSocial;
                txtProducto.Text = ticket.Producto;
                txtDescripcion.Text = ticket.Descripcion;
                lblEstadoValue.Text = ticket.Estado;
                lblFechaValue.Text =
                    ticket.CreatedAt.ToString("dd/MM/yyyy HH:mm:ss");
            }
        }

        protected void btnActualizarTicket_OnClick(object sender, EventArgs e)
        {
            if (!Page.IsValid) return;

            string id = lblIDValue.Text;
            string producto = txtProducto.Text;
            string descripcion = txtDescripcion.Text;
            string email = txtEmail.Text;
            string telefono = txtTelefono.Text;

            string msg = TicketController.Update(id, producto, descripcion,
                email, telefono);

            // Response.Redirect($"~/Ticket/ActualizarTicket.aspx?id={id}&message={msg}");
            Response.Redirect($"~/Ticket/DetalleTicket.aspx?id={id}");
        }

        protected void
            cvMinDescripcionProducto_OnServerValidateProducto_OnServerValidate_OnServerValidate_ServerValidate(
                object source, ServerValidateEventArgs args)
        {
            try
            {
                args.IsValid = args.Value.Length >= 10;
            }
            catch (Exception e)
            {
                args.IsValid = false;
            }
        }

        protected void
            cvMinNombreProducto_OnServerValidate_OnServerValidate_ServerValidate(
                object source, ServerValidateEventArgs args)
        {
            try
            {
                args.IsValid = args.Value.Length >= 10;
            }
            catch (Exception e)
            {
                args.IsValid = false;
            }
        }
    }
}