using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;//Añadimos este usìng para la SQLConnection


namespace LIQUIDACION_TIENDA_ARMY_SURVIVAL_ADVENTURE
{
    public partial class Factura : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            IDPEDIDO.Text = Request.QueryString["pedido"];
        }

    }
}