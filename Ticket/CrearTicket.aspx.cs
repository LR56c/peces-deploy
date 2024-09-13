using Modelo.controladores;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace peces_deploy.Ticket
{
    public partial class CrearTicket : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                CargarTiposClientes();
        }

        private void CargarTiposClientes()
        {
            ddlTipoCliente.Items.Clear();
            ddlTipoCliente.Items.Add("Seleccionar");
            ddlTipoCliente.Items[0].Attributes.Add("disabled", "disabled");
            ddlTipoCliente.Items[0].Attributes.Add("selected", "selected");
            ddlTipoCliente.Items.Add("Persona");
            ddlTipoCliente.Items.Add("Empresa");
        }

        protected void btnEnviarTicket_OnClick(object sender, EventArgs e)
        {
            if (!Page.IsValid) return;

            Modelo.modelos.Cliente c = new Modelo.modelos.Cliente()
            {
                Id = Guid.NewGuid().ToString(),
                Nombre = txtNombreCliente.Text,
                Rut = txtRutCliente.Text,
                Telefono = txtTelefono.Text,
                Email = txtEmail.Text
            };

            Modelo.modelos.Ticket t = new Modelo.modelos.Ticket()
            {
                Id = Guid.NewGuid().ToString(),
                Cliente = c,
                Producto = txtProducto.Text,
                Descripcion = txtDescripcion.Text,
                Estado = checkEstado.Checked ? "Cerrado" : "Abierto"
            };

            string msg = TicketController.Create(t);

            Response.Redirect($"~/Ticket/ListadoTicket.aspx?message={msg}");
        }

        protected void ddlTipoCliente_OnSelectedIndexChanged(object sender, EventArgs e)
        {
            ddlTipoCliente.Items[0].Attributes.Add("disabled", "disabled");
            string sharedCss = "tracking-normal text-gray-500 md:text-lg";
            if (ddlTipoCliente.SelectedValue == "Empresa")
            {
                txtRazonSocial.Attributes.Remove("disabled");
                lblRazonSocial.CssClass = sharedCss;
            }
            else
            {
                lblRazonSocial.CssClass = $"line-through {sharedCss}";
                txtRazonSocial.Attributes.Add("disabled", "disabled");
            }
        }

        protected void cvMinNombreCliente_OnServerValidate_ServerValidate(object source, ServerValidateEventArgs args)
        {
            try
            {
                args.IsValid = args.Value.Length >= 5;
            }
            catch (Exception)
            {
                args.IsValid = false;
            }
        }

        protected void cvMinNombreProducto_OnServerValidate_OnServerValidate_ServerValidate(object source, ServerValidateEventArgs args)
        {
            try
            {
                args.IsValid = args.Value.Length >= 10;
            }
            catch (Exception)
            {
                args.IsValid = false;
            }
        }

        protected void cvMinDescripcionProducto_OnServerValidate_OnServerValidate_ServerValidate(object source, ServerValidateEventArgs args)
        {
            try
            {
                args.IsValid = args.Value.Length >= 10;
            }
            catch (Exception)
            {
                args.IsValid = false;
            }
        }
    }
}