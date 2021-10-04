using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;//Añadimos este usìng para la SQLConnection

namespace LIQUIDACION_TIENDA_ARMY_SURVIVAL_ADVENTURE
{
    public partial class InicioSesion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           
        }

        protected void BtnInicioSesion_Click(object sender, EventArgs e)
        {
      
                string s = System.Configuration.ConfigurationManager.ConnectionStrings["cadenaconexion1"].ConnectionString;
                SqlConnection conexion = new SqlConnection(s);
                conexion.Open();
                SqlCommand comando = new SqlCommand("Select NOMBREUSUARIO, CONTRASENA" +
                    " FROM CLIENTES WHERE NOMBREUSUARIO='" + this.TextUsuario.Text + "' AND CONTRASENA='" + this.Textcontrasena.Text + "'", conexion);
                SqlDataReader registro = comando.ExecuteReader();
                if (registro.Read())
                {
                    Response.Redirect("Tienda.aspx",true);
                }
                else
                {
                    this.Label4.Text = "NO EXISTE EL USUARIO NO PUEDE INICIAR SESIÓN";
                }
                conexion.Close();
        }
    }
}