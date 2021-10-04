using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;//Añadimos este usìng para la SQLConnection

namespace LIQUIDACION_TIENDA_ARMY_SURVIVAL_ADVENTURE
{

    public partial class Tienda : System.Web.UI.Page
    {
        DateTime fecha = DateTime.Now;
        string pedido;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed1_Click(object sender, ImageClickEventArgs e)
        {

        }
        //60 PRODUCTOS, BOTONES AÑADIR PRODUCTO CON SU COLOR Y CANTIDAD
        protected void BtnCompraCartucheraDobleBomBoscoso_Click(object sender, EventArgs e)
        {
            string s = System.Configuration.ConfigurationManager.ConnectionStrings["cadenaconexion1"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();
            decimal TOTAL = int.Parse(DropDownList2StockCartucheraDobleBomBoscoso.SelectedValue) * decimal.Parse(TextPRECIO.Text);
            
            TextTOTAL.Text = TOTAL.ToString();
            String TOTALFINAL= TextTOTAL.Text.Replace(",", ".");
            TextPRECIO.Text = TextPRECIO.ToString();
            String PRECIOUNIDAD = TextTOTAL.Text.Replace(",", ".");

            SqlCommand comando = new SqlCommand("insert into PEDIDOS (FECHA,IDCLIENTE,NOMBRE,APELLIDO1,APELLIDO2,DNI,DIRECCION,CIUDAD,PROVINCIA,CODIGOPOSTAL,TELEFONO,NUMERO_REFERENCIA,NOMBREPRODUCTO,COLOR,CANTIDAD,PRECIO,TOTAL) " +
                "values('" + fecha.ToString() + "'," + this.TextIDCLIENTE.Text + ",'" + this.TextNOMBRE.Text + "','" + this.TextAPELLIDO1.Text + "','" + this.TextAPELLIDO2.Text + "','" + this.TextDNI.Text + "','" + this.TextDIRECCION.Text + "','" + this.TextCIUDAD.Text + "','" + this.TextPROVINCIA.Text + "'," + this.TextCODIGOPOSTAL.Text + ",'" + this.TextTELEFONO.Text + "','" + this.Labelnumref1.Text + "','" + this.TextNOMBREPRODUCTO.Text + "','" + this.DropDownList1ColorCartucheraDobleBomBoscoso.SelectedValue + "'," + this.DropDownList2StockCartucheraDobleBomBoscoso.SelectedValue + "," + PRECIOUNIDAD + "," + TOTALFINAL +")", conexion);
            comando.ExecuteNonQuery();


            
            LabelPedirPedido.Text = "EL PRODUCTO SE AÑADIÓ AL PEDIDO";

            conexion.Close();
        }

        protected void BtnCompraCartucheraDobleBomAridoPixel_Click(object sender, EventArgs e)
        {
            string s = System.Configuration.ConfigurationManager.ConnectionStrings["cadenaconexion1"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();
            decimal TOTAL = int.Parse(DropDownList2StockCartucheraDobleBomAridoPixel.SelectedValue) * decimal.Parse(TextPRECIO.Text);

            TextTOTAL.Text = TOTAL.ToString();
            String TOTALFINAL = TextTOTAL.Text.Replace(",", ".");
            TextPRECIO.Text = TextPRECIO.ToString();
            String PRECIOUNIDAD = TextTOTAL.Text.Replace(",", ".");

            SqlCommand comando = new SqlCommand("insert into PEDIDOS (FECHA,IDCLIENTE,NOMBRE,APELLIDO1,APELLIDO2,DNI,DIRECCION,CIUDAD,PROVINCIA,CODIGOPOSTAL,TELEFONO,NUMERO_REFERENCIA,NOMBREPRODUCTO,COLOR,CANTIDAD,PRECIO,TOTAL) " +
                "values('" + fecha.ToString() + "'," + this.TextIDCLIENTE.Text + ",'" + this.TextNOMBRE.Text + "','" + this.TextAPELLIDO1.Text + "','" + this.TextAPELLIDO2.Text + "','" + this.TextDNI.Text + "','" + this.TextDIRECCION.Text + "','" + this.TextCIUDAD.Text + "','" + this.TextPROVINCIA.Text + "'," + this.TextCODIGOPOSTAL.Text + ",'" + this.TextTELEFONO.Text + "','" + this.Labelnumref37.Text + "','" + this.TextNOMBREPRODUCTO.Text + "','" + this.DropDownList1ColorCartucheraDobleBomAridoPixel.SelectedValue + "'," + this.DropDownList2StockCartucheraDobleBomAridoPixel.SelectedValue + "," + PRECIOUNIDAD + "," + TOTALFINAL + ")", conexion);
            comando.ExecuteNonQuery();



            LabelPedirPedido.Text = "EL PRODUCTO SE AÑADIÓ AL PEDIDO";

            conexion.Close();
        }


        protected void BtnComprarRiñoneraBoscoso_Click(object sender, EventArgs e)
        {
            string s = System.Configuration.ConfigurationManager.ConnectionStrings["cadenaconexion1"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();
            decimal TOTAL = int.Parse(DropDownList2StockRiñoneraBoscoso.SelectedValue) * decimal.Parse(TextPRECIO.Text);

            TextTOTAL.Text = TOTAL.ToString();
            String TOTALFINAL = TextTOTAL.Text.Replace(",", ".");
            TextPRECIO.Text = TextPRECIO.ToString();
            String PRECIOUNIDAD = TextTOTAL.Text.Replace(",", ".");

            SqlCommand comando = new SqlCommand("insert into PEDIDOS (FECHA,IDCLIENTE,NOMBRE,APELLIDO1,APELLIDO2,DNI,DIRECCION,CIUDAD,PROVINCIA,CODIGOPOSTAL,TELEFONO,NUMERO_REFERENCIA,NOMBREPRODUCTO,COLOR,CANTIDAD,PRECIO,TOTAL) " +
                "values('" + fecha.ToString() + "'," + this.TextIDCLIENTE.Text + ",'" + this.TextNOMBRE.Text + "','" + this.TextAPELLIDO1.Text + "','" + this.TextAPELLIDO2.Text + "','" + this.TextDNI.Text + "','" + this.TextDIRECCION.Text + "','" + this.TextCIUDAD.Text + "','" + this.TextPROVINCIA.Text + "'," + this.TextCODIGOPOSTAL.Text + ",'" + this.TextTELEFONO.Text + "','" + this.Labelnumref2.Text + "','" + this.TextNOMBREPRODUCTO.Text + "','" + this.DropDownList1ColorRiñoneraBoscoso.SelectedValue + "'," + this.DropDownList2StockRiñoneraBoscoso.SelectedValue + "," + PRECIOUNIDAD + "," + TOTALFINAL + ")", conexion);
            comando.ExecuteNonQuery();



            LabelPedirPedido.Text = "EL PRODUCTO SE AÑADIÓ AL PEDIDO";

            conexion.Close();
        }

        protected void BtnComprarRiñoneraAridoPixel_Click(object sender, EventArgs e)
        {
            string s = System.Configuration.ConfigurationManager.ConnectionStrings["cadenaconexion1"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();
            decimal TOTAL = int.Parse(DropDownList2StockRiñoneraAridoPixel.SelectedValue) * decimal.Parse(TextPRECIO.Text);

            TextTOTAL.Text = TOTAL.ToString();
            String TOTALFINAL = TextTOTAL.Text.Replace(",", ".");
            TextPRECIO.Text = TextPRECIO.ToString();
            String PRECIOUNIDAD = TextTOTAL.Text.Replace(",", ".");

            SqlCommand comando = new SqlCommand("insert into PEDIDOS (FECHA,IDCLIENTE,NOMBRE,APELLIDO1,APELLIDO2,DNI,DIRECCION,CIUDAD,PROVINCIA,CODIGOPOSTAL,TELEFONO,NUMERO_REFERENCIA,NOMBREPRODUCTO,COLOR,CANTIDAD,PRECIO,TOTAL) " +
                "values('" + fecha.ToString() + "'," + this.TextIDCLIENTE.Text + ",'" + this.TextNOMBRE.Text + "','" + this.TextAPELLIDO1.Text + "','" + this.TextAPELLIDO2.Text + "','" + this.TextDNI.Text + "','" + this.TextDIRECCION.Text + "','" + this.TextCIUDAD.Text + "','" + this.TextPROVINCIA.Text + "'," + this.TextCODIGOPOSTAL.Text + ",'" + this.TextTELEFONO.Text + "','" + this.Labelnumref38.Text + "','" + this.TextNOMBREPRODUCTO.Text + "','" + this.DropDownList1ColorRiñoneraAridoPixel.SelectedValue + "'," + this.DropDownList2StockRiñoneraAridoPixel.SelectedValue + "," + PRECIOUNIDAD + "," + TOTALFINAL + ")", conexion);
            comando.ExecuteNonQuery();



            LabelPedirPedido.Text = "EL PRODUCTO SE AÑADIÓ AL PEDIDO";

            conexion.Close();
        }


        protected void BtnComprarFundaGafasBoscoso_Click(object sender, EventArgs e)
        {
            string s = System.Configuration.ConfigurationManager.ConnectionStrings["cadenaconexion1"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();
            decimal TOTAL = int.Parse(DropDownList2StockFundaGafasBoscoso.SelectedValue) * decimal.Parse(TextPRECIO.Text);

            TextTOTAL.Text = TOTAL.ToString();
            String TOTALFINAL = TextTOTAL.Text.Replace(",", ".");
            TextPRECIO.Text = TextPRECIO.ToString();
            String PRECIOUNIDAD = TextTOTAL.Text.Replace(",", ".");

            SqlCommand comando = new SqlCommand("insert into PEDIDOS (FECHA,IDCLIENTE,NOMBRE,APELLIDO1,APELLIDO2,DNI,DIRECCION,CIUDAD,PROVINCIA,CODIGOPOSTAL,TELEFONO,NUMERO_REFERENCIA,NOMBREPRODUCTO,COLOR,CANTIDAD,PRECIO,TOTAL) " +
                "values('" + fecha.ToString() + "'," + this.TextIDCLIENTE.Text + ",'" + this.TextNOMBRE.Text + "','" + this.TextAPELLIDO1.Text + "','" + this.TextAPELLIDO2.Text + "','" + this.TextDNI.Text + "','" + this.TextDIRECCION.Text + "','" + this.TextCIUDAD.Text + "','" + this.TextPROVINCIA.Text + "'," + this.TextCODIGOPOSTAL.Text + ",'" + this.TextTELEFONO.Text + "','" + this.Labelnumref3.Text + "','" + this.TextNOMBREPRODUCTO.Text + "','" + this.DropDownList1ColorFundaGafasBoscoso.SelectedValue + "'," + this.DropDownList2StockFundaGafasBoscoso.SelectedValue + "," + PRECIOUNIDAD + "," + TOTALFINAL + ")", conexion);
            comando.ExecuteNonQuery();



            LabelPedirPedido.Text = "EL PRODUCTO SE AÑADIÓ AL PEDIDO";

            conexion.Close();
        }



        protected void BtnComprarFundaGafasVerde_Click(object sender, EventArgs e)
        {
            string s = System.Configuration.ConfigurationManager.ConnectionStrings["cadenaconexion1"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();
            decimal TOTAL = int.Parse(DropDownList2StockFundaGafasVerde.SelectedValue) * decimal.Parse(TextPRECIO.Text);

            TextTOTAL.Text = TOTAL.ToString();
            String TOTALFINAL = TextTOTAL.Text.Replace(",", ".");
            TextPRECIO.Text = TextPRECIO.ToString();
            String PRECIOUNIDAD = TextTOTAL.Text.Replace(",", ".");

            SqlCommand comando = new SqlCommand("insert into PEDIDOS (FECHA,IDCLIENTE,NOMBRE,APELLIDO1,APELLIDO2,DNI,DIRECCION,CIUDAD,PROVINCIA,CODIGOPOSTAL,TELEFONO,NUMERO_REFERENCIA,NOMBREPRODUCTO,COLOR,CANTIDAD,PRECIO,TOTAL) " +
                "values('" + fecha.ToString() + "'," + this.TextIDCLIENTE.Text + ",'" + this.TextNOMBRE.Text + "','" + this.TextAPELLIDO1.Text + "','" + this.TextAPELLIDO2.Text + "','" + this.TextDNI.Text + "','" + this.TextDIRECCION.Text + "','" + this.TextCIUDAD.Text + "','" + this.TextPROVINCIA.Text + "'," + this.TextCODIGOPOSTAL.Text + ",'" + this.TextTELEFONO.Text + "','" + this.Labelnumref14.Text + "','" + this.TextNOMBREPRODUCTO.Text + "','" + this.DropDownList1ColorFundaGafasVerde.SelectedValue + "'," + this.DropDownList2StockFundaGafasVerde.SelectedValue + "," + PRECIOUNIDAD + "," + TOTALFINAL + ")", conexion);
            comando.ExecuteNonQuery();



            LabelPedirPedido.Text = "EL PRODUCTO SE AÑADIÓ AL PEDIDO";

            conexion.Close();
        }

        protected void BtnComprarFundaGafasNegro_Click(object sender, EventArgs e)
        {
            string s = System.Configuration.ConfigurationManager.ConnectionStrings["cadenaconexion1"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();
            decimal TOTAL = int.Parse(DropDownList2StockFundaGafasNegro.SelectedValue) * decimal.Parse(TextPRECIO.Text);

            TextTOTAL.Text = TOTAL.ToString();
            String TOTALFINAL = TextTOTAL.Text.Replace(",", ".");
            TextPRECIO.Text = TextPRECIO.ToString();
            String PRECIOUNIDAD = TextTOTAL.Text.Replace(",", ".");

            SqlCommand comando = new SqlCommand("insert into PEDIDOS (FECHA,IDCLIENTE,NOMBRE,APELLIDO1,APELLIDO2,DNI,DIRECCION,CIUDAD,PROVINCIA,CODIGOPOSTAL,TELEFONO,NUMERO_REFERENCIA,NOMBREPRODUCTO,COLOR,CANTIDAD,PRECIO,TOTAL) " +
                "values('" + fecha.ToString() + "'," + this.TextIDCLIENTE.Text + ",'" + this.TextNOMBRE.Text + "','" + this.TextAPELLIDO1.Text + "','" + this.TextAPELLIDO2.Text + "','" + this.TextDNI.Text + "','" + this.TextDIRECCION.Text + "','" + this.TextCIUDAD.Text + "','" + this.TextPROVINCIA.Text + "'," + this.TextCODIGOPOSTAL.Text + ",'" + this.TextTELEFONO.Text + "','" + this.Labelnumref26.Text + "','" + this.TextNOMBREPRODUCTO.Text + "','" + this.DropDownList1ColorFundaGafasNegro.SelectedValue + "'," + this.DropDownList2StockFundaGafasNegro.SelectedValue + "," + PRECIOUNIDAD + "," + TOTALFINAL + ")", conexion);
            comando.ExecuteNonQuery();



            LabelPedirPedido.Text = "EL PRODUCTO SE AÑADIÓ AL PEDIDO";

            conexion.Close();
        }



        protected void BtnComprarFundaGafasAridoPixel_Click(object sender, EventArgs e)
        {
            string s = System.Configuration.ConfigurationManager.ConnectionStrings["cadenaconexion1"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();
            decimal TOTAL = int.Parse(DropDownList2StockFundaGafasAridoPixel.SelectedValue) * decimal.Parse(TextPRECIO.Text);

            TextTOTAL.Text = TOTAL.ToString();
            String TOTALFINAL = TextTOTAL.Text.Replace(",", ".");
            TextPRECIO.Text = TextPRECIO.ToString();
            String PRECIOUNIDAD = TextTOTAL.Text.Replace(",", ".");

            SqlCommand comando = new SqlCommand("insert into PEDIDOS (FECHA,IDCLIENTE,NOMBRE,APELLIDO1,APELLIDO2,DNI,DIRECCION,CIUDAD,PROVINCIA,CODIGOPOSTAL,TELEFONO,NUMERO_REFERENCIA,NOMBREPRODUCTO,COLOR,CANTIDAD,PRECIO,TOTAL) " +
                "values('" + fecha.ToString() + "'," + this.TextIDCLIENTE.Text + ",'" + this.TextNOMBRE.Text + "','" + this.TextAPELLIDO1.Text + "','" + this.TextAPELLIDO2.Text + "','" + this.TextDNI.Text + "','" + this.TextDIRECCION.Text + "','" + this.TextCIUDAD.Text + "','" + this.TextPROVINCIA.Text + "'," + this.TextCODIGOPOSTAL.Text + ",'" + this.TextTELEFONO.Text + "','" + this.Labelnumref45.Text + "','" + this.TextNOMBREPRODUCTO.Text + "','" + this.DropDownList1ColorFundaGafasAridoPixel.SelectedValue + "'," + this.DropDownList2StockFundaGafasAridoPixel.SelectedValue + "," + PRECIOUNIDAD + "," + TOTALFINAL + ")", conexion);
            comando.ExecuteNonQuery();



            LabelPedirPedido.Text = "EL PRODUCTO SE AÑADIÓ AL PEDIDO";

            conexion.Close();
        }



        protected void BtnComprarFundaNavajaMultiBoscoso_Click(object sender, EventArgs e)
        {
            string s = System.Configuration.ConfigurationManager.ConnectionStrings["cadenaconexion1"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();
            decimal TOTAL = int.Parse(DropDownList2StockFundaNavajaMultiBoscoso.SelectedValue) * decimal.Parse(TextPRECIO.Text);

            TextTOTAL.Text = TOTAL.ToString();
            String TOTALFINAL = TextTOTAL.Text.Replace(",", ".");
            TextPRECIO.Text = TextPRECIO.ToString();
            String PRECIOUNIDAD = TextTOTAL.Text.Replace(",", ".");

            SqlCommand comando = new SqlCommand("insert into PEDIDOS (FECHA,IDCLIENTE,NOMBRE,APELLIDO1,APELLIDO2,DNI,DIRECCION,CIUDAD,PROVINCIA,CODIGOPOSTAL,TELEFONO,NUMERO_REFERENCIA,NOMBREPRODUCTO,COLOR,CANTIDAD,PRECIO,TOTAL) " +
                "values('" + fecha.ToString() + "'," + this.TextIDCLIENTE.Text + ",'" + this.TextNOMBRE.Text + "','" + this.TextAPELLIDO1.Text + "','" + this.TextAPELLIDO2.Text + "','" + this.TextDNI.Text + "','" + this.TextDIRECCION.Text + "','" + this.TextCIUDAD.Text + "','" + this.TextPROVINCIA.Text + "'," + this.TextCODIGOPOSTAL.Text + ",'" + this.TextTELEFONO.Text + "','" + this.Labelnumref4.Text + "','" + this.TextNOMBREPRODUCTO.Text + "','" + this.DropDownList1ColorFundaNavajaMultiBoscoso.SelectedValue + "'," + this.DropDownList2StockFundaNavajaMultiBoscoso.SelectedValue + "," + PRECIOUNIDAD + "," + TOTALFINAL + ")", conexion);
            comando.ExecuteNonQuery();



            LabelPedirPedido.Text = "EL PRODUCTO SE AÑADIÓ AL PEDIDO";

            conexion.Close();
        }



        protected void BtnComprarFundaNavajaMultiVerde_Click(object sender, EventArgs e)
        {
            string s = System.Configuration.ConfigurationManager.ConnectionStrings["cadenaconexion1"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();
            decimal TOTAL = int.Parse(DropDownList2StockFundaNavajaMultiVerde.SelectedValue) * decimal.Parse(TextPRECIO.Text);

            TextTOTAL.Text = TOTAL.ToString();
            String TOTALFINAL = TextTOTAL.Text.Replace(",", ".");
            TextPRECIO.Text = TextPRECIO.ToString();
            String PRECIOUNIDAD = TextTOTAL.Text.Replace(",", ".");

            SqlCommand comando = new SqlCommand("insert into PEDIDOS (FECHA,IDCLIENTE,NOMBRE,APELLIDO1,APELLIDO2,DNI,DIRECCION,CIUDAD,PROVINCIA,CODIGOPOSTAL,TELEFONO,NUMERO_REFERENCIA,NOMBREPRODUCTO,COLOR,CANTIDAD,PRECIO,TOTAL) " +
                "values('" + fecha.ToString() + "'," + this.TextIDCLIENTE.Text + ",'" + this.TextNOMBRE.Text + "','" + this.TextAPELLIDO1.Text + "','" + this.TextAPELLIDO2.Text + "','" + this.TextDNI.Text + "','" + this.TextDIRECCION.Text + "','" + this.TextCIUDAD.Text + "','" + this.TextPROVINCIA.Text + "'," + this.TextCODIGOPOSTAL.Text + ",'" + this.TextTELEFONO.Text + "','" + this.Labelnumref15.Text + "','" + this.TextNOMBREPRODUCTO.Text + "','" + this.DropDownList1ColorFundaNavajaMultiVerde.SelectedValue + "'," + this.DropDownList2StockFundaNavajaMultiVerde.SelectedValue + "," + PRECIOUNIDAD + "," + TOTALFINAL + ")", conexion);
            comando.ExecuteNonQuery();



            LabelPedirPedido.Text = "EL PRODUCTO SE AÑADIÓ AL PEDIDO";

            conexion.Close();
        }



        protected void BtnComprarFundaNavajaMultiNegro_Click(object sender, EventArgs e)
        {
            string s = System.Configuration.ConfigurationManager.ConnectionStrings["cadenaconexion1"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();
            decimal TOTAL = int.Parse(DropDownList2StockFundaNavajaMultiNegro.SelectedValue) * decimal.Parse(TextPRECIO.Text);

            TextTOTAL.Text = TOTAL.ToString();
            String TOTALFINAL = TextTOTAL.Text.Replace(",", ".");
            TextPRECIO.Text = TextPRECIO.ToString();
            String PRECIOUNIDAD = TextTOTAL.Text.Replace(",", ".");

            SqlCommand comando = new SqlCommand("insert into PEDIDOS (FECHA,IDCLIENTE,NOMBRE,APELLIDO1,APELLIDO2,DNI,DIRECCION,CIUDAD,PROVINCIA,CODIGOPOSTAL,TELEFONO,NUMERO_REFERENCIA,NOMBREPRODUCTO,COLOR,CANTIDAD,PRECIO,TOTAL) " +
                "values('" + fecha.ToString() + "'," + this.TextIDCLIENTE.Text + ",'" + this.TextNOMBRE.Text + "','" + this.TextAPELLIDO1.Text + "','" + this.TextAPELLIDO2.Text + "','" + this.TextDNI.Text + "','" + this.TextDIRECCION.Text + "','" + this.TextCIUDAD.Text + "','" + this.TextPROVINCIA.Text + "'," + this.TextCODIGOPOSTAL.Text + ",'" + this.TextTELEFONO.Text + "','" + this.Labelnumref27.Text + "','" + this.TextNOMBREPRODUCTO.Text + "','" + this.DropDownList1ColorFundaNavajaMultiNegro.SelectedValue + "'," + this.DropDownList2StockFundaNavajaMultiNegro.SelectedValue + "," + PRECIOUNIDAD + "," + TOTALFINAL + ")", conexion);
            comando.ExecuteNonQuery();



            LabelPedirPedido.Text = "EL PRODUCTO SE AÑADIÓ AL PEDIDO";

            conexion.Close();
        }



        protected void BtnComprarFundaNavajaMultiAridoPixel_Click(object sender, EventArgs e)
        {
            string s = System.Configuration.ConfigurationManager.ConnectionStrings["cadenaconexion1"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();
            decimal TOTAL = int.Parse(DropDownList2StockFundaNavajaMultiAridoPixel.SelectedValue) * decimal.Parse(TextPRECIO.Text);

            TextTOTAL.Text = TOTAL.ToString();
            String TOTALFINAL = TextTOTAL.Text.Replace(",", ".");
            TextPRECIO.Text = TextPRECIO.ToString();
            String PRECIOUNIDAD = TextTOTAL.Text.Replace(",", ".");

            SqlCommand comando = new SqlCommand("insert into PEDIDOS (FECHA,IDCLIENTE,NOMBRE,APELLIDO1,APELLIDO2,DNI,DIRECCION,CIUDAD,PROVINCIA,CODIGOPOSTAL,TELEFONO,NUMERO_REFERENCIA,NOMBREPRODUCTO,COLOR,CANTIDAD,PRECIO,TOTAL) " +
                "values('" + fecha.ToString() + "'," + this.TextIDCLIENTE.Text + ",'" + this.TextNOMBRE.Text + "','" + this.TextAPELLIDO1.Text + "','" + this.TextAPELLIDO2.Text + "','" + this.TextDNI.Text + "','" + this.TextDIRECCION.Text + "','" + this.TextCIUDAD.Text + "','" + this.TextPROVINCIA.Text + "'," + this.TextCODIGOPOSTAL.Text + ",'" + this.TextTELEFONO.Text + "','" + this.Labelnumref43.Text + "','" + this.TextNOMBREPRODUCTO.Text + "','" + this.DropDownList1ColorFundaNavajaMultiAridoPixel.SelectedValue + "'," + this.DropDownList2StockFundaNavajaMultiAridoPixel.SelectedValue + "," + PRECIOUNIDAD + "," + TOTALFINAL + ")", conexion);
            comando.ExecuteNonQuery();



            LabelPedirPedido.Text = "EL PRODUCTO SE AÑADIÓ AL PEDIDO";

            conexion.Close();
        }



        protected void BtnComprarFundaAnchaTlfnoBoscoso_Click(object sender, EventArgs e)
        {
            string s = System.Configuration.ConfigurationManager.ConnectionStrings["cadenaconexion1"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();
            decimal TOTAL = int.Parse(DropDownList2StockFundaAnchaTlfnoBoscoso.SelectedValue) * decimal.Parse(TextPRECIO.Text);

            TextTOTAL.Text = TOTAL.ToString();
            String TOTALFINAL = TextTOTAL.Text.Replace(",", ".");
            TextPRECIO.Text = TextPRECIO.ToString();
            String PRECIOUNIDAD = TextTOTAL.Text.Replace(",", ".");

            SqlCommand comando = new SqlCommand("insert into PEDIDOS (FECHA,IDCLIENTE,NOMBRE,APELLIDO1,APELLIDO2,DNI,DIRECCION,CIUDAD,PROVINCIA,CODIGOPOSTAL,TELEFONO,NUMERO_REFERENCIA,NOMBREPRODUCTO,COLOR,CANTIDAD,PRECIO,TOTAL) " +
                "values('" + fecha.ToString() + "'," + this.TextIDCLIENTE.Text + ",'" + this.TextNOMBRE.Text + "','" + this.TextAPELLIDO1.Text + "','" + this.TextAPELLIDO2.Text + "','" + this.TextDNI.Text + "','" + this.TextDIRECCION.Text + "','" + this.TextCIUDAD.Text + "','" + this.TextPROVINCIA.Text + "'," + this.TextCODIGOPOSTAL.Text + ",'" + this.TextTELEFONO.Text + "','" + this.Labelnumref5.Text + "','" + this.TextNOMBREPRODUCTO.Text + "','" + this.DropDownList1ColorFundaAnchaTlfnoBoscoso.SelectedValue + "'," + this.DropDownList2StockFundaAnchaTlfnoBoscoso.SelectedValue + "," + PRECIOUNIDAD + "," + TOTALFINAL + ")", conexion);
            comando.ExecuteNonQuery();



            LabelPedirPedido.Text = "EL PRODUCTO SE AÑADIÓ AL PEDIDO";

            conexion.Close();
        }



        protected void BtnComprarFundaAnchaTlfnoVerde_Click(object sender, EventArgs e)
        {
            string s = System.Configuration.ConfigurationManager.ConnectionStrings["cadenaconexion1"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();
            decimal TOTAL = int.Parse(DropDownList2StockFundaAnchaTlfnoVerde.SelectedValue) * decimal.Parse(TextPRECIO.Text);

            TextTOTAL.Text = TOTAL.ToString();
            String TOTALFINAL = TextTOTAL.Text.Replace(",", ".");
            TextPRECIO.Text = TextPRECIO.ToString();
            String PRECIOUNIDAD = TextTOTAL.Text.Replace(",", ".");

            SqlCommand comando = new SqlCommand("insert into PEDIDOS (FECHA,IDCLIENTE,NOMBRE,APELLIDO1,APELLIDO2,DNI,DIRECCION,CIUDAD,PROVINCIA,CODIGOPOSTAL,TELEFONO,NUMERO_REFERENCIA,NOMBREPRODUCTO,COLOR,CANTIDAD,PRECIO,TOTAL) " +
                "values('" + fecha.ToString() + "'," + this.TextIDCLIENTE.Text + ",'" + this.TextNOMBRE.Text + "','" + this.TextAPELLIDO1.Text + "','" + this.TextAPELLIDO2.Text + "','" + this.TextDNI.Text + "','" + this.TextDIRECCION.Text + "','" + this.TextCIUDAD.Text + "','" + this.TextPROVINCIA.Text + "'," + this.TextCODIGOPOSTAL.Text + ",'" + this.TextTELEFONO.Text + "','" + this.Labelnumref16.Text + "','" + this.TextNOMBREPRODUCTO.Text + "','" + this.DropDownList1ColorFundaAnchaTlfnoVerde.SelectedValue + "'," + this.DropDownList2StockFundaAnchaTlfnoVerde.SelectedValue + "," + PRECIOUNIDAD + "," + TOTALFINAL + ")", conexion);
            comando.ExecuteNonQuery();



            LabelPedirPedido.Text = "EL PRODUCTO SE AÑADIÓ AL PEDIDO";

            conexion.Close();
        }



        protected void BtnComprarFundaAnchaTlfnoNegro_Click(object sender, EventArgs e)
        {
            string s = System.Configuration.ConfigurationManager.ConnectionStrings["cadenaconexion1"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();
            decimal TOTAL = int.Parse(DropDownList2StockFundaAnchaTlfnoNegro.SelectedValue) * decimal.Parse(TextPRECIO.Text);

            TextTOTAL.Text = TOTAL.ToString();
            String TOTALFINAL = TextTOTAL.Text.Replace(",", ".");
            TextPRECIO.Text = TextPRECIO.ToString();
            String PRECIOUNIDAD = TextTOTAL.Text.Replace(",", ".");

            SqlCommand comando = new SqlCommand("insert into PEDIDOS (FECHA,IDCLIENTE,NOMBRE,APELLIDO1,APELLIDO2,DNI,DIRECCION,CIUDAD,PROVINCIA,CODIGOPOSTAL,TELEFONO,NUMERO_REFERENCIA,NOMBREPRODUCTO,COLOR,CANTIDAD,PRECIO,TOTAL) " +
                "values('" + fecha.ToString() + "'," + this.TextIDCLIENTE.Text + ",'" + this.TextNOMBRE.Text + "','" + this.TextAPELLIDO1.Text + "','" + this.TextAPELLIDO2.Text + "','" + this.TextDNI.Text + "','" + this.TextDIRECCION.Text + "','" + this.TextCIUDAD.Text + "','" + this.TextPROVINCIA.Text + "'," + this.TextCODIGOPOSTAL.Text + ",'" + this.TextTELEFONO.Text + "','" + this.Labelnumref28.Text + "','" + this.TextNOMBREPRODUCTO.Text + "','" + this.DropDownList1ColorFundaAnchaTlfnoNegro.SelectedValue + "'," + this.DropDownList2StockFundaAnchaTlfnoNegro.SelectedValue + "," + PRECIOUNIDAD + "," + TOTALFINAL + ")", conexion);
            comando.ExecuteNonQuery();



            LabelPedirPedido.Text = "EL PRODUCTO SE AÑADIÓ AL PEDIDO";

            conexion.Close();
        }



        protected void BtnComprarFundaBrujulaBoscoso_Click(object sender, EventArgs e)
        {
            string s = System.Configuration.ConfigurationManager.ConnectionStrings["cadenaconexion1"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();
            decimal TOTAL = int.Parse(DropDownList2StockFundaBrujulaBoscoso.SelectedValue) * decimal.Parse(TextPRECIO.Text);

            TextTOTAL.Text = TOTAL.ToString();
            String TOTALFINAL = TextTOTAL.Text.Replace(",", ".");
            TextPRECIO.Text = TextPRECIO.ToString();
            String PRECIOUNIDAD = TextTOTAL.Text.Replace(",", ".");

            SqlCommand comando = new SqlCommand("insert into PEDIDOS (FECHA,IDCLIENTE,NOMBRE,APELLIDO1,APELLIDO2,DNI,DIRECCION,CIUDAD,PROVINCIA,CODIGOPOSTAL,TELEFONO,NUMERO_REFERENCIA,NOMBREPRODUCTO,COLOR,CANTIDAD,PRECIO,TOTAL) " +
                "values('" + fecha.ToString() + "'," + this.TextIDCLIENTE.Text + ",'" + this.TextNOMBRE.Text + "','" + this.TextAPELLIDO1.Text + "','" + this.TextAPELLIDO2.Text + "','" + this.TextDNI.Text + "','" + this.TextDIRECCION.Text + "','" + this.TextCIUDAD.Text + "','" + this.TextPROVINCIA.Text + "'," + this.TextCODIGOPOSTAL.Text + ",'" + this.TextTELEFONO.Text + "','" + this.Labelnumref6.Text + "','" + this.TextNOMBREPRODUCTO.Text + "','" + this.DropDownList1ColorFundaBrujulaBoscoso.SelectedValue + "'," + this.DropDownList2StockFundaBrujulaBoscoso.SelectedValue + "," + PRECIOUNIDAD + "," + TOTALFINAL + ")", conexion);
            comando.ExecuteNonQuery();



            LabelPedirPedido.Text = "EL PRODUCTO SE AÑADIÓ AL PEDIDO";

            conexion.Close();
        }



        protected void BtnComprarFundaBrujulaverde_Click(object sender, EventArgs e)
        {
            string s = System.Configuration.ConfigurationManager.ConnectionStrings["cadenaconexion1"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();
            decimal TOTAL = int.Parse(DropDownList2StockFundaBrujulaVerde.SelectedValue) * decimal.Parse(TextPRECIO.Text);

            TextTOTAL.Text = TOTAL.ToString();
            String TOTALFINAL = TextTOTAL.Text.Replace(",", ".");
            TextPRECIO.Text = TextPRECIO.ToString();
            String PRECIOUNIDAD = TextTOTAL.Text.Replace(",", ".");

            SqlCommand comando = new SqlCommand("insert into PEDIDOS (FECHA,IDCLIENTE,NOMBRE,APELLIDO1,APELLIDO2,DNI,DIRECCION,CIUDAD,PROVINCIA,CODIGOPOSTAL,TELEFONO,NUMERO_REFERENCIA,NOMBREPRODUCTO,COLOR,CANTIDAD,PRECIO,TOTAL) " +
                "values('" + fecha.ToString() + "'," + this.TextIDCLIENTE.Text + ",'" + this.TextNOMBRE.Text + "','" + this.TextAPELLIDO1.Text + "','" + this.TextAPELLIDO2.Text + "','" + this.TextDNI.Text + "','" + this.TextDIRECCION.Text + "','" + this.TextCIUDAD.Text + "','" + this.TextPROVINCIA.Text + "'," + this.TextCODIGOPOSTAL.Text + ",'" + this.TextTELEFONO.Text + "','" + this.Labelnumref17.Text + "','" + this.TextNOMBREPRODUCTO.Text + "','" + this.DropDownList1ColorFundaBrujulaVerde.SelectedValue + "'," + this.DropDownList2StockFundaBrujulaVerde.SelectedValue + "," + PRECIOUNIDAD + "," + TOTALFINAL + ")", conexion);
            comando.ExecuteNonQuery();



            LabelPedirPedido.Text = "EL PRODUCTO SE AÑADIÓ AL PEDIDO";

            conexion.Close();
        }



        protected void BtnComprarFundaBrujulaNegro_Click(object sender, EventArgs e)
        {
            string s = System.Configuration.ConfigurationManager.ConnectionStrings["cadenaconexion1"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();
            decimal TOTAL = int.Parse(DropDownList2StockFundaBrujulaNegro.SelectedValue) * decimal.Parse(TextPRECIO.Text);

            TextTOTAL.Text = TOTAL.ToString();
            String TOTALFINAL = TextTOTAL.Text.Replace(",", ".");
            TextPRECIO.Text = TextPRECIO.ToString();
            String PRECIOUNIDAD = TextTOTAL.Text.Replace(",", ".");

            SqlCommand comando = new SqlCommand("insert into PEDIDOS (FECHA,IDCLIENTE,NOMBRE,APELLIDO1,APELLIDO2,DNI,DIRECCION,CIUDAD,PROVINCIA,CODIGOPOSTAL,TELEFONO,NUMERO_REFERENCIA,NOMBREPRODUCTO,COLOR,CANTIDAD,PRECIO,TOTAL) " +
                "values('" + fecha.ToString() + "'," + this.TextIDCLIENTE.Text + ",'" + this.TextNOMBRE.Text + "','" + this.TextAPELLIDO1.Text + "','" + this.TextAPELLIDO2.Text + "','" + this.TextDNI.Text + "','" + this.TextDIRECCION.Text + "','" + this.TextCIUDAD.Text + "','" + this.TextPROVINCIA.Text + "'," + this.TextCODIGOPOSTAL.Text + ",'" + this.TextTELEFONO.Text + "','" + this.Labelnumref29.Text + "','" + this.TextNOMBREPRODUCTO.Text + "','" + this.DropDownList1ColorFundaBrujulaNegro.SelectedValue + "'," + this.DropDownList2StockFundaBrujulaNegro.SelectedValue + "," + PRECIOUNIDAD + "," + TOTALFINAL + ")", conexion);
            comando.ExecuteNonQuery();



            LabelPedirPedido.Text = "EL PRODUCTO SE AÑADIÓ AL PEDIDO";

            conexion.Close();
        }



        protected void BtnComprarFundaBrujulaAridoPixel_Click(object sender, EventArgs e)
        {
            string s = System.Configuration.ConfigurationManager.ConnectionStrings["cadenaconexion1"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();
            decimal TOTAL = int.Parse(DropDownList2StockBrujulaAridoPixel.SelectedValue) * decimal.Parse(TextPRECIO.Text);

            TextTOTAL.Text = TOTAL.ToString();
            String TOTALFINAL = TextTOTAL.Text.Replace(",", ".");
            TextPRECIO.Text = TextPRECIO.ToString();
            String PRECIOUNIDAD = TextTOTAL.Text.Replace(",", ".");

            SqlCommand comando = new SqlCommand("insert into PEDIDOS (FECHA,IDCLIENTE,NOMBRE,APELLIDO1,APELLIDO2,DNI,DIRECCION,CIUDAD,PROVINCIA,CODIGOPOSTAL,TELEFONO,NUMERO_REFERENCIA,NOMBREPRODUCTO,COLOR,CANTIDAD,PRECIO,TOTAL) " +
                "values('" + fecha.ToString() + "'," + this.TextIDCLIENTE.Text + ",'" + this.TextNOMBRE.Text + "','" + this.TextAPELLIDO1.Text + "','" + this.TextAPELLIDO2.Text + "','" + this.TextDNI.Text + "','" + this.TextDIRECCION.Text + "','" + this.TextCIUDAD.Text + "','" + this.TextPROVINCIA.Text + "'," + this.TextCODIGOPOSTAL.Text + ",'" + this.TextTELEFONO.Text + "','" + this.Labelnumref46.Text + "','" + this.TextNOMBREPRODUCTO.Text + "','" + this.DropDownList1ColorBrujulaAridoPixel.SelectedValue + "'," + this.DropDownList2StockBrujulaAridoPixel.SelectedValue + "," + PRECIOUNIDAD + "," + TOTALFINAL + ")", conexion);
            comando.ExecuteNonQuery();



            LabelPedirPedido.Text = "EL PRODUCTO SE AÑADIÓ AL PEDIDO";

            conexion.Close();
        }



        protected void BtnComprarFundaCubierto4PiezasBoscoso_Click(object sender, EventArgs e)
        {
            string s = System.Configuration.ConfigurationManager.ConnectionStrings["cadenaconexion1"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();
            decimal TOTAL = int.Parse(DropDownList2StockFundaCubierto4PiezasBoscoso.SelectedValue) * decimal.Parse(TextPRECIO.Text);

            TextTOTAL.Text = TOTAL.ToString();
            String TOTALFINAL = TextTOTAL.Text.Replace(",", ".");
            TextPRECIO.Text = TextPRECIO.ToString();
            String PRECIOUNIDAD = TextTOTAL.Text.Replace(",", ".");

            SqlCommand comando = new SqlCommand("insert into PEDIDOS (FECHA,IDCLIENTE,NOMBRE,APELLIDO1,APELLIDO2,DNI,DIRECCION,CIUDAD,PROVINCIA,CODIGOPOSTAL,TELEFONO,NUMERO_REFERENCIA,NOMBREPRODUCTO,COLOR,CANTIDAD,PRECIO,TOTAL) " +
                "values('" + fecha.ToString() + "'," + this.TextIDCLIENTE.Text + ",'" + this.TextNOMBRE.Text + "','" + this.TextAPELLIDO1.Text + "','" + this.TextAPELLIDO2.Text + "','" + this.TextDNI.Text + "','" + this.TextDIRECCION.Text + "','" + this.TextCIUDAD.Text + "','" + this.TextPROVINCIA.Text + "'," + this.TextCODIGOPOSTAL.Text + ",'" + this.TextTELEFONO.Text + "','" + this.Labelnumref7.Text + "','" + this.TextNOMBREPRODUCTO.Text + "','" + this.DropDownList1ColorFundaCubierto4PiezasBoscoso.SelectedValue + "'," + this.DropDownList2StockFundaCubierto4PiezasBoscoso.SelectedValue + "," + PRECIOUNIDAD + "," + TOTALFINAL + ")", conexion);
            comando.ExecuteNonQuery();



            LabelPedirPedido.Text = "EL PRODUCTO SE AÑADIÓ AL PEDIDO";

            conexion.Close();
        }



        protected void BtnComprarFundaCubierto4PiezasVerde_Click(object sender, EventArgs e)
        {
            string s = System.Configuration.ConfigurationManager.ConnectionStrings["cadenaconexion1"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();
            decimal TOTAL = int.Parse(DropDownList2StockFundaCubierto4PiezasVerde.SelectedValue) * decimal.Parse(TextPRECIO.Text);

            TextTOTAL.Text = TOTAL.ToString();
            String TOTALFINAL = TextTOTAL.Text.Replace(",", ".");
            TextPRECIO.Text = TextPRECIO.ToString();
            String PRECIOUNIDAD = TextTOTAL.Text.Replace(",", ".");

            SqlCommand comando = new SqlCommand("insert into PEDIDOS (FECHA,IDCLIENTE,NOMBRE,APELLIDO1,APELLIDO2,DNI,DIRECCION,CIUDAD,PROVINCIA,CODIGOPOSTAL,TELEFONO,NUMERO_REFERENCIA,NOMBREPRODUCTO,COLOR,CANTIDAD,PRECIO,TOTAL) " +
                "values('" + fecha.ToString() + "'," + this.TextIDCLIENTE.Text + ",'" + this.TextNOMBRE.Text + "','" + this.TextAPELLIDO1.Text + "','" + this.TextAPELLIDO2.Text + "','" + this.TextDNI.Text + "','" + this.TextDIRECCION.Text + "','" + this.TextCIUDAD.Text + "','" + this.TextPROVINCIA.Text + "'," + this.TextCODIGOPOSTAL.Text + ",'" + this.TextTELEFONO.Text + "','" + this.Labelnumref18.Text + "','" + this.TextNOMBREPRODUCTO.Text + "','" + this.DropDownList1ColorFundaCubierto4PiezasVerde.SelectedValue + "'," + this.DropDownList2StockFundaCubierto4PiezasVerde.SelectedValue + "," + PRECIOUNIDAD + "," + TOTALFINAL + ")", conexion);
            comando.ExecuteNonQuery();



            LabelPedirPedido.Text = "EL PRODUCTO SE AÑADIÓ AL PEDIDO";

            conexion.Close();
        }



        protected void BtnComprarFundaPistolaMultiPleBoscoso_Click(object sender, EventArgs e)
        {
            string s = System.Configuration.ConfigurationManager.ConnectionStrings["cadenaconexion1"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();
            decimal TOTAL = int.Parse(DropDownList2StockFundaPistolaMultiPleBoscoso.SelectedValue) * decimal.Parse(TextPRECIO.Text);

            TextTOTAL.Text = TOTAL.ToString();
            String TOTALFINAL = TextTOTAL.Text.Replace(",", ".");
            TextPRECIO.Text = TextPRECIO.ToString();
            String PRECIOUNIDAD = TextTOTAL.Text.Replace(",", ".");

            SqlCommand comando = new SqlCommand("insert into PEDIDOS (FECHA,IDCLIENTE,NOMBRE,APELLIDO1,APELLIDO2,DNI,DIRECCION,CIUDAD,PROVINCIA,CODIGOPOSTAL,TELEFONO,NUMERO_REFERENCIA,NOMBREPRODUCTO,COLOR,CANTIDAD,PRECIO,TOTAL) " +
                "values('" + fecha.ToString() + "'," + this.TextIDCLIENTE.Text + ",'" + this.TextNOMBRE.Text + "','" + this.TextAPELLIDO1.Text + "','" + this.TextAPELLIDO2.Text + "','" + this.TextDNI.Text + "','" + this.TextDIRECCION.Text + "','" + this.TextCIUDAD.Text + "','" + this.TextPROVINCIA.Text + "'," + this.TextCODIGOPOSTAL.Text + ",'" + this.TextTELEFONO.Text + "','" + this.Labelnumref8.Text + "','" + this.TextNOMBREPRODUCTO.Text + "','" + this.DropDownList1ColorFundaPistolaMultiPleBoscoso.SelectedValue + "'," + this.DropDownList2StockFundaPistolaMultiPleBoscoso.SelectedValue + "," + PRECIOUNIDAD + "," + TOTALFINAL + ")", conexion);
            comando.ExecuteNonQuery();



            LabelPedirPedido.Text = "EL PRODUCTO SE AÑADIÓ AL PEDIDO";

            conexion.Close();
        }



        protected void BtnComprarStockFundaPistolaMultiPleNegro_Click(object sender, EventArgs e)
        {
            string s = System.Configuration.ConfigurationManager.ConnectionStrings["cadenaconexion1"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();
            decimal TOTAL = int.Parse(DropDownList2StockFundaPistolaMultiPleNegro.SelectedValue) * decimal.Parse(TextPRECIO.Text);

            TextTOTAL.Text = TOTAL.ToString();
            String TOTALFINAL = TextTOTAL.Text.Replace(",", ".");
            TextPRECIO.Text = TextPRECIO.ToString();
            String PRECIOUNIDAD = TextTOTAL.Text.Replace(",", ".");

            SqlCommand comando = new SqlCommand("insert into PEDIDOS (FECHA,IDCLIENTE,NOMBRE,APELLIDO1,APELLIDO2,DNI,DIRECCION,CIUDAD,PROVINCIA,CODIGOPOSTAL,TELEFONO,NUMERO_REFERENCIA,NOMBREPRODUCTO,COLOR,CANTIDAD,PRECIO,TOTAL) " +
                "values('" + fecha.ToString() + "'," + this.TextIDCLIENTE.Text + ",'" + this.TextNOMBRE.Text + "','" + this.TextAPELLIDO1.Text + "','" + this.TextAPELLIDO2.Text + "','" + this.TextDNI.Text + "','" + this.TextDIRECCION.Text + "','" + this.TextCIUDAD.Text + "','" + this.TextPROVINCIA.Text + "'," + this.TextCODIGOPOSTAL.Text + ",'" + this.TextTELEFONO.Text + "','" + this.Labelnumref31.Text + "','" + this.TextNOMBREPRODUCTO.Text + "','" + this.DropDownList1ColorFundaPistolaMultiPleNegro.SelectedValue + "'," + this.DropDownList2StockFundaPistolaMultiPleNegro.SelectedValue + "," + PRECIOUNIDAD + "," + TOTALFINAL + ")", conexion);
            comando.ExecuteNonQuery();



            LabelPedirPedido.Text = "EL PRODUCTO SE AÑADIÓ AL PEDIDO";

            conexion.Close();
        }



        protected void BtnComprarFundaPistolaMultiPleAridoPixel_Click(object sender, EventArgs e)
        {
            string s = System.Configuration.ConfigurationManager.ConnectionStrings["cadenaconexion1"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();
            decimal TOTAL = int.Parse(DropDownList2StockFundaPistolaMultiPleAridoPixel.SelectedValue) * decimal.Parse(TextPRECIO.Text);

            TextTOTAL.Text = TOTAL.ToString();
            String TOTALFINAL = TextTOTAL.Text.Replace(",", ".");
            TextPRECIO.Text = TextPRECIO.ToString();
            String PRECIOUNIDAD = TextTOTAL.Text.Replace(",", ".");

            SqlCommand comando = new SqlCommand("insert into PEDIDOS (FECHA,IDCLIENTE,NOMBRE,APELLIDO1,APELLIDO2,DNI,DIRECCION,CIUDAD,PROVINCIA,CODIGOPOSTAL,TELEFONO,NUMERO_REFERENCIA,NOMBREPRODUCTO,COLOR,CANTIDAD,PRECIO,TOTAL) " +
                "values('" + fecha.ToString() + "'," + this.TextIDCLIENTE.Text + ",'" + this.TextNOMBRE.Text + "','" + this.TextAPELLIDO1.Text + "','" + this.TextAPELLIDO2.Text + "','" + this.TextDNI.Text + "','" + this.TextDIRECCION.Text + "','" + this.TextCIUDAD.Text + "','" + this.TextPROVINCIA.Text + "'," + this.TextCODIGOPOSTAL.Text + ",'" + this.TextTELEFONO.Text + "','" + this.Labelnumref39.Text + "','" + this.TextNOMBREPRODUCTO.Text + "','" + this.DropDownList1ColorFundaPistolaMultiPleAridoPixel.SelectedValue + "'," + this.DropDownList2StockFundaPistolaMultiPleAridoPixel.SelectedValue + "," + PRECIOUNIDAD + "," + TOTALFINAL + ")", conexion);
            comando.ExecuteNonQuery();



            LabelPedirPedido.Text = "EL PRODUCTO SE AÑADIÓ AL PEDIDO";

            conexion.Close();
        }



        protected void BtnFundaPistolaLegionGuardiaCiv_Click(object sender, EventArgs e)
        {
            string s = System.Configuration.ConfigurationManager.ConnectionStrings["cadenaconexion1"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();
            decimal TOTAL = int.Parse(DropDownList2StockFundaPistolaLegionGuardiaCiv.SelectedValue) * decimal.Parse(TextPRECIO.Text);

            TextTOTAL.Text = TOTAL.ToString();
            String TOTALFINAL = TextTOTAL.Text.Replace(",", ".");
            TextPRECIO.Text = TextPRECIO.ToString();
            String PRECIOUNIDAD = TextTOTAL.Text.Replace(",", ".");

            SqlCommand comando = new SqlCommand("insert into PEDIDOS (FECHA,IDCLIENTE,NOMBRE,APELLIDO1,APELLIDO2,DNI,DIRECCION,CIUDAD,PROVINCIA,CODIGOPOSTAL,TELEFONO,NUMERO_REFERENCIA,NOMBREPRODUCTO,COLOR,CANTIDAD,PRECIO,TOTAL) " +
                "values('" + fecha.ToString() + "'," + this.TextIDCLIENTE.Text + ",'" + this.TextNOMBRE.Text + "','" + this.TextAPELLIDO1.Text + "','" + this.TextAPELLIDO2.Text + "','" + this.TextDNI.Text + "','" + this.TextDIRECCION.Text + "','" + this.TextCIUDAD.Text + "','" + this.TextPROVINCIA.Text + "'," + this.TextCODIGOPOSTAL.Text + ",'" + this.TextTELEFONO.Text + "','" + this.Labelnumref47.Text + "','" + this.TextNOMBREPRODUCTO.Text + "','" + this.DropDownList1ColorFundaPistolaLegionGuardiaCiv.SelectedValue + "'," + this.DropDownList2StockFundaPistolaLegionGuardiaCiv.SelectedValue + "," + PRECIOUNIDAD + "," + TOTALFINAL + ")", conexion);
            comando.ExecuteNonQuery();



            LabelPedirPedido.Text = "EL PRODUCTO SE AÑADIÓ AL PEDIDO";

            conexion.Close();
        }



        protected void BtnComprarExtensorPistolaAridoPixel_Click(object sender, EventArgs e)
        {
            string s = System.Configuration.ConfigurationManager.ConnectionStrings["cadenaconexion1"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();
            decimal TOTAL = int.Parse(DropDownList2StockExtensorPistolaAridoPixel.SelectedValue) * decimal.Parse(TextPRECIO.Text);

            TextTOTAL.Text = TOTAL.ToString();
            String TOTALFINAL = TextTOTAL.Text.Replace(",", ".");
            TextPRECIO.Text = TextPRECIO.ToString();
            String PRECIOUNIDAD = TextTOTAL.Text.Replace(",", ".");

            SqlCommand comando = new SqlCommand("insert into PEDIDOS (FECHA,IDCLIENTE,NOMBRE,APELLIDO1,APELLIDO2,DNI,DIRECCION,CIUDAD,PROVINCIA,CODIGOPOSTAL,TELEFONO,NUMERO_REFERENCIA,NOMBREPRODUCTO,COLOR,CANTIDAD,PRECIO,TOTAL) " +
                "values('" + fecha.ToString() + "'," + this.TextIDCLIENTE.Text + ",'" + this.TextNOMBRE.Text + "','" + this.TextAPELLIDO1.Text + "','" + this.TextAPELLIDO2.Text + "','" + this.TextDNI.Text + "','" + this.TextDIRECCION.Text + "','" + this.TextCIUDAD.Text + "','" + this.TextPROVINCIA.Text + "'," + this.TextCODIGOPOSTAL.Text + ",'" + this.TextTELEFONO.Text + "','" + this.Labelnumref40.Text + "','" + this.TextNOMBREPRODUCTO.Text + "','" + this.DropDownList1ColorExtensorPistolaAridoPixel.SelectedValue + "'," + this.DropDownList2StockExtensorPistolaAridoPixel.SelectedValue + "," + PRECIOUNIDAD + "," + TOTALFINAL + ")", conexion);
            comando.ExecuteNonQuery();



            LabelPedirPedido.Text = "EL PRODUCTO SE AÑADIÓ AL PEDIDO";

            conexion.Close();
        }



        protected void BtnComparFundaCargadorPistolaMultiNegro_Click(object sender, EventArgs e)
        {
            string s = System.Configuration.ConfigurationManager.ConnectionStrings["cadenaconexion1"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();
            decimal TOTAL = int.Parse(DropDownList2StockFundaCargadorPistolaMultiNegro.SelectedValue) * decimal.Parse(TextPRECIO.Text);

            TextTOTAL.Text = TOTAL.ToString();
            String TOTALFINAL = TextTOTAL.Text.Replace(",", ".");
            TextPRECIO.Text = TextPRECIO.ToString();
            String PRECIOUNIDAD = TextTOTAL.Text.Replace(",", ".");

            SqlCommand comando = new SqlCommand("insert into PEDIDOS (FECHA,IDCLIENTE,NOMBRE,APELLIDO1,APELLIDO2,DNI,DIRECCION,CIUDAD,PROVINCIA,CODIGOPOSTAL,TELEFONO,NUMERO_REFERENCIA,NOMBREPRODUCTO,COLOR,CANTIDAD,PRECIO,TOTAL) " +
                "values('" + fecha.ToString() + "'," + this.TextIDCLIENTE.Text + ",'" + this.TextNOMBRE.Text + "','" + this.TextAPELLIDO1.Text + "','" + this.TextAPELLIDO2.Text + "','" + this.TextDNI.Text + "','" + this.TextDIRECCION.Text + "','" + this.TextCIUDAD.Text + "','" + this.TextPROVINCIA.Text + "'," + this.TextCODIGOPOSTAL.Text + ",'" + this.TextTELEFONO.Text + "','" + this.Labelnumref32.Text + "','" + this.TextNOMBREPRODUCTO.Text + "','" + this.DropDownList1ColorFundaCargadorPistolaMultiNegro.SelectedValue + "'," + this.DropDownList2StockFundaCargadorPistolaMultiNegro.SelectedValue + "," + PRECIOUNIDAD + "," + TOTALFINAL + ")", conexion);
            comando.ExecuteNonQuery();



            LabelPedirPedido.Text = "EL PRODUCTO SE AÑADIÓ AL PEDIDO";

            conexion.Close();
        }



        protected void BtnComprarFundaCargadorPistolaMultiAridoPixel_Click(object sender, EventArgs e)
        {
            string s = System.Configuration.ConfigurationManager.ConnectionStrings["cadenaconexion1"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();
            decimal TOTAL = int.Parse(DropDownList2StockFundaCargadorPistolaMultiAridoPixel.SelectedValue) * decimal.Parse(TextPRECIO.Text);

            TextTOTAL.Text = TOTAL.ToString();
            String TOTALFINAL = TextTOTAL.Text.Replace(",", ".");
            TextPRECIO.Text = TextPRECIO.ToString();
            String PRECIOUNIDAD = TextTOTAL.Text.Replace(",", ".");

            SqlCommand comando = new SqlCommand("insert into PEDIDOS (FECHA,IDCLIENTE,NOMBRE,APELLIDO1,APELLIDO2,DNI,DIRECCION,CIUDAD,PROVINCIA,CODIGOPOSTAL,TELEFONO,NUMERO_REFERENCIA,NOMBREPRODUCTO,COLOR,CANTIDAD,PRECIO,TOTAL) " +
                "values('" + fecha.ToString() + "'," + this.TextIDCLIENTE.Text + ",'" + this.TextNOMBRE.Text + "','" + this.TextAPELLIDO1.Text + "','" + this.TextAPELLIDO2.Text + "','" + this.TextDNI.Text + "','" + this.TextDIRECCION.Text + "','" + this.TextCIUDAD.Text + "','" + this.TextPROVINCIA.Text + "'," + this.TextCODIGOPOSTAL.Text + ",'" + this.TextTELEFONO.Text + "','" + this.Labelnumref41.Text + "','" + this.TextNOMBREPRODUCTO.Text + "','" + this.DropDownList1ColorFundaCargadorPistolaMultiAridoPixel.SelectedValue + "'," + this.DropDownList2StockFundaCargadorPistolaMultiAridoPixel.SelectedValue + "," + PRECIOUNIDAD + "," + TOTALFINAL + ")", conexion);
            comando.ExecuteNonQuery();



            LabelPedirPedido.Text = "EL PRODUCTO SE AÑADIÓ AL PEDIDO";

            conexion.Close();
        }



        protected void BtnComprarCarteraCamilleroBoscoso_Click(object sender, EventArgs e)
        {
            string s = System.Configuration.ConfigurationManager.ConnectionStrings["cadenaconexion1"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();
            decimal TOTAL = int.Parse(DropDownList2StockCarteraCamilleroBoscoso.SelectedValue) * decimal.Parse(TextPRECIO.Text);

            TextTOTAL.Text = TOTAL.ToString();
            String TOTALFINAL = TextTOTAL.Text.Replace(",", ".");
            TextPRECIO.Text = TextPRECIO.ToString();
            String PRECIOUNIDAD = TextTOTAL.Text.Replace(",", ".");

            SqlCommand comando = new SqlCommand("insert into PEDIDOS (FECHA,IDCLIENTE,NOMBRE,APELLIDO1,APELLIDO2,DNI,DIRECCION,CIUDAD,PROVINCIA,CODIGOPOSTAL,TELEFONO,NUMERO_REFERENCIA,NOMBREPRODUCTO,COLOR,CANTIDAD,PRECIO,TOTAL) " +
                "values('" + fecha.ToString() + "'," + this.TextIDCLIENTE.Text + ",'" + this.TextNOMBRE.Text + "','" + this.TextAPELLIDO1.Text + "','" + this.TextAPELLIDO2.Text + "','" + this.TextDNI.Text + "','" + this.TextDIRECCION.Text + "','" + this.TextCIUDAD.Text + "','" + this.TextPROVINCIA.Text + "'," + this.TextCODIGOPOSTAL.Text + ",'" + this.TextTELEFONO.Text + "','" + this.Labelnumref12.Text + "','" + this.TextNOMBREPRODUCTO.Text + "','" + this.DropDownList1ColorCarteraCamilleroBoscoso.SelectedValue + "'," + this.DropDownList2StockCarteraCamilleroBoscoso.SelectedValue + "," + PRECIOUNIDAD + "," + TOTALFINAL + ")", conexion);
            comando.ExecuteNonQuery();



            LabelPedirPedido.Text = "EL PRODUCTO SE AÑADIÓ AL PEDIDO";

            conexion.Close();
        }



        protected void BtnComprarExtensorCartucherasDoblesBoscoso_Click(object sender, EventArgs e)
        {
            string s = System.Configuration.ConfigurationManager.ConnectionStrings["cadenaconexion1"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();
            decimal TOTAL = int.Parse(DropDownList2StockExtensorCartucherasDoblesBoscoso.SelectedValue) * decimal.Parse(TextPRECIO.Text);

            TextTOTAL.Text = TOTAL.ToString();
            String TOTALFINAL = TextTOTAL.Text.Replace(",", ".");
            TextPRECIO.Text = TextPRECIO.ToString();
            String PRECIOUNIDAD = TextTOTAL.Text.Replace(",", ".");

            SqlCommand comando = new SqlCommand("insert into PEDIDOS (FECHA,IDCLIENTE,NOMBRE,APELLIDO1,APELLIDO2,DNI,DIRECCION,CIUDAD,PROVINCIA,CODIGOPOSTAL,TELEFONO,NUMERO_REFERENCIA,NOMBREPRODUCTO,COLOR,CANTIDAD,PRECIO,TOTAL) " +
                "values('" + fecha.ToString() + "'," + this.TextIDCLIENTE.Text + ",'" + this.TextNOMBRE.Text + "','" + this.TextAPELLIDO1.Text + "','" + this.TextAPELLIDO2.Text + "','" + this.TextDNI.Text + "','" + this.TextDIRECCION.Text + "','" + this.TextCIUDAD.Text + "','" + this.TextPROVINCIA.Text + "'," + this.TextCODIGOPOSTAL.Text + ",'" + this.TextTELEFONO.Text + "','" + this.Labelnumref9.Text + "','" + this.TextNOMBREPRODUCTO.Text + "','" + this.DropDownList1ColorExtensorCartucherasDoblesBoscoso.SelectedValue + "'," + this.DropDownList2StockExtensorCartucherasDoblesBoscoso.SelectedValue + "," + PRECIOUNIDAD + "," + TOTALFINAL + ")", conexion);
            comando.ExecuteNonQuery();



            LabelPedirPedido.Text = "EL PRODUCTO SE AÑADIÓ AL PEDIDO";

            conexion.Close();
        }



        protected void BtnComprarExtensorCartucherasDoblesAridoPixel_Click(object sender, EventArgs e)
        {
            string s = System.Configuration.ConfigurationManager.ConnectionStrings["cadenaconexion1"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();
            decimal TOTAL = int.Parse(DropDownList2StockExtensorCartucherasDoblesAridoPixel.SelectedValue) * decimal.Parse(TextPRECIO.Text);

            TextTOTAL.Text = TOTAL.ToString();
            String TOTALFINAL = TextTOTAL.Text.Replace(",", ".");
            TextPRECIO.Text = TextPRECIO.ToString();
            String PRECIOUNIDAD = TextTOTAL.Text.Replace(",", ".");

            SqlCommand comando = new SqlCommand("insert into PEDIDOS (FECHA,IDCLIENTE,NOMBRE,APELLIDO1,APELLIDO2,DNI,DIRECCION,CIUDAD,PROVINCIA,CODIGOPOSTAL,TELEFONO,NUMERO_REFERENCIA,NOMBREPRODUCTO,COLOR,CANTIDAD,PRECIO,TOTAL) " +
                "values('" + fecha.ToString() + "'," + this.TextIDCLIENTE.Text + ",'" + this.TextNOMBRE.Text + "','" + this.TextAPELLIDO1.Text + "','" + this.TextAPELLIDO2.Text + "','" + this.TextDNI.Text + "','" + this.TextDIRECCION.Text + "','" + this.TextCIUDAD.Text + "','" + this.TextPROVINCIA.Text + "'," + this.TextCODIGOPOSTAL.Text + ",'" + this.TextTELEFONO.Text + "','" + this.Labelnumref42.Text + "','" + this.TextNOMBREPRODUCTO.Text + "','" + this.DropDownList1ColorExtensorCartucherasDoblesAridoPixel.SelectedValue + "'," + this.DropDownList2StockExtensorCartucherasDoblesAridoPixel.SelectedValue + "," + PRECIOUNIDAD + "," + TOTALFINAL + ")", conexion);
            comando.ExecuteNonQuery();



            LabelPedirPedido.Text = "EL PRODUCTO SE AÑADIÓ AL PEDIDO";

            conexion.Close();
        }



        protected void BtnComprarMochilaSoporteARespBoscosoPixel_Click(object sender, EventArgs e)
        {
            string s = System.Configuration.ConfigurationManager.ConnectionStrings["cadenaconexion1"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();
            decimal TOTAL = int.Parse(DropDownList2StockMochilaSoporteARespBoscosoPixel.SelectedValue) * decimal.Parse(TextPRECIO.Text);

            TextTOTAL.Text = TOTAL.ToString();
            String TOTALFINAL = TextTOTAL.Text.Replace(",", ".");
            TextPRECIO.Text = TextPRECIO.ToString();
            String PRECIOUNIDAD = TextTOTAL.Text.Replace(",", ".");

            SqlCommand comando = new SqlCommand("insert into PEDIDOS (FECHA,IDCLIENTE,NOMBRE,APELLIDO1,APELLIDO2,DNI,DIRECCION,CIUDAD,PROVINCIA,CODIGOPOSTAL,TELEFONO,NUMERO_REFERENCIA,NOMBREPRODUCTO,COLOR,CANTIDAD,PRECIO,TOTAL) " +
                "values('" + fecha.ToString() + "'," + this.TextIDCLIENTE.Text + ",'" + this.TextNOMBRE.Text + "','" + this.TextAPELLIDO1.Text + "','" + this.TextAPELLIDO2.Text + "','" + this.TextDNI.Text + "','" + this.TextDIRECCION.Text + "','" + this.TextCIUDAD.Text + "','" + this.TextPROVINCIA.Text + "'," + this.TextCODIGOPOSTAL.Text + ",'" + this.TextTELEFONO.Text + "','" + this.Labelnumref35.Text + "','" + this.TextNOMBREPRODUCTO.Text + "','" + this.DropDownList1ColorMochilaSoporteARespBoscosoPixel.SelectedValue + "'," + this.DropDownList2StockMochilaSoporteARespBoscosoPixel.SelectedValue + "," + PRECIOUNIDAD + "," + TOTALFINAL + ")", conexion);
            comando.ExecuteNonQuery();



            LabelPedirPedido.Text = "EL PRODUCTO SE AÑADIÓ AL PEDIDO";

            conexion.Close();
        }



        protected void BtnComprarCenidorBripacBoscosoClaro_Click(object sender, EventArgs e)
        {
            string s = System.Configuration.ConfigurationManager.ConnectionStrings["cadenaconexion1"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();
            decimal TOTAL = int.Parse(DropDownList2StockCenidorBripacBoscosoClaro.SelectedValue) * decimal.Parse(TextPRECIO.Text);

            TextTOTAL.Text = TOTAL.ToString();
            String TOTALFINAL = TextTOTAL.Text.Replace(",", ".");
            TextPRECIO.Text = TextPRECIO.ToString();
            String PRECIOUNIDAD = TextTOTAL.Text.Replace(",", ".");

            SqlCommand comando = new SqlCommand("insert into PEDIDOS (FECHA,IDCLIENTE,NOMBRE,APELLIDO1,APELLIDO2,DNI,DIRECCION,CIUDAD,PROVINCIA,CODIGOPOSTAL,TELEFONO,NUMERO_REFERENCIA,NOMBREPRODUCTO,COLOR,CANTIDAD,PRECIO,TOTAL) " +
                "values('" + fecha.ToString() + "'," + this.TextIDCLIENTE.Text + ",'" + this.TextNOMBRE.Text + "','" + this.TextAPELLIDO1.Text + "','" + this.TextAPELLIDO2.Text + "','" + this.TextDNI.Text + "','" + this.TextDIRECCION.Text + "','" + this.TextCIUDAD.Text + "','" + this.TextPROVINCIA.Text + "'," + this.TextCODIGOPOSTAL.Text + ",'" + this.TextTELEFONO.Text + "','" + this.Labelnumref10.Text + "','" + this.TextNOMBREPRODUCTO.Text + "','" + this.DropDownList1ColorCenidorBripacBoscosoClaro.SelectedValue + "'," + this.DropDownList2StockCenidorBripacBoscosoClaro.SelectedValue + "," + PRECIOUNIDAD + "," + TOTALFINAL + ")", conexion);
            comando.ExecuteNonQuery();



            LabelPedirPedido.Text = "EL PRODUCTO SE AÑADIÓ AL PEDIDO";

            conexion.Close();
        }



        protected void BtnComprarCenidorBripacBoscosoOscuro_Click(object sender, EventArgs e)
        {
            string s = System.Configuration.ConfigurationManager.ConnectionStrings["cadenaconexion1"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();
            decimal TOTAL = int.Parse(DropDownList2StockCenidorBripacBoscosoOscuro.SelectedValue) * decimal.Parse(TextPRECIO.Text);

            TextTOTAL.Text = TOTAL.ToString();
            String TOTALFINAL = TextTOTAL.Text.Replace(",", ".");
            TextPRECIO.Text = TextPRECIO.ToString();
            String PRECIOUNIDAD = TextTOTAL.Text.Replace(",", ".");

            SqlCommand comando = new SqlCommand("insert into PEDIDOS (FECHA,IDCLIENTE,NOMBRE,APELLIDO1,APELLIDO2,DNI,DIRECCION,CIUDAD,PROVINCIA,CODIGOPOSTAL,TELEFONO,NUMERO_REFERENCIA,NOMBREPRODUCTO,COLOR,CANTIDAD,PRECIO,TOTAL) " +
                "values('" + fecha.ToString() + "'," + this.TextIDCLIENTE.Text + ",'" + this.TextNOMBRE.Text + "','" + this.TextAPELLIDO1.Text + "','" + this.TextAPELLIDO2.Text + "','" + this.TextDNI.Text + "','" + this.TextDIRECCION.Text + "','" + this.TextCIUDAD.Text + "','" + this.TextPROVINCIA.Text + "'," + this.TextCODIGOPOSTAL.Text + ",'" + this.TextTELEFONO.Text + "','" + this.Labelnumref11.Text + "','" + this.TextNOMBREPRODUCTO.Text + "','" + this.DropDownList1ColorCenidorBripacBoscosoOscuro.SelectedValue + "'," + this.DropDownList2StockCenidorBripacBoscosoOscuro.SelectedValue + "," + PRECIOUNIDAD + "," + TOTALFINAL + ")", conexion);
            comando.ExecuteNonQuery();



            LabelPedirPedido.Text = "EL PRODUCTO SE AÑADIÓ AL PEDIDO";

            conexion.Close();
        }



        protected void BtnComprarCenidorBripacTerminalGarraVerde_Click(object sender, EventArgs e)
        {
            string s = System.Configuration.ConfigurationManager.ConnectionStrings["cadenaconexion1"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();
            decimal TOTAL = int.Parse(DropDownList2StockCenidorBripacTerminalGarraVerde.SelectedValue) * decimal.Parse(TextPRECIO.Text);

            TextTOTAL.Text = TOTAL.ToString();
            String TOTALFINAL = TextTOTAL.Text.Replace(",", ".");
            TextPRECIO.Text = TextPRECIO.ToString();
            String PRECIOUNIDAD = TextTOTAL.Text.Replace(",", ".");

            SqlCommand comando = new SqlCommand("insert into PEDIDOS (FECHA,IDCLIENTE,NOMBRE,APELLIDO1,APELLIDO2,DNI,DIRECCION,CIUDAD,PROVINCIA,CODIGOPOSTAL,TELEFONO,NUMERO_REFERENCIA,NOMBREPRODUCTO,COLOR,CANTIDAD,PRECIO,TOTAL) " +
                "values('" + fecha.ToString() + "'," + this.TextIDCLIENTE.Text + ",'" + this.TextNOMBRE.Text + "','" + this.TextAPELLIDO1.Text + "','" + this.TextAPELLIDO2.Text + "','" + this.TextDNI.Text + "','" + this.TextDIRECCION.Text + "','" + this.TextCIUDAD.Text + "','" + this.TextPROVINCIA.Text + "'," + this.TextCODIGOPOSTAL.Text + ",'" + this.TextTELEFONO.Text + "','" + this.Labelnumref21.Text + "','" + this.TextNOMBREPRODUCTO.Text + "','" + this.DropDownList1ColorCenidorBripacTerminalGarraVerde.SelectedValue + "'," + this.DropDownList2StockCenidorBripacTerminalGarraVerde.SelectedValue + "," + PRECIOUNIDAD + "," + TOTALFINAL + ")", conexion);
            comando.ExecuteNonQuery();



            LabelPedirPedido.Text = "EL PRODUCTO SE AÑADIÓ AL PEDIDO";

            conexion.Close();
        }



        protected void BtnComprarCenidorBripacTerminalGanchosVerde_Click(object sender, EventArgs e)
        {
            string s = System.Configuration.ConfigurationManager.ConnectionStrings["cadenaconexion1"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();
            decimal TOTAL = int.Parse(DropDownList2StockCenidorBripacTerminalGanchosVerde.SelectedValue) * decimal.Parse(TextPRECIO.Text);

            TextTOTAL.Text = TOTAL.ToString();
            String TOTALFINAL = TextTOTAL.Text.Replace(",", ".");
            TextPRECIO.Text = TextPRECIO.ToString();
            String PRECIOUNIDAD = TextTOTAL.Text.Replace(",", ".");

            SqlCommand comando = new SqlCommand("insert into PEDIDOS (FECHA,IDCLIENTE,NOMBRE,APELLIDO1,APELLIDO2,DNI,DIRECCION,CIUDAD,PROVINCIA,CODIGOPOSTAL,TELEFONO,NUMERO_REFERENCIA,NOMBREPRODUCTO,COLOR,CANTIDAD,PRECIO,TOTAL) " +
                "values('" + fecha.ToString() + "'," + this.TextIDCLIENTE.Text + ",'" + this.TextNOMBRE.Text + "','" + this.TextAPELLIDO1.Text + "','" + this.TextAPELLIDO2.Text + "','" + this.TextDNI.Text + "','" + this.TextDIRECCION.Text + "','" + this.TextCIUDAD.Text + "','" + this.TextPROVINCIA.Text + "'," + this.TextCODIGOPOSTAL.Text + ",'" + this.TextTELEFONO.Text + "','" + this.Labelnumref20.Text + "','" + this.TextNOMBREPRODUCTO.Text + "','" + this.DropDownList1ColorCenidorBripacTerminalGanchosVerde.SelectedValue + "'," + this.DropDownList2StockCenidorBripacTerminalGanchosVerde.SelectedValue + "," + PRECIOUNIDAD + "," + TOTALFINAL + ")", conexion);
            comando.ExecuteNonQuery();



            LabelPedirPedido.Text = "EL PRODUCTO SE AÑADIÓ AL PEDIDO";

            conexion.Close();
        }



        protected void BtnBtnComprarCenidorBripacUmeTerminalGarraNegro_Click(object sender, EventArgs e)
        {
            string s = System.Configuration.ConfigurationManager.ConnectionStrings["cadenaconexion1"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();
            decimal TOTAL = int.Parse(DropDownList2StockCenidorBripacUmeTerminalGarraNegro.SelectedValue) * decimal.Parse(TextPRECIO.Text);

            TextTOTAL.Text = TOTAL.ToString();
            String TOTALFINAL = TextTOTAL.Text.Replace(",", ".");
            TextPRECIO.Text = TextPRECIO.ToString();
            String PRECIOUNIDAD = TextTOTAL.Text.Replace(",", ".");

            SqlCommand comando = new SqlCommand("insert into PEDIDOS (FECHA,IDCLIENTE,NOMBRE,APELLIDO1,APELLIDO2,DNI,DIRECCION,CIUDAD,PROVINCIA,CODIGOPOSTAL,TELEFONO,NUMERO_REFERENCIA,NOMBREPRODUCTO,COLOR,CANTIDAD,PRECIO,TOTAL) " +
                "values('" + fecha.ToString() + "'," + this.TextIDCLIENTE.Text + ",'" + this.TextNOMBRE.Text + "','" + this.TextAPELLIDO1.Text + "','" + this.TextAPELLIDO2.Text + "','" + this.TextDNI.Text + "','" + this.TextDIRECCION.Text + "','" + this.TextCIUDAD.Text + "','" + this.TextPROVINCIA.Text + "'," + this.TextCODIGOPOSTAL.Text + ",'" + this.TextTELEFONO.Text + "','" + this.Labelnumref23.Text + "','" + this.TextNOMBREPRODUCTO.Text + "','" + this.DropDownList1ColorCenidorBripacUmeTerminalGarraNegro.SelectedValue + "'," + this.DropDownList2StockCenidorBripacUmeTerminalGarraNegro.SelectedValue + "," + PRECIOUNIDAD + "," + TOTALFINAL + ")", conexion);
            comando.ExecuteNonQuery();



            LabelPedirPedido.Text = "EL PRODUCTO SE AÑADIÓ AL PEDIDO";

            conexion.Close();
        }



        protected void BtnComprarCenidorBripacTerminalGarraAridoPixel_Click(object sender, EventArgs e)
        {
            string s = System.Configuration.ConfigurationManager.ConnectionStrings["cadenaconexion1"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();
            decimal TOTAL = int.Parse(DropDownList2StockCenidorBripacTerminalGarraAridoPixel.SelectedValue) * decimal.Parse(TextPRECIO.Text);

            TextTOTAL.Text = TOTAL.ToString();
            String TOTALFINAL = TextTOTAL.Text.Replace(",", ".");
            TextPRECIO.Text = TextPRECIO.ToString();
            String PRECIOUNIDAD = TextTOTAL.Text.Replace(",", ".");

            SqlCommand comando = new SqlCommand("insert into PEDIDOS (FECHA,IDCLIENTE,NOMBRE,APELLIDO1,APELLIDO2,DNI,DIRECCION,CIUDAD,PROVINCIA,CODIGOPOSTAL,TELEFONO,NUMERO_REFERENCIA,NOMBREPRODUCTO,COLOR,CANTIDAD,PRECIO,TOTAL) " +
                "values('" + fecha.ToString() + "'," + this.TextIDCLIENTE.Text + ",'" + this.TextNOMBRE.Text + "','" + this.TextAPELLIDO1.Text + "','" + this.TextAPELLIDO2.Text + "','" + this.TextDNI.Text + "','" + this.TextDIRECCION.Text + "','" + this.TextCIUDAD.Text + "','" + this.TextPROVINCIA.Text + "'," + this.TextCODIGOPOSTAL.Text + ",'" + this.TextTELEFONO.Text + "','" + this.Labelnumref36.Text + "','" + this.TextNOMBREPRODUCTO.Text + "','" + this.DropDownList1ColorCenidorBripacTerminalGarraAridoPixel.SelectedValue + "'," + this.DropDownList2StockCenidorBripacTerminalGarraAridoPixel.SelectedValue + "," + PRECIOUNIDAD + "," + TOTALFINAL + ")", conexion);
            comando.ExecuteNonQuery();



            LabelPedirPedido.Text = "EL PRODUCTO SE AÑADIÓ AL PEDIDO";

            conexion.Close();
        }



        protected void BtnComprarCenidorPolicialNegro_Click(object sender, EventArgs e)
        {
            string s = System.Configuration.ConfigurationManager.ConnectionStrings["cadenaconexion1"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();
            decimal TOTAL = int.Parse(DropDownList2StockCenidorPolicialNegro.SelectedValue) * decimal.Parse(TextPRECIO.Text);

            TextTOTAL.Text = TOTAL.ToString();
            String TOTALFINAL = TextTOTAL.Text.Replace(",", ".");
            TextPRECIO.Text = TextPRECIO.ToString();
            String PRECIOUNIDAD = TextTOTAL.Text.Replace(",", ".");

            SqlCommand comando = new SqlCommand("insert into PEDIDOS (FECHA,IDCLIENTE,NOMBRE,APELLIDO1,APELLIDO2,DNI,DIRECCION,CIUDAD,PROVINCIA,CODIGOPOSTAL,TELEFONO,NUMERO_REFERENCIA,NOMBREPRODUCTO,COLOR,CANTIDAD,PRECIO,TOTAL) " +
                "values('" + fecha.ToString() + "'," + this.TextIDCLIENTE.Text + ",'" + this.TextNOMBRE.Text + "','" + this.TextAPELLIDO1.Text + "','" + this.TextAPELLIDO2.Text + "','" + this.TextDNI.Text + "','" + this.TextDIRECCION.Text + "','" + this.TextCIUDAD.Text + "','" + this.TextPROVINCIA.Text + "'," + this.TextCODIGOPOSTAL.Text + ",'" + this.TextTELEFONO.Text + "','" + this.Labelnumref34.Text + "','" + this.TextNOMBREPRODUCTO.Text + "','" + this.DropDownList1ColorCenidorPolicialNegro.SelectedValue + "'," + this.DropDownList2StockCenidorPolicialNegro.SelectedValue + "," + PRECIOUNIDAD + "," + TOTALFINAL + ")", conexion);
            comando.ExecuteNonQuery();



            LabelPedirPedido.Text = "EL PRODUCTO SE AÑADIÓ AL PEDIDO";

            conexion.Close();
        }



        protected void BtnComprarColorCenidorPolicialNegro2_Click(object sender, EventArgs e)
        {
            string s = System.Configuration.ConfigurationManager.ConnectionStrings["cadenaconexion1"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();
            decimal TOTAL = int.Parse(DropDownList2StockCenidorPolicialNegro130.SelectedValue) * decimal.Parse(TextPRECIO.Text);

            TextTOTAL.Text = TOTAL.ToString();
            String TOTALFINAL = TextTOTAL.Text.Replace(",", ".");
            TextPRECIO.Text = TextPRECIO.ToString();
            String PRECIOUNIDAD = TextTOTAL.Text.Replace(",", ".");

            SqlCommand comando = new SqlCommand("insert into PEDIDOS (FECHA,IDCLIENTE,NOMBRE,APELLIDO1,APELLIDO2,DNI,DIRECCION,CIUDAD,PROVINCIA,CODIGOPOSTAL,TELEFONO,NUMERO_REFERENCIA,NOMBREPRODUCTO,COLOR,CANTIDAD,PRECIO,TOTAL) " +
                "values('" + fecha.ToString() + "'," + this.TextIDCLIENTE.Text + ",'" + this.TextNOMBRE.Text + "','" + this.TextAPELLIDO1.Text + "','" + this.TextAPELLIDO2.Text + "','" + this.TextDNI.Text + "','" + this.TextDIRECCION.Text + "','" + this.TextCIUDAD.Text + "','" + this.TextPROVINCIA.Text + "'," + this.TextCODIGOPOSTAL.Text + ",'" + this.TextTELEFONO.Text + "','" + this.Labelnumref33.Text + "','" + this.TextNOMBREPRODUCTO.Text + "','" + this.DropDownList1ColorCenidorPolicialNegro130.SelectedValue + "'," + this.DropDownList2StockCenidorPolicialNegro130.SelectedValue + "," + PRECIOUNIDAD + "," + TOTALFINAL + ")", conexion);
            comando.ExecuteNonQuery();



            LabelPedirPedido.Text = "EL PRODUCTO SE AÑADIÓ AL PEDIDO";

            conexion.Close();
        }



        protected void BtnComprarCinturonHebillaMetalUmeNegro_Click(object sender, EventArgs e)
        {
            string s = System.Configuration.ConfigurationManager.ConnectionStrings["cadenaconexion1"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();
            decimal TOTAL = int.Parse(DropDownList2StockCinturonHebillaMetalUmeNegro.SelectedValue) * decimal.Parse(TextPRECIO.Text);

            TextTOTAL.Text = TOTAL.ToString();
            String TOTALFINAL = TextTOTAL.Text.Replace(",", ".");
            TextPRECIO.Text = TextPRECIO.ToString();
            String PRECIOUNIDAD = TextTOTAL.Text.Replace(",", ".");

            SqlCommand comando = new SqlCommand("insert into PEDIDOS (FECHA,IDCLIENTE,NOMBRE,APELLIDO1,APELLIDO2,DNI,DIRECCION,CIUDAD,PROVINCIA,CODIGOPOSTAL,TELEFONO,NUMERO_REFERENCIA,NOMBREPRODUCTO,COLOR,CANTIDAD,PRECIO,TOTAL) " +
                "values('" + fecha.ToString() + "'," + this.TextIDCLIENTE.Text + ",'" + this.TextNOMBRE.Text + "','" + this.TextAPELLIDO1.Text + "','" + this.TextAPELLIDO2.Text + "','" + this.TextDNI.Text + "','" + this.TextDIRECCION.Text + "','" + this.TextCIUDAD.Text + "','" + this.TextPROVINCIA.Text + "'," + this.TextCODIGOPOSTAL.Text + ",'" + this.TextTELEFONO.Text + "','" + this.Labelnumref24.Text + "','" + this.TextNOMBREPRODUCTO.Text + "','" + this.DropDownList1ColorCinturonHebillaMetalUmeNegro.SelectedValue + "'," + this.DropDownList2StockCinturonHebillaMetalUmeNegro.SelectedValue + "," + PRECIOUNIDAD + "," + TOTALFINAL + ")", conexion);
            comando.ExecuteNonQuery();



            LabelPedirPedido.Text = "EL PRODUCTO SE AÑADIÓ AL PEDIDO";

            conexion.Close();
        }



        protected void BtnCompraCinturonVelcroVerde_Click(object sender, EventArgs e)
        {
            string s = System.Configuration.ConfigurationManager.ConnectionStrings["cadenaconexion1"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();
            decimal TOTAL = int.Parse(DropDownList2StockCinturonVelcroVerde.SelectedValue) * decimal.Parse(TextPRECIO.Text);

            TextTOTAL.Text = TOTAL.ToString();
            String TOTALFINAL = TextTOTAL.Text.Replace(",", ".");
            TextPRECIO.Text = TextPRECIO.ToString();
            String PRECIOUNIDAD = TextTOTAL.Text.Replace(",", ".");

            SqlCommand comando = new SqlCommand("insert into PEDIDOS (FECHA,IDCLIENTE,NOMBRE,APELLIDO1,APELLIDO2,DNI,DIRECCION,CIUDAD,PROVINCIA,CODIGOPOSTAL,TELEFONO,NUMERO_REFERENCIA,NOMBREPRODUCTO,COLOR,CANTIDAD,PRECIO,TOTAL) " +
                "values('" + fecha.ToString() + "'," + this.TextIDCLIENTE.Text + ",'" + this.TextNOMBRE.Text + "','" + this.TextAPELLIDO1.Text + "','" + this.TextAPELLIDO2.Text + "','" + this.TextDNI.Text + "','" + this.TextDIRECCION.Text + "','" + this.TextCIUDAD.Text + "','" + this.TextPROVINCIA.Text + "'," + this.TextCODIGOPOSTAL.Text + ",'" + this.TextTELEFONO.Text + "','" + this.Labelnumref22.Text + "','" + this.TextNOMBREPRODUCTO.Text + "','" + this.DropDownList1ColorCinturonVelcroVerde.SelectedValue + "'," + this.DropDownList2StockCinturonVelcroVerde.SelectedValue + "," + PRECIOUNIDAD + "," + TOTALFINAL + ")", conexion);
            comando.ExecuteNonQuery();



            LabelPedirPedido.Text = "EL PRODUCTO SE AÑADIÓ AL PEDIDO";

            conexion.Close();
        }



        protected void BtnComprarCorreaPortaFusilHKG36Negro_Click(object sender, EventArgs e)
        {
            string s = System.Configuration.ConfigurationManager.ConnectionStrings["cadenaconexion1"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();
            decimal TOTAL = int.Parse(DropDownList2StockCorreaPortafusilHKG36Negro.SelectedValue) * decimal.Parse(TextPRECIO.Text);

            TextTOTAL.Text = TOTAL.ToString();
            String TOTALFINAL = TextTOTAL.Text.Replace(",", ".");
            TextPRECIO.Text = TextPRECIO.ToString();
            String PRECIOUNIDAD = TextTOTAL.Text.Replace(",", ".");

            SqlCommand comando = new SqlCommand("insert into PEDIDOS (FECHA,IDCLIENTE,NOMBRE,APELLIDO1,APELLIDO2,DNI,DIRECCION,CIUDAD,PROVINCIA,CODIGOPOSTAL,TELEFONO,NUMERO_REFERENCIA,NOMBREPRODUCTO,COLOR,CANTIDAD,PRECIO,TOTAL) " +
                "values('" + fecha.ToString() + "'," + this.TextIDCLIENTE.Text + ",'" + this.TextNOMBRE.Text + "','" + this.TextAPELLIDO1.Text + "','" + this.TextAPELLIDO2.Text + "','" + this.TextDNI.Text + "','" + this.TextDIRECCION.Text + "','" + this.TextCIUDAD.Text + "','" + this.TextPROVINCIA.Text + "'," + this.TextCODIGOPOSTAL.Text + ",'" + this.TextTELEFONO.Text + "','" + this.Labelnumref25.Text + "','" + this.TextNOMBREPRODUCTO.Text + "','" + this.DropDownList1ColorCorreaPortafusilHKG36Negro.SelectedValue + "'," + this.DropDownList2StockCorreaPortafusilHKG36Negro.SelectedValue + "," + PRECIOUNIDAD + "," + TOTALFINAL + ")", conexion);
            comando.ExecuteNonQuery();



            LabelPedirPedido.Text = "EL PRODUCTO SE AÑADIÓ AL PEDIDO";

            conexion.Close();
        }



        protected void BtnComprarFundaCantimploraBorreguitoVerde_Click(object sender, EventArgs e)
        {
            string s = System.Configuration.ConfigurationManager.ConnectionStrings["cadenaconexion1"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();
            decimal TOTAL = int.Parse(DropDownList2StockFundaCantimploraBorreguitoVerde.SelectedValue) * decimal.Parse(TextPRECIO.Text);

            TextTOTAL.Text = TOTAL.ToString();
            String TOTALFINAL = TextTOTAL.Text.Replace(",", ".");
            TextPRECIO.Text = TextPRECIO.ToString();
            String PRECIOUNIDAD = TextTOTAL.Text.Replace(",", ".");

            SqlCommand comando = new SqlCommand("insert into PEDIDOS (FECHA,IDCLIENTE,NOMBRE,APELLIDO1,APELLIDO2,DNI,DIRECCION,CIUDAD,PROVINCIA,CODIGOPOSTAL,TELEFONO,NUMERO_REFERENCIA,NOMBREPRODUCTO,COLOR,CANTIDAD,PRECIO,TOTAL) " +
                "values('" + fecha.ToString() + "'," + this.TextIDCLIENTE.Text + ",'" + this.TextNOMBRE.Text + "','" + this.TextAPELLIDO1.Text + "','" + this.TextAPELLIDO2.Text + "','" + this.TextDNI.Text + "','" + this.TextDIRECCION.Text + "','" + this.TextCIUDAD.Text + "','" + this.TextPROVINCIA.Text + "'," + this.TextCODIGOPOSTAL.Text + ",'" + this.TextTELEFONO.Text + "','" + this.Labelnumref13.Text + "','" + this.TextNOMBREPRODUCTO.Text + "','" + this.DropDownList1ColorFundaCantimploraBorreguitoVerde.SelectedValue + "'," + this.DropDownList2StockFundaCantimploraBorreguitoVerde.SelectedValue + "," + PRECIOUNIDAD + "," + TOTALFINAL + ")", conexion);
            comando.ExecuteNonQuery();



            LabelPedirPedido.Text = "EL PRODUCTO SE AÑADIÓ AL PEDIDO";

            conexion.Close();
        }



        protected void BtnComprarCantimploraVerde_Click(object sender, EventArgs e)
        {
            string s = System.Configuration.ConfigurationManager.ConnectionStrings["cadenaconexion1"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();
            decimal TOTAL = int.Parse(DropDownList2StockCantimploraVerde.SelectedValue) * decimal.Parse(TextPRECIO.Text);

            TextTOTAL.Text = TOTAL.ToString();
            String TOTALFINAL = TextTOTAL.Text.Replace(",", ".");
            TextPRECIO.Text = TextPRECIO.ToString();
            String PRECIOUNIDAD = TextTOTAL.Text.Replace(",", ".");

            SqlCommand comando = new SqlCommand("insert into PEDIDOS (FECHA,IDCLIENTE,NOMBRE,APELLIDO1,APELLIDO2,DNI,DIRECCION,CIUDAD,PROVINCIA,CODIGOPOSTAL,TELEFONO,NUMERO_REFERENCIA,NOMBREPRODUCTO,COLOR,CANTIDAD,PRECIO,TOTAL) " +
                "values('" + fecha.ToString() + "'," + this.TextIDCLIENTE.Text + ",'" + this.TextNOMBRE.Text + "','" + this.TextAPELLIDO1.Text + "','" + this.TextAPELLIDO2.Text + "','" + this.TextDNI.Text + "','" + this.TextDIRECCION.Text + "','" + this.TextCIUDAD.Text + "','" + this.TextPROVINCIA.Text + "'," + this.TextCODIGOPOSTAL.Text + ",'" + this.TextTELEFONO.Text + "','" + this.Labelnumref48.Text + "','" + this.TextNOMBREPRODUCTO.Text + "','" + this.DropDownList1ColorCantimploraVerde.SelectedValue + "'," + this.DropDownList2StockCantimploraVerde.SelectedValue + "," + PRECIOUNIDAD + "," + TOTALFINAL + ")", conexion);
            comando.ExecuteNonQuery();



            LabelPedirPedido.Text = "EL PRODUCTO SE AÑADIÓ AL PEDIDO";

            conexion.Close();
        }



        protected void BtnComprarCantimploraArido_Click(object sender, EventArgs e)
        {
            string s = System.Configuration.ConfigurationManager.ConnectionStrings["cadenaconexion1"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();
            decimal TOTAL = int.Parse(DropDownList2StockCantimploraArido.SelectedValue) * decimal.Parse(TextPRECIO.Text);

            TextTOTAL.Text = TOTAL.ToString();
            String TOTALFINAL = TextTOTAL.Text.Replace(",", ".");
            TextPRECIO.Text = TextPRECIO.ToString();
            String PRECIOUNIDAD = TextTOTAL.Text.Replace(",", ".");

            SqlCommand comando = new SqlCommand("insert into PEDIDOS (FECHA,IDCLIENTE,NOMBRE,APELLIDO1,APELLIDO2,DNI,DIRECCION,CIUDAD,PROVINCIA,CODIGOPOSTAL,TELEFONO,NUMERO_REFERENCIA,NOMBREPRODUCTO,COLOR,CANTIDAD,PRECIO,TOTAL) " +
                "values('" + fecha.ToString() + "'," + this.TextIDCLIENTE.Text + ",'" + this.TextNOMBRE.Text + "','" + this.TextAPELLIDO1.Text + "','" + this.TextAPELLIDO2.Text + "','" + this.TextDNI.Text + "','" + this.TextDIRECCION.Text + "','" + this.TextCIUDAD.Text + "','" + this.TextPROVINCIA.Text + "'," + this.TextCODIGOPOSTAL.Text + ",'" + this.TextTELEFONO.Text + "','" + this.Labelnumref49.Text + "','" + this.TextNOMBREPRODUCTO.Text + "','" + this.DropDownList1ColorCantimploraArido.SelectedValue + "'," + this.DropDownList2StockCantimploraArido.SelectedValue + "," + PRECIOUNIDAD + "," + TOTALFINAL + ")", conexion);
            comando.ExecuteNonQuery();



            LabelPedirPedido.Text = "EL PRODUCTO SE AÑADIÓ AL PEDIDO";

            conexion.Close();
        }



        protected void BtnComprarCacilloAceroInox_Click(object sender, EventArgs e)
        {
            string s = System.Configuration.ConfigurationManager.ConnectionStrings["cadenaconexion1"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();
            decimal TOTAL = int.Parse(DropDownList2StockCacilloAceroInox.SelectedValue) * decimal.Parse(TextPRECIO.Text);

            TextTOTAL.Text = TOTAL.ToString();
            String TOTALFINAL = TextTOTAL.Text.Replace(",", ".");
            TextPRECIO.Text = TextPRECIO.ToString();
            String PRECIOUNIDAD = TextTOTAL.Text.Replace(",", ".");

            SqlCommand comando = new SqlCommand("insert into PEDIDOS (FECHA,IDCLIENTE,NOMBRE,APELLIDO1,APELLIDO2,DNI,DIRECCION,CIUDAD,PROVINCIA,CODIGOPOSTAL,TELEFONO,NUMERO_REFERENCIA,NOMBREPRODUCTO,COLOR,CANTIDAD,PRECIO,TOTAL) " +
                "values('" + fecha.ToString() + "'," + this.TextIDCLIENTE.Text + ",'" + this.TextNOMBRE.Text + "','" + this.TextAPELLIDO1.Text + "','" + this.TextAPELLIDO2.Text + "','" + this.TextDNI.Text + "','" + this.TextDIRECCION.Text + "','" + this.TextCIUDAD.Text + "','" + this.TextPROVINCIA.Text + "'," + this.TextCODIGOPOSTAL.Text + ",'" + this.TextTELEFONO.Text + "','" + this.Labelnumref50.Text + "','" + this.TextNOMBREPRODUCTO.Text + "','" + this.DropDownList1ColorCacilloAceroInox.SelectedValue + "'," + this.DropDownList2StockCacilloAceroInox.SelectedValue + "," + PRECIOUNIDAD + "," + TOTALFINAL + ")", conexion);
            comando.ExecuteNonQuery();



            LabelPedirPedido.Text = "EL PRODUCTO SE AÑADIÓ AL PEDIDO";

            conexion.Close();
        }



        protected void BtnComprarCubiertos3Piezas_Click(object sender, EventArgs e)
        {
            string s = System.Configuration.ConfigurationManager.ConnectionStrings["cadenaconexion1"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();
            decimal TOTAL = int.Parse(DropDownList2StockCubiertos3Piezas.SelectedValue) * decimal.Parse(TextPRECIO.Text);

            TextTOTAL.Text = TOTAL.ToString();
            String TOTALFINAL = TextTOTAL.Text.Replace(",", ".");
            TextPRECIO.Text = TextPRECIO.ToString();
            String PRECIOUNIDAD = TextTOTAL.Text.Replace(",", ".");

            SqlCommand comando = new SqlCommand("insert into PEDIDOS (FECHA,IDCLIENTE,NOMBRE,APELLIDO1,APELLIDO2,DNI,DIRECCION,CIUDAD,PROVINCIA,CODIGOPOSTAL,TELEFONO,NUMERO_REFERENCIA,NOMBREPRODUCTO,COLOR,CANTIDAD,PRECIO,TOTAL) " +
                "values('" + fecha.ToString() + "'," + this.TextIDCLIENTE.Text + ",'" + this.TextNOMBRE.Text + "','" + this.TextAPELLIDO1.Text + "','" + this.TextAPELLIDO2.Text + "','" + this.TextDNI.Text + "','" + this.TextDIRECCION.Text + "','" + this.TextCIUDAD.Text + "','" + this.TextPROVINCIA.Text + "'," + this.TextCODIGOPOSTAL.Text + ",'" + this.TextTELEFONO.Text + "','" + this.Labelnumref54.Text + "','" + this.TextNOMBREPRODUCTO.Text + "','" + this.DropDownList1ColorCubiertos3Piezas.SelectedValue + "'," + this.DropDownList2StockCubiertos3Piezas.SelectedValue + "," + PRECIOUNIDAD + "," + TOTALFINAL + ")", conexion);
            comando.ExecuteNonQuery();



            LabelPedirPedido.Text = "EL PRODUCTO SE AÑADIÓ AL PEDIDO";

            conexion.Close();
        }


        protected void BtnComprarNavajaMultiArmadaEsp_Click(object sender, EventArgs e)
        {
            string s = System.Configuration.ConfigurationManager.ConnectionStrings["cadenaconexion1"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();
            decimal TOTAL = int.Parse(DropDownList2StockNavajaMultiArmadaEsp.SelectedValue) * decimal.Parse(TextPRECIO.Text);

            TextTOTAL.Text = TOTAL.ToString();
            String TOTALFINAL = TextTOTAL.Text.Replace(",", ".");
            TextPRECIO.Text = TextPRECIO.ToString();
            String PRECIOUNIDAD = TextTOTAL.Text.Replace(",", ".");

            SqlCommand comando = new SqlCommand("insert into PEDIDOS (FECHA,IDCLIENTE,NOMBRE,APELLIDO1,APELLIDO2,DNI,DIRECCION,CIUDAD,PROVINCIA,CODIGOPOSTAL,TELEFONO,NUMERO_REFERENCIA,NOMBREPRODUCTO,COLOR,CANTIDAD,PRECIO,TOTAL) " +
                "values('" + fecha.ToString() + "'," + this.TextIDCLIENTE.Text + ",'" + this.TextNOMBRE.Text + "','" + this.TextAPELLIDO1.Text + "','" + this.TextAPELLIDO2.Text + "','" + this.TextDNI.Text + "','" + this.TextDIRECCION.Text + "','" + this.TextCIUDAD.Text + "','" + this.TextPROVINCIA.Text + "'," + this.TextCODIGOPOSTAL.Text + ",'" + this.TextTELEFONO.Text + "','" + this.Labelnumref53.Text + "','" + this.TextNOMBREPRODUCTO.Text + "','" + this.DropDownList1ColorNavajaMultiArmadaEsp.SelectedValue + "'," + this.DropDownList2StockNavajaMultiArmadaEsp.SelectedValue + "," + PRECIOUNIDAD + "," + TOTALFINAL + ")", conexion);
            comando.ExecuteNonQuery();



            LabelPedirPedido.Text = "EL PRODUCTO SE AÑADIÓ AL PEDIDO";

            conexion.Close();
        }


        protected void BtnComprarFundaCubiertoNavajaVerde_Click(object sender, EventArgs e)
        {
            string s = System.Configuration.ConfigurationManager.ConnectionStrings["cadenaconexion1"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();
            decimal TOTAL = int.Parse(DropDownList2StockFundaCubiertoNavajaVerde.SelectedValue) * decimal.Parse(TextPRECIO.Text);

            TextTOTAL.Text = TOTAL.ToString();
            String TOTALFINAL = TextTOTAL.Text.Replace(",", ".");
            TextPRECIO.Text = TextPRECIO.ToString();
            String PRECIOUNIDAD = TextTOTAL.Text.Replace(",", ".");

            SqlCommand comando = new SqlCommand("insert into PEDIDOS (FECHA,IDCLIENTE,NOMBRE,APELLIDO1,APELLIDO2,DNI,DIRECCION,CIUDAD,PROVINCIA,CODIGOPOSTAL,TELEFONO,NUMERO_REFERENCIA,NOMBREPRODUCTO,COLOR,CANTIDAD,PRECIO,TOTAL) " +
                "values('" + fecha.ToString() + "'," + this.TextIDCLIENTE.Text + ",'" + this.TextNOMBRE.Text + "','" + this.TextAPELLIDO1.Text + "','" + this.TextAPELLIDO2.Text + "','" + this.TextDNI.Text + "','" + this.TextDIRECCION.Text + "','" + this.TextCIUDAD.Text + "','" + this.TextPROVINCIA.Text + "'," + this.TextCODIGOPOSTAL.Text + ",'" + this.TextTELEFONO.Text + "','" + this.Labelnumref19.Text + "','" + this.TextNOMBREPRODUCTO.Text + "','" + this.DropDownList1ColorFundaCubiertoNavajaVerde.SelectedValue + "'," + this.DropDownList2StockFundaCubiertoNavajaVerde.SelectedValue + "," + PRECIOUNIDAD + "," + TOTALFINAL + ")", conexion);
            comando.ExecuteNonQuery();



            LabelPedirPedido.Text = "EL PRODUCTO SE AÑADIÓ AL PEDIDO";

            conexion.Close();
        }


        protected void BtnComprarFundaCubiertoNavajaNegra_Click(object sender, EventArgs e)
        {
            string s = System.Configuration.ConfigurationManager.ConnectionStrings["cadenaconexion1"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();
            decimal TOTAL = int.Parse(DropDownList2StockFundaCubiertoNavajaNegra.SelectedValue) * decimal.Parse(TextPRECIO.Text);

            TextTOTAL.Text = TOTAL.ToString();
            String TOTALFINAL = TextTOTAL.Text.Replace(",", ".");
            TextPRECIO.Text = TextPRECIO.ToString();
            String PRECIOUNIDAD = TextTOTAL.Text.Replace(",", ".");

            SqlCommand comando = new SqlCommand("insert into PEDIDOS (FECHA,IDCLIENTE,NOMBRE,APELLIDO1,APELLIDO2,DNI,DIRECCION,CIUDAD,PROVINCIA,CODIGOPOSTAL,TELEFONO,NUMERO_REFERENCIA,NOMBREPRODUCTO,COLOR,CANTIDAD,PRECIO,TOTAL) " +
                "values('" + fecha.ToString() + "'," + this.TextIDCLIENTE.Text + ",'" + this.TextNOMBRE.Text + "','" + this.TextAPELLIDO1.Text + "','" + this.TextAPELLIDO2.Text + "','" + this.TextDNI.Text + "','" + this.TextDIRECCION.Text + "','" + this.TextCIUDAD.Text + "','" + this.TextPROVINCIA.Text + "'," + this.TextCODIGOPOSTAL.Text + ",'" + this.TextTELEFONO.Text + "','" + this.Labelnumref30.Text + "','" + this.TextNOMBREPRODUCTO.Text + "','" + this.DropDownList1ColorFundaCubiertoNavajaNegra.SelectedValue + "'," + this.DropDownList2StockFundaCubiertoNavajaNegra.SelectedValue + "," + PRECIOUNIDAD + "," + TOTALFINAL + ")", conexion);
            comando.ExecuteNonQuery();



            LabelPedirPedido.Text = "EL PRODUCTO SE AÑADIÓ AL PEDIDO";

            conexion.Close();
        }


        protected void BtnComprarFundaCubiertoNavajaAridoPixel_Click(object sender, EventArgs e)
        {
            string s = System.Configuration.ConfigurationManager.ConnectionStrings["cadenaconexion1"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();
            decimal TOTAL = int.Parse(DropDownList2StockFundaCubiertoNavajaAridoPixel.SelectedValue) * decimal.Parse(TextPRECIO.Text);

            TextTOTAL.Text = TOTAL.ToString();
            String TOTALFINAL = TextTOTAL.Text.Replace(",", ".");
            TextPRECIO.Text = TextPRECIO.ToString();
            String PRECIOUNIDAD = TextTOTAL.Text.Replace(",", ".");

            SqlCommand comando = new SqlCommand("insert into PEDIDOS (FECHA,IDCLIENTE,NOMBRE,APELLIDO1,APELLIDO2,DNI,DIRECCION,CIUDAD,PROVINCIA,CODIGOPOSTAL,TELEFONO,NUMERO_REFERENCIA,NOMBREPRODUCTO,COLOR,CANTIDAD,PRECIO,TOTAL) " +
                "values('" + fecha.ToString() + "'," + this.TextIDCLIENTE.Text + ",'" + this.TextNOMBRE.Text + "','" + this.TextAPELLIDO1.Text + "','" + this.TextAPELLIDO2.Text + "','" + this.TextDNI.Text + "','" + this.TextDIRECCION.Text + "','" + this.TextCIUDAD.Text + "','" + this.TextPROVINCIA.Text + "'," + this.TextCODIGOPOSTAL.Text + ",'" + this.TextTELEFONO.Text + "','" + this.Labelnumref44.Text + "','" + this.TextNOMBREPRODUCTO.Text + "','" + this.DropDownList1ColorFundaCubiertoNavajaAridoPixel.SelectedValue + "'," + this.DropDownList2StockFundaCubiertoNavajaAridoPixel.SelectedValue + "," + PRECIOUNIDAD + "," + TOTALFINAL + ")", conexion);
            comando.ExecuteNonQuery();



            LabelPedirPedido.Text = "EL PRODUCTO SE AÑADIÓ AL PEDIDO";

            conexion.Close();
        }



        protected void BtnComprarPlatoMarmitaSartenAceroInox_Click(object sender, EventArgs e)
        {
            string s = System.Configuration.ConfigurationManager.ConnectionStrings["cadenaconexion1"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();
            decimal TOTAL = int.Parse(DropDownList2StockPlatoMarmitaSartenAceroInox.SelectedValue) * decimal.Parse(TextPRECIO.Text);

            TextTOTAL.Text = TOTAL.ToString();
            String TOTALFINAL = TextTOTAL.Text.Replace(",", ".");
            TextPRECIO.Text = TextPRECIO.ToString();
            String PRECIOUNIDAD = TextTOTAL.Text.Replace(",", ".");

            SqlCommand comando = new SqlCommand("insert into PEDIDOS (FECHA,IDCLIENTE,NOMBRE,APELLIDO1,APELLIDO2,DNI,DIRECCION,CIUDAD,PROVINCIA,CODIGOPOSTAL,TELEFONO,NUMERO_REFERENCIA,NOMBREPRODUCTO,COLOR,CANTIDAD,PRECIO,TOTAL) " +
                "values('" + fecha.ToString() + "'," + this.TextIDCLIENTE.Text + ",'" + this.TextNOMBRE.Text + "','" + this.TextAPELLIDO1.Text + "','" + this.TextAPELLIDO2.Text + "','" + this.TextDNI.Text + "','" + this.TextDIRECCION.Text + "','" + this.TextCIUDAD.Text + "','" + this.TextPROVINCIA.Text + "'," + this.TextCODIGOPOSTAL.Text + ",'" + this.TextTELEFONO.Text + "','" + this.Labelnumref51.Text + "','" + this.TextNOMBREPRODUCTO.Text + "','" + this.DropDownList1ColorPlatoMarmitaSartenAceroInox.SelectedValue + "'," + this.DropDownList2StockPlatoMarmitaSartenAceroInox.SelectedValue + "," + PRECIOUNIDAD + "," + TOTALFINAL + ")", conexion);
            comando.ExecuteNonQuery();



            LabelPedirPedido.Text = "EL PRODUCTO SE AÑADIÓ AL PEDIDO";

            conexion.Close();
        }



        protected void BtnComprarPlatoMarmitaSartenAluminioVerde_Click(object sender, EventArgs e)
        {
            string s = System.Configuration.ConfigurationManager.ConnectionStrings["cadenaconexion1"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();
            decimal TOTAL = int.Parse(DropDownList2StockPlatoMarmitaSartenAluminioVerde.SelectedValue) * decimal.Parse(TextPRECIO.Text);

            TextTOTAL.Text = TOTAL.ToString();
            String TOTALFINAL = TextTOTAL.Text.Replace(",", ".");
            TextPRECIO.Text = TextPRECIO.ToString();
            String PRECIOUNIDAD = TextTOTAL.Text.Replace(",", ".");

            SqlCommand comando = new SqlCommand("insert into PEDIDOS (FECHA,IDCLIENTE,NOMBRE,APELLIDO1,APELLIDO2,DNI,DIRECCION,CIUDAD,PROVINCIA,CODIGOPOSTAL,TELEFONO,NUMERO_REFERENCIA,NOMBREPRODUCTO,COLOR,CANTIDAD,PRECIO,TOTAL) " +
                "values('" + fecha.ToString() + "'," + this.TextIDCLIENTE.Text + ",'" + this.TextNOMBRE.Text + "','" + this.TextAPELLIDO1.Text + "','" + this.TextAPELLIDO2.Text + "','" + this.TextDNI.Text + "','" + this.TextDIRECCION.Text + "','" + this.TextCIUDAD.Text + "','" + this.TextPROVINCIA.Text + "'," + this.TextCODIGOPOSTAL.Text + ",'" + this.TextTELEFONO.Text + "','" + this.Labelnumref52.Text + "','" + this.TextNOMBREPRODUCTO.Text + "','" + this.DropDownList1ColorPlatoMarmitaSartenAluminioVerde.SelectedValue + "'," + this.DropDownList2StockPlatoMarmitaSartenAluminioVerde.SelectedValue + "," + PRECIOUNIDAD + "," + TOTALFINAL + ")", conexion);
            comando.ExecuteNonQuery();



            LabelPedirPedido.Text = "EL PRODUCTO SE AÑADIÓ AL PEDIDO";

            conexion.Close();
        }



        protected void BtnComprarMangueraFlexibleAluminioBidonGasolin_Click(object sender, EventArgs e)
        {
            string s = System.Configuration.ConfigurationManager.ConnectionStrings["cadenaconexion1"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();
            decimal TOTAL = int.Parse(DropDownList2StockMangueraFlexibleAluminioBidonGasolin.SelectedValue) * decimal.Parse(TextPRECIO.Text);

            TextTOTAL.Text = TOTAL.ToString();
            String TOTALFINAL = TextTOTAL.Text.Replace(",", ".");
            TextPRECIO.Text = TextPRECIO.ToString();
            String PRECIOUNIDAD = TextTOTAL.Text.Replace(",", ".");

            SqlCommand comando = new SqlCommand("insert into PEDIDOS (FECHA,IDCLIENTE,NOMBRE,APELLIDO1,APELLIDO2,DNI,DIRECCION,CIUDAD,PROVINCIA,CODIGOPOSTAL,TELEFONO,NUMERO_REFERENCIA,NOMBREPRODUCTO,COLOR,CANTIDAD,PRECIO,TOTAL) " +
                "values('" + fecha.ToString() + "'," + this.TextIDCLIENTE.Text + ",'" + this.TextNOMBRE.Text + "','" + this.TextAPELLIDO1.Text + "','" + this.TextAPELLIDO2.Text + "','" + this.TextDNI.Text + "','" + this.TextDIRECCION.Text + "','" + this.TextCIUDAD.Text + "','" + this.TextPROVINCIA.Text + "'," + this.TextCODIGOPOSTAL.Text + ",'" + this.TextTELEFONO.Text + "','" + this.Labelnumrefmiltec2.Text + "','" + this.TextNOMBREPRODUCTO.Text + "','" + this.DropDownList1ColorMangueraFlexibleAluminioBidonGasolin.SelectedValue + "'," + this.DropDownList2StockMangueraFlexibleAluminioBidonGasolin.SelectedValue + "," + PRECIOUNIDAD + "," + TOTALFINAL + ")", conexion);
            comando.ExecuteNonQuery();



            LabelPedirPedido.Text = "EL PRODUCTO SE AÑADIÓ AL PEDIDO";

            conexion.Close();
        }



        protected void BtnComprarFastenerNegro1par_Click(object sender, EventArgs e)
        {
            string s = System.Configuration.ConfigurationManager.ConnectionStrings["cadenaconexion1"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();
            decimal TOTAL = int.Parse(DropDownList2StockFastenerNegro1par.SelectedValue) * decimal.Parse(TextPRECIO.Text);

            TextTOTAL.Text = TOTAL.ToString();
            String TOTALFINAL = TextTOTAL.Text.Replace(",", ".");
            TextPRECIO.Text = TextPRECIO.ToString();
            String PRECIOUNIDAD = TextTOTAL.Text.Replace(",", ".");

            SqlCommand comando = new SqlCommand("insert into PEDIDOS (FECHA,IDCLIENTE,NOMBRE,APELLIDO1,APELLIDO2,DNI,DIRECCION,CIUDAD,PROVINCIA,CODIGOPOSTAL,TELEFONO,NUMERO_REFERENCIA,NOMBREPRODUCTO,COLOR,CANTIDAD,PRECIO,TOTAL) " +
                "values('" + fecha.ToString() + "'," + this.TextIDCLIENTE.Text + ",'" + this.TextNOMBRE.Text + "','" + this.TextAPELLIDO1.Text + "','" + this.TextAPELLIDO2.Text + "','" + this.TextDNI.Text + "','" + this.TextDIRECCION.Text + "','" + this.TextCIUDAD.Text + "','" + this.TextPROVINCIA.Text + "'," + this.TextCODIGOPOSTAL.Text + ",'" + this.TextTELEFONO.Text + "','" + this.Labelnumref55.Text + "','" + this.TextNOMBREPRODUCTO.Text + "','" + this.DropDownList1ColorFastenerNegro1par.SelectedValue + "'," + this.DropDownList2StockFastenerNegro1par.SelectedValue + "," + PRECIOUNIDAD + "," + TOTALFINAL + ")", conexion);
            comando.ExecuteNonQuery();



            LabelPedirPedido.Text = "EL PRODUCTO SE AÑADIÓ AL PEDIDO";

            conexion.Close();
        }



        protected void BtnComprarBolsa5Fasteners_Click(object sender, EventArgs e)
        {
            string s = System.Configuration.ConfigurationManager.ConnectionStrings["cadenaconexion1"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();
            decimal TOTAL = int.Parse(DropDownList2StockBolsa5Fasteners.SelectedValue) * decimal.Parse(TextPRECIO.Text);

            TextTOTAL.Text = TOTAL.ToString();
            String TOTALFINAL = TextTOTAL.Text.Replace(",", ".");
            TextPRECIO.Text = TextPRECIO.ToString();
            String PRECIOUNIDAD = TextTOTAL.Text.Replace(",", ".");

            SqlCommand comando = new SqlCommand("insert into PEDIDOS (FECHA,IDCLIENTE,NOMBRE,APELLIDO1,APELLIDO2,DNI,DIRECCION,CIUDAD,PROVINCIA,CODIGOPOSTAL,TELEFONO,NUMERO_REFERENCIA,NOMBREPRODUCTO,COLOR,CANTIDAD,PRECIO,TOTAL) " +
                "values('" + fecha.ToString() + "'," + this.TextIDCLIENTE.Text + ",'" + this.TextNOMBRE.Text + "','" + this.TextAPELLIDO1.Text + "','" + this.TextAPELLIDO2.Text + "','" + this.TextDNI.Text + "','" + this.TextDIRECCION.Text + "','" + this.TextCIUDAD.Text + "','" + this.TextPROVINCIA.Text + "'," + this.TextCODIGOPOSTAL.Text + ",'" + this.TextTELEFONO.Text + "','" + this.Labelnumref56.Text + "','" + this.TextNOMBREPRODUCTO.Text + "','" + this.DropDownList1ColorBolsa5Fasteners.SelectedValue + "'," + this.DropDownList2StockBolsa5Fasteners.SelectedValue + "," + PRECIOUNIDAD + "," + TOTALFINAL + ")", conexion);
            comando.ExecuteNonQuery();



            LabelPedirPedido.Text = "EL PRODUCTO SE AÑADIÓ AL PEDIDO";

            conexion.Close();
        }



        protected void BtnComprarGorraOfArmadaEsp_Click(object sender, EventArgs e)
        {
            string s = System.Configuration.ConfigurationManager.ConnectionStrings["cadenaconexion1"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();
            decimal TOTAL = int.Parse(DropDownList2StockGorraOfArmadaEsp.SelectedValue) * decimal.Parse(TextPRECIO.Text);

            TextTOTAL.Text = TOTAL.ToString();
            String TOTALFINAL = TextTOTAL.Text.Replace(",", ".");
            TextPRECIO.Text = TextPRECIO.ToString();
            String PRECIOUNIDAD = TextTOTAL.Text.Replace(",", ".");

            SqlCommand comando = new SqlCommand("insert into PEDIDOS (FECHA,IDCLIENTE,NOMBRE,APELLIDO1,APELLIDO2,DNI,DIRECCION,CIUDAD,PROVINCIA,CODIGOPOSTAL,TELEFONO,NUMERO_REFERENCIA,NOMBREPRODUCTO,COLOR,CANTIDAD,PRECIO,TOTAL) " +
                "values('" + fecha.ToString() + "'," + this.TextIDCLIENTE.Text + ",'" + this.TextNOMBRE.Text + "','" + this.TextAPELLIDO1.Text + "','" + this.TextAPELLIDO2.Text + "','" + this.TextDNI.Text + "','" + this.TextDIRECCION.Text + "','" + this.TextCIUDAD.Text + "','" + this.TextPROVINCIA.Text + "'," + this.TextCODIGOPOSTAL.Text + ",'" + this.TextTELEFONO.Text + "','" + this.Labelnumrefgabardos.Text + "','" + this.TextNOMBREPRODUCTO.Text + "','" + this.DropDownList1ColorGorraOfArmadaEsp.SelectedValue + "'," + this.DropDownList2StockGorraOfArmadaEsp.SelectedValue + "," + PRECIOUNIDAD + "," + TOTALFINAL + ")", conexion);
            comando.ExecuteNonQuery();



            LabelPedirPedido.Text = "EL PRODUCTO SE AÑADIÓ AL PEDIDO";

            conexion.Close();
        }



        protected void BtnComprarAbrigoArmadaBrit_Click(object sender, EventArgs e)
        {
            string s = System.Configuration.ConfigurationManager.ConnectionStrings["cadenaconexion1"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();
            decimal TOTAL = int.Parse(DropDownList2StockAbrigoArmadaBrit.SelectedValue) * decimal.Parse(TextPRECIO.Text);

            TextTOTAL.Text = TOTAL.ToString();
            String TOTALFINAL = TextTOTAL.Text.Replace(",", ".");
            TextPRECIO.Text = TextPRECIO.ToString();
            String PRECIOUNIDAD = TextTOTAL.Text.Replace(",", ".");

            SqlCommand comando = new SqlCommand("insert into PEDIDOS (FECHA,IDCLIENTE,NOMBRE,APELLIDO1,APELLIDO2,DNI,DIRECCION,CIUDAD,PROVINCIA,CODIGOPOSTAL,TELEFONO,NUMERO_REFERENCIA,NOMBREPRODUCTO,COLOR,CANTIDAD,PRECIO,TOTAL) " +
                "values('" + fecha.ToString() + "'," + this.TextIDCLIENTE.Text + ",'" + this.TextNOMBRE.Text + "','" + this.TextAPELLIDO1.Text + "','" + this.TextAPELLIDO2.Text + "','" + this.TextDNI.Text + "','" + this.TextDIRECCION.Text + "','" + this.TextCIUDAD.Text + "','" + this.TextPROVINCIA.Text + "'," + this.TextCODIGOPOSTAL.Text + ",'" + this.TextTELEFONO.Text + "','" + this.Labelnumrefmiltec1.Text + "','" + this.TextNOMBREPRODUCTO.Text + "','" + this.DropDownList1ColorAbrigoArmadaBrit.SelectedValue + "'," + this.DropDownList2StockAbrigoArmadaBrit.SelectedValue + "," + PRECIOUNIDAD + "," + TOTALFINAL + ")", conexion);
            comando.ExecuteNonQuery();



            LabelPedirPedido.Text = "EL PRODUCTO SE AÑADIÓ AL PEDIDO";

            conexion.Close();
        }



        protected void BtnComprarLoteLiqProductos_Click(object sender, EventArgs e)
        {
            string s = System.Configuration.ConfigurationManager.ConnectionStrings["cadenaconexion1"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();
            decimal TOTAL = int.Parse(DropDownList2StockLoteLiqProductos.SelectedValue) * decimal.Parse(TextPRECIO.Text);

            TextTOTAL.Text = TOTAL.ToString();
            String TOTALFINAL = TextTOTAL.Text.Replace(",", ".");
            TextPRECIO.Text = TextPRECIO.ToString();
            String PRECIOUNIDAD = TextTOTAL.Text.Replace(",", ".");

            SqlCommand comando = new SqlCommand("insert into PEDIDOS (FECHA,IDCLIENTE,NOMBRE,APELLIDO1,APELLIDO2,DNI,DIRECCION,CIUDAD,PROVINCIA,CODIGOPOSTAL,TELEFONO,NUMERO_REFERENCIA,NOMBREPRODUCTO,COLOR,CANTIDAD,PRECIO,TOTAL) " +
                "values('" + fecha.ToString() + "'," + this.TextIDCLIENTE.Text + ",'" + this.TextNOMBRE.Text + "','" + this.TextAPELLIDO1.Text + "','" + this.TextAPELLIDO2.Text + "','" + this.TextDNI.Text + "','" + this.TextDIRECCION.Text + "','" + this.TextCIUDAD.Text + "','" + this.TextPROVINCIA.Text + "'," + this.TextCODIGOPOSTAL.Text + ",'" + this.TextTELEFONO.Text + "','" + this.Labelnumrefliquidacionlotecomp.Text + "','" + this.TextNOMBREPRODUCTO.Text + "','" + this.DropDownList1ColorLoteLiqProductos.SelectedValue + "'," + this.DropDownList2StockLoteLiqProductos.SelectedValue + "," + PRECIOUNIDAD + "," + TOTALFINAL + ")", conexion);
            comando.ExecuteNonQuery();



            LabelPedirPedido.Text = "EL PRODUCTO SE AÑADIÓ AL PEDIDO";

            conexion.Close();
        }


        //BOTON REALIZAR PEDIDO

        protected void BtnRealizaPedido_Click(object sender, EventArgs e)
        {

            string s = System.Configuration.ConfigurationManager.ConnectionStrings["cadenaconexion1"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();
            SqlCommand comando = new SqlCommand("Select TOP 1 IDPEDIDO FROM PEDIDOS ORDER BY IDPEDIDO DESC", conexion);
            SqlDataReader registro = comando.ExecuteReader();
            if (registro.Read())
            {
                pedido = registro["IDPEDIDO"].ToString();
                Response.Redirect("Factura.aspx?pedido=" + pedido);
            }
            else
            {
                this.Label4.Text = "HA HABIDO ALGÚN ERROR";
            }
            conexion.Close();


            

            
        }

        //BOTON CANCELAR PEDIDO
        protected void BtnCancelaPedido_Click(object sender, EventArgs e)
        {

        }

    }
}