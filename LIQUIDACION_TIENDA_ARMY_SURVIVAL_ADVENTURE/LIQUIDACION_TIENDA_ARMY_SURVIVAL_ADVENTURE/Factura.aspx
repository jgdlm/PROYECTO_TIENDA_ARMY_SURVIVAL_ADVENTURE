<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Factura.aspx.cs" Inherits="LIQUIDACION_TIENDA_ARMY_SURVIVAL_ADVENTURE.Factura" %>

<!--Usuario: Jorge González De La Miar Fecha: 10 de Septiembre de 2021-->
<!--PAGINA TIENDA.aspx (COMPRA DE PRODUCTOS)-->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" 
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"> 
<html xmlns="http://www.w3.org/1999/xhtml" lang="es" xml:lang="es">
<head runat="server">

<!-- Etiquetas requeridas-->	
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
<meta name="author" content="Jorge González De La Miar" />
<meta name="copyright" content="Army Survival Adventure" />
<meta name="robots" content="Tienda, follow" />
<meta name="keywords" content="Tienda-Online-Militar, Army-Survival-Adventure, MateriaL-Militar,Tienda-Online-Army-Survival-Adventure, Liquidacion-Productos-Stock-Tienda-Online-Army-Survival-Adventure, Militar, Policial, Supervivencia, Bushcraft, Cuchilleria, Airsoft, Semana-Santa" />
<meta name="description" content="Tienda Online Army Survival Adventure" />
<link rel="preconnect" href="https://fonts.gstatic.com" />
<link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,500;1,300&display=swap" rel="stylesheet" /> 
<!--enlace al CSS Bootstrap-->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />
<!--enlace a imagenes de iconos-->
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous" />
<!-- enlace al jQuery-->
<script src="script/jquery-3.6.0.min.js" type="text/jquery"></script>
<!-- enlace al JS Bootstrap-->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js" type="text/jsbootstrap"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" type="text/jsbootstrap"></script>
<!--enlace al CSS propio-->
<link rel="stylesheet" type="text/css" href="css/estilos.css" />
<!--enlace al img Favicon-->
<link rel="icon" type="image/png" sizes="96x96" href="imagenes/favicon-96x96.png" />
<title>Army Survival Adventure</title>
</head>
<body>
    <!--Encabezado-->
	<header class="col-sm-12 col-xl-12">
			<img src="imagenes/Logo.png" class="img-fluid col-sm-12 col-xl-12" title="LogoArmySurvivalAdventure" alt="LogoArmySurvivalAdventure" />
	</header>
	
	<!-- Menu de Navegación-->
	<nav class="navbar navbar-expand-sm menu">
		<!-- Inicio con imagen de Logo Army Survival Adventure(home)-->
		<a class="navbar-brand" href="index.html">
			<img src="imagenes/favicon-96x96.png" class="logo rounded-circle" alt="logo" /> INICIO
			</a>

			<ul class="navbar-nav">
				<li class="nav-item">
				  <a class="nav-link" href="Tienda.html">TIENDA</a>
				</li>
				<li class="nav-item">
				  <a class="nav-link" href="IniciarSesion.html"><span class="fa fa-user iconperfil"></span> INICIAR SESIÓN</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="CondicionesGeneralesCompra.html">CONDICIONES GENERALES DE LA COMPRA</a>
				  </li>
				  <li class="nav-item">
					<a class="nav-link" href="Contacto.html">CONTACTO</a>
				  </li>  
			</ul>
	</nav>
	<form id="form1" runat="server">
        <!--Contenedor Principal-->
        <div id="cuerpo" class="container-fluid col-sm-11 col-xl-11">
		<h1 class="col-sm-11 col-xl-11">FACTURA:</h1>
			
            <br />
			<div class="container mt-50 mb-50">
				<div class="row">
						<div class="col s11 m4 l3">
					
							<asp:Label ID="LabelFECHA" runat="server" ForeColor="#59622b" Font-Bold="True" Text="FECHA"></asp:Label>
							<asp:TextBox ID="TextFECHA" runat="server" Font-Bold="True" ForeColor="Black"></asp:TextBox>
					

							<asp:Label ID="LabelIDPEDIDO" runat="server" ForeColor="#59622b" Font-Bold="True" Text="IDPEDIDO"></asp:Label>
							<asp:TextBox ID="IDPEDIDO" runat="server" Font-Bold="True" ForeColor="Black"></asp:TextBox>
							
					

							<asp:Label ID="LabelIDCLIENTE" runat="server" ForeColor="#59622b" Font-Bold="True" Text="IDCLIENTE"></asp:Label>
							<asp:TextBox ID="TextIDCLIENTE" runat="server" Font-Bold="True" ForeColor="Black"></asp:TextBox>

						</div>
					</div>


				<div class="row">
						<div class="col s11 m4 l3">
							<asp:Label ID="LabelDNI" runat="server" ForeColor="#59622b" Font-Bold="True" Text="DNI"></asp:Label>
							<asp:TextBox ID="TextDNI" runat="server" Font-Bold="True" ForeColor="Black"></asp:TextBox>
					
							<asp:Label ID="LabelNOMBRE" runat="server" ForeColor="#59622b" Font-Bold="True" Text="NOMBRE"></asp:Label>
							<asp:TextBox ID="TextNOMBRE" runat="server" Font-Bold="True" ForeColor="Black"></asp:TextBox>
					

							<asp:Label ID="LabeLAPELLIDO1" runat="server" ForeColor="#59622b" Font-Bold="True" Text="APELLIDO1"></asp:Label>
							<asp:TextBox ID="TextAPELLIDO1" runat="server" Font-Bold="True" ForeColor="Black"></asp:TextBox>
					

						</div>
					</div>

				<div class="row">
						<div class="col s11 m4 l3">
							<asp:Label ID="LabelAPELLIDO2" runat="server" ForeColor="#59622b" Font-Bold="True" Text="APELLIDO2"></asp:Label>
							<asp:TextBox ID="TextAPELLIDO2" runat="server" Font-Bold="True" ForeColor="Black"></asp:TextBox>


							<asp:Label ID="LabelDIRECCION" runat="server" ForeColor="#59622b" Font-Bold="True" Text="DIRECCION"></asp:Label>
							<asp:TextBox ID="TextDIRECCION" runat="server" Font-Bold="True" ForeColor="Black"></asp:TextBox>
					

							<asp:Label ID="LabelCIUDAD" runat="server" ForeColor="#59622b" Font-Bold="True" Text="CIUDAD"></asp:Label>
							<asp:TextBox ID="TextCIUDAD" runat="server" Font-Bold="True" ForeColor="Black"></asp:TextBox>
					
						</div>
					</div>

				<div class="row">
						<div class="col s11 m4 l3">
							<asp:Label ID="LabelPROVINCIA" runat="server" ForeColor="#59622b" Font-Bold="True" Text="PROVINCIA"></asp:Label>
							<asp:TextBox ID="TextPROVINCIA" runat="server" Font-Bold="True" ForeColor="Black"></asp:TextBox>
					

							<asp:Label ID="LabelCODIGOPOSTAL" runat="server" ForeColor="#59622b" Font-Bold="True" Text="CODIGOPOSTAL"></asp:Label>
							<asp:TextBox ID="TextCODIGOPOSTAL" runat="server" Font-Bold="True" ForeColor="Black"></asp:TextBox>

							<asp:Label ID="LabelTELEFONO" runat="server" ForeColor="#59622b" Font-Bold="True" Text="TELEFONO"></asp:Label>
							<asp:TextBox ID="TextTELEFONO" runat="server" Font-Bold="True" ForeColor="Black"></asp:TextBox>
					
						</div>
					</div>


				<div class="row">
						<div class="col s11 m4 l3">
								<asp:Label ID="LabelNUMERO_REFERENCIA" runat="server" ForeColor="#59622b" Font-Bold="True" Text="NUMERO REFERENCIA"></asp:Label>
								<asp:TextBox ID="TextNUMERO_REFERENCIA" runat="server" Font-Bold="True" ForeColor="Black"></asp:TextBox>
					

								<asp:Label ID="LabelNOMBREPRODUCTO" runat="server" ForeColor="#59622b" Font-Bold="True" Text="NOMBREPRODUCTO"></asp:Label>
								<asp:TextBox ID="TextNOMBREPRODUCTO" runat="server" Font-Bold="True" ForeColor="Black"></asp:TextBox>
					

								<asp:Label ID="LabelPRECIO" runat="server" ForeColor="#59622b" Font-Bold="True" Text="PRECIO"></asp:Label>
								<asp:TextBox ID="TextPRECIO" runat="server" Font-Bold="True" ForeColor="Black"></asp:TextBox>



								<asp:Label ID="LabelTOTAL" runat="server" ForeColor="#59622b" Font-Bold="True" Text="TOTAL"></asp:Label>
								<asp:TextBox ID="TextTOTAL" runat="server" Font-Bold="True" ForeColor="Black"></asp:TextBox>
					
					
					   </div>
					</div>

			</div>

			<div class="row">
				  <div class="col-11">
						<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="IDPEDIDO" DataSourceID="SqlDataSource1" Width="16px">
							<Columns>
								<asp:BoundField DataField="FECHA" HeaderText="FECHA" SortExpression="FECHA" />
								<asp:BoundField DataField="IDPEDIDO" HeaderText="IDPEDIDO" InsertVisible="False" ReadOnly="True" SortExpression="IDPEDIDO" />
								<asp:BoundField DataField="IDCLIENTE" HeaderText="IDCLIENTE" SortExpression="IDCLIENTE" />
								<asp:BoundField DataField="NOMBRE" HeaderText="NOMBRE" SortExpression="NOMBRE" />
								<asp:BoundField DataField="APELLIDO1" HeaderText="APELLIDO1" SortExpression="APELLIDO1" />
								<asp:BoundField DataField="APELLIDO2" HeaderText="APELLIDO2" SortExpression="APELLIDO2" />
								<asp:BoundField DataField="DNI" HeaderText="DNI" SortExpression="DNI" />
								<asp:BoundField DataField="DIRECCION" HeaderText="DIRECCION" SortExpression="DIRECCION" />
								<asp:BoundField DataField="CIUDAD" HeaderText="CIUDAD" SortExpression="CIUDAD" />
								<asp:BoundField DataField="PROVINCIA" HeaderText="PROVINCIA" SortExpression="PROVINCIA" />
								<asp:BoundField DataField="CODIGOPOSTAL" HeaderText="CODIGOPOSTAL" SortExpression="CODIGOPOSTAL" />
								<asp:BoundField DataField="TELEFONO" HeaderText="TELEFONO" SortExpression="TELEFONO" />
								<asp:BoundField DataField="NUMERO_REFERENCIA" HeaderText="NUMERO_REFERENCIA" SortExpression="NUMERO_REFERENCIA" />
								<asp:BoundField DataField="NOMBREPRODUCTO" HeaderText="NOMBREPRODUCTO" SortExpression="NOMBREPRODUCTO" />
								<asp:BoundField DataField="COLOR" HeaderText="COLOR" SortExpression="COLOR" />
								<asp:BoundField DataField="CANTIDAD" HeaderText="CANTIDAD" SortExpression="CANTIDAD" />
								<asp:BoundField DataField="PRECIO" HeaderText="PRECIO" SortExpression="PRECIO" />
								<asp:BoundField DataField="TOTAL" HeaderText="TOTAL" SortExpression="TOTAL" />
							</Columns>
				    </asp:GridView>
					<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LIQUIDACION_TIENDA_ARMY_SURVIVAL_ADVENTUREConnectionString %>" SelectCommand="SELECT * FROM [PEDIDOS] WHERE ([IDPEDIDO] = @IDPEDIDO)">
						<SelectParameters>
							<asp:ControlParameter ControlID="IDPEDIDO" Name="IDPEDIDO" PropertyName="Text" Type="Int32" />
						</SelectParameters>
					</asp:SqlDataSource>

							
				   </div>
				</div>
            
            

















        </div><!--Fin del Div Container (Contenido de la página)-->
    </form>

