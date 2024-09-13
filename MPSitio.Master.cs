using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace peces_deploy
{
    public partial class MPSitio : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnFiltrar_Click(object sender, EventArgs e)
        {
            string filter = txtFiltro.Text.ToLower();

            string url = $"~/Ticket/ListadoTicket.aspx?filter={filter}";

            Response.Redirect(url);
        }
    }
}