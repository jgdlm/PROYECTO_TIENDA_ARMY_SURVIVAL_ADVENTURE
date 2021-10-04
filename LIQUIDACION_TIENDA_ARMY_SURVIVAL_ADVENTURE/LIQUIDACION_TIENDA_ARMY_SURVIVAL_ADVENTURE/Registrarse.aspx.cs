using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;//Añadimos este usìng para la SQLConnection


namespace LIQUIDACION_TIENDA_ARMY_SURVIVAL_ADVENTURE
{
    public partial class Registrarse : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnRegistrarse_Click(object sender, EventArgs e)
        {
            string s = System.Configuration.ConfigurationManager.ConnectionStrings["cadenaconexion1"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();
            SqlCommand comando = new SqlCommand("insert into CLIENTES (DNI,NOMBRE,APELLIDO1,APELLIDO2,DIRECCION,CIUDAD,PROVINCIA,CODIGOPOSTAL,TELEFONO,EMAIL,NOMBREUSUARIO,CONTRASENA) values('" + this.TextDni.Text + "','" + this.TextNombre.Text + "','" + this.TextApellido1.Text + "','" + this.TextApellido2.Text + "','" + this.TextDireccion.Text + "','" + this.TextCiudad.Text + "','" + this.TextProvincia.Text + "'," + this.TextCodigoPostal.Text + ",'" + this.TextTelefono.Text + "','" + this.TextEmail.Text + "','" + this.TextNombreUsuario.Text + "','" + this.TextPassword.Text + "')", conexion);
            comando.ExecuteNonQuery();
            

                if (IsValid && ChkPolitica.Checked == true)
                    {
                     Response.Redirect("Tienda.aspx", true);
                     Label1.Text = "Se Registró el usuario";
                    }

                    else if (ChkPolitica.Checked == false)
                    {
                      Label16.Text = " Debe Aceptar la Política de Privacidad y los términos y condiciones Generales de la Compra";
                    }

            conexion.Close();
        }
       
        
    }
}