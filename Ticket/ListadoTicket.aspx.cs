using Modelo.controladores;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace peces_deploy.Ticket
{
    public partial class ListadoTicket : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string msg = Request.Params["message"];
            if (msg != null)
            {
                lblMessage.Text = msg;
            }

            string filter = Request.Params["filter"];

            if (filter != null)
            {
                CargarBusqueda(filter);
            }
            else
            {
                CargarListado();
            }
        }

        private void CargarListado()
        {
            gdvListadoTicket.DataSource = null;
            var list = TicketController.ReadAll();

            if (list.Count == 0)
            {
                lblMessage.Text = "No existen registros disponibles para mostrar";
            }
            else
            {
                lblMessage.Text = $"Se han encontrado {list.Count} tickets";
                gdvListadoTicket.DataSource = list;
                gdvListadoTicket.DataBind();
            }
        }

        private void CargarBusqueda(string filter)
        {
            gdvListadoTicket.DataSource = null;
            var search = TicketController.Search(filter);

            if (search.Count == 0)
            {
                lblMessage.Text += $"No existen tickets con el filtro '{filter}'";
            }
            else
            {
                lblMessage.Text = $"Se han encontrado {search.Count} con el filtro '{filter}'";
                gdvListadoTicket.DataSource = search;
                gdvListadoTicket.DataBind();
            }
        }

        protected void gdvListadoTicket_SelectedIndexChanged(object sender, EventArgs e)
        {
            int row = gdvListadoTicket.SelectedIndex;
            string value = gdvListadoTicket.DataKeys[row].Value.ToString();
            string url = $"~/Ticket/DetalleTicket.aspx?id={value}";
            Response.Redirect(url);
        }
    }
}