<!--Pie de Página-->
<footer>
	<div class="container-sm">
		<!--Copyright-->
		<span class="float-left">&copy; Copyright 2021, ARMY SURVIVAL ADVENTURE &reg;</span>
		<!--Redes Sociales-->	
		 <div class="float-right">
				<a href="https://www.facebook.com/armysurvivaladventure/shop/?ref_code=mini_shop_page_card_cta&ref_surface=page">
				<img src="imagenes/iconfacebook.png" class="redessociales rounded" title="Facebook Army Survival Adventure" alt="social" />
				</a>
						
				<a href="https://www.youtube.com/channel/UCmGTtBKuOz_pMRkEAbxBQQw?view_as=subscriber">
				<img src="imagenes/iconyoutube.png" class="redessociales" title="Youtube Army Survival Adventure" alt="social" />
				</a>

				<a href="https://api.whatsapp.com/send/?phone=34617603097&text&app_absent=0">
				<img src="imagenes/iconwhatsapp.png" class="redessociales" title="Whatsapp Army Survival Adventure" alt="social" />
				</a>

				<a href="https://www.google.es/maps/place/ARMY+SURVIVAL+ADVENTURE/@43.3874028,-5.8259291,2036m/data=!3m1!1e3!4m5!3m4!1s0x0:0x2bb53ce37d5287eb!8m2!3d43.3874028!4d-5.8259291">
				<img src="imagenes/icongooglebusiness.png" class="redessociales" title="Google Business Army Survival Adventure" alt="social" />
				</a>
		 </div>	
	</div>	
</footer>


</body>
</html>

