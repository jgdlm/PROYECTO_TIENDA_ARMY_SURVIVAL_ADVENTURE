<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Tienda.aspx.cs" Inherits="LIQUIDACION_TIENDA_ARMY_SURVIVAL_ADVENTURE.Tienda" %>

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
            <h1 class="col-sm-11 col-xl-11">TIENDA:</h1>
			<img src="imagenes/portadaTiendaaspx.jpg" alt="Portada Tienda aspx" class="img-fluid col-sm-12 col-xl-12" /><!--Portada Tiendaaspx-->
	        <h2 class="bienvenido">AQUI PODRÁ REALIZAR LA COMPRA DE PRODUCTOS DEL STOCK DE LIQUIDACIÓN O EL LOTE COMPLETO DEL STOCK:</h2>
			<div class="container mt-50 mb-50">
				<div class="row">
						<div class="col s11 m4 l3">
					
							<asp:Label ID="LabelFECHA" runat="server" ForeColor="Red" Font-Bold="True" Text="FECHA"></asp:Label>
							<asp:TextBox ID="TextFECHA" runat="server" Font-Bold="True" ForeColor="#009933"></asp:TextBox>
					

							<asp:Label ID="LabelIDPEDIDO" runat="server" ForeColor="Red" Font-Bold="True" Text="IDPEDIDO"></asp:Label>
							<asp:TextBox ID="TextIDPEDIDO" runat="server" Font-Bold="True" ForeColor="#009933"></asp:TextBox>
					

							<asp:Label ID="LabelIDCLIENTE" runat="server" ForeColor="Red" Font-Bold="True" Text="IDCLIENTE"></asp:Label>
							<asp:TextBox ID="TextIDCLIENTE" runat="server" Font-Bold="True" ForeColor="#009933"></asp:TextBox>

						</div>
					</div>


				<div class="row">
						<div class="col s11 m4 l3">
							<asp:Label ID="LabelDNI" runat="server" ForeColor="Red" Font-Bold="True" Text="DNI"></asp:Label>
							<asp:TextBox ID="TextDNI" runat="server" Font-Bold="True" ForeColor="#009933"></asp:TextBox>
					
							<asp:Label ID="LabelNOMBRE" runat="server" ForeColor="Red" Font-Bold="True" Text="NOMBRE"></asp:Label>
							<asp:TextBox ID="TextNOMBRE" runat="server" Font-Bold="True" ForeColor="#009933"></asp:TextBox>
					

							<asp:Label ID="LabeLAPELLIDO1" runat="server" ForeColor="Red" Font-Bold="True" Text="APELLIDO1"></asp:Label>
							<asp:TextBox ID="TextAPELLIDO1" runat="server" Font-Bold="True" ForeColor="#009933"></asp:TextBox>
					

						</div>
					</div>

				<div class="row">
						<div class="col s11 m4 l3">
							<asp:Label ID="LabelAPELLIDO2" runat="server" ForeColor="Red" Font-Bold="True" Text="APELLIDO2"></asp:Label>
							<asp:TextBox ID="TextAPELLIDO2" runat="server" Font-Bold="True" ForeColor="#009933"></asp:TextBox>


							<asp:Label ID="LabelDIRECCION" runat="server" ForeColor="Red" Font-Bold="True" Text="DIRECCION"></asp:Label>
							<asp:TextBox ID="TextDIRECCION" runat="server" Font-Bold="True" ForeColor="#009933"></asp:TextBox>
					

							<asp:Label ID="LabelCIUDAD" runat="server" ForeColor="Red" Font-Bold="True" Text="CIUDAD"></asp:Label>
							<asp:TextBox ID="TextCIUDAD" runat="server" Font-Bold="True" ForeColor="#009933"></asp:TextBox>
					
						</div>
					</div>

				<div class="row">
						<div class="col s11 m4 l3">
							<asp:Label ID="LabelPROVINCIA" runat="server" ForeColor="Red" Font-Bold="True" Text="PROVINCIA"></asp:Label>
							<asp:TextBox ID="TextPROVINCIA" runat="server" Font-Bold="True" ForeColor="#009933"></asp:TextBox>
					

							<asp:Label ID="LabelCODIGOPOSTAL" runat="server" ForeColor="Red" Font-Bold="True" Text="CODIGOPOSTAL"></asp:Label>
							<asp:TextBox ID="TextCODIGOPOSTAL" runat="server" Font-Bold="True" ForeColor="#009933"></asp:TextBox>

							<asp:Label ID="LabelTELEFONO" runat="server" ForeColor="Red" Font-Bold="True" Text="TELEFONO"></asp:Label>
							<asp:TextBox ID="TextTELEFONO" runat="server" Font-Bold="True" ForeColor="#009933"></asp:TextBox>
					
						</div>
					</div>


				<div class="row">
						<div class="col s11 m4 l3">
								<asp:Label ID="LabelNUMERO_REFERENCIA" runat="server" ForeColor="Red" Font-Bold="True" Text="NUMERO REFERENCIA"></asp:Label>
								<asp:TextBox ID="TextNUMERO_REFERENCIA" runat="server" Font-Bold="True" ForeColor="#009933"></asp:TextBox>
					

								<asp:Label ID="LabelNOMBREPRODUCTO" runat="server" ForeColor="Red" Font-Bold="True" Text="NOMBREPRODUCTO"></asp:Label>
								<asp:TextBox ID="TextNOMBREPRODUCTO" runat="server" Font-Bold="True" ForeColor="#009933"></asp:TextBox>
					

								<asp:Label ID="LabelPRECIO" runat="server" ForeColor="Red" Font-Bold="True" Text="PRECIO"></asp:Label>
								<asp:TextBox ID="TextPRECIO" runat="server" Font-Bold="True" ForeColor="#009933"></asp:TextBox>
					
					
					   </div>
					</div>

				
				<div class="row">
						<div class="col s11 m4 l3">
							<asp:Label ID="LabelTOTAL" runat="server" ForeColor="Red" Font-Bold="True" Text="TOTAL"></asp:Label>
							<asp:TextBox ID="TextTOTAL" runat="server" Font-Bold="True" ForeColor="#009933"></asp:TextBox>

							<asp:Button ID="BtnRealizaPedido" runat="server" class="btn btn-lg" Text="REALIZAR PEDIDO" Font-Bold="True" ForeColor="White" BackColor="#00CC66" OnClick="BtnRealizaPedido_Click" />
	
							<asp:Label ID="LabelPedirPedido" runat="server" ForeColor="#009933" Font-Bold="True" Font-Size="X-Large"></asp:Label>

					
							<asp:Button ID="BtnCancelaPedido" runat="server" class="btn btn-lg" Text="CANCELAR PEDIDO" Font-Bold="True" ForeColor="White" BackColor="Red" OnClick="BtnCancelaPedido_Click" />
					
						   <asp:Label ID="LabelCancelarPedido" runat="server" ForeColor="Red" Font-Bold="True" Font-Size="X-Large"></asp:Label>

				   </div>
				</div>

			</div>


			<div id="contieneDatosPedido" class="container-fluid col-sm-11 col-xl-11">
				<div class="row">
					<div class="col-11">
						   <h2 class="bienvenida">DATOS DEL PEDIDO:</h2>
                
							<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="IDPEDIDO" DataSourceID="SqlDataSource1"  ForeColor="OliveDrab">
								<Columns>
									<asp:BoundField DataField="FECHA" HeaderText="FECHA" SortExpression="FECHA" />
									<asp:BoundField DataField="IDPEDIDO" HeaderText="IDPEDIDO" SortExpression="IDPEDIDO" InsertVisible="False" ReadOnly="True" />
									<asp:BoundField DataField="NOMBRE" HeaderText="NOMBRE" SortExpression="NOMBRE" />
									<asp:BoundField DataField="APELLIDO1" HeaderText="APELLIDO1" SortExpression="APELLIDO1" />
									<asp:BoundField DataField="DNI" HeaderText="DNI" SortExpression="DNI" />
									<asp:BoundField DataField="DIRECCION" HeaderText="DIRECCION" SortExpression="DIRECCION" />
									<asp:BoundField DataField="TELEFONO" HeaderText="TELEFONO" SortExpression="TELEFONO" />
									<asp:BoundField DataField="NOMBREPRODUCTO" HeaderText="NOMBREPRODUCTO" SortExpression="NOMBREPRODUCTO" />
									<asp:BoundField DataField="COLOR" HeaderText="COLOR" SortExpression="COLOR" />
									<asp:BoundField DataField="CANTIDAD" HeaderText="CANTIDAD" SortExpression="CANTIDAD" />
									<asp:BoundField DataField="PRECIO" HeaderText="PRECIO" SortExpression="PRECIO" />
									<asp:BoundField DataField="TOTAL" HeaderText="TOTAL" SortExpression="TOTAL" />
								</Columns>
								<EditRowStyle Font-Size="Small" />
								<EmptyDataRowStyle Font-Size="Small" HorizontalAlign="NotSet" />
							</asp:GridView>
							<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LIQUIDACION_TIENDA_ARMY_SURVIVAL_ADVENTUREConnectionString %>" SelectCommand="SELECT * FROM [PEDIDOS]"></asp:SqlDataSource>
					</div>

				</div>

			</div>
			<!--PRODUCTOS PARA COMPRAR EL CLIENTE-->
			<div class="container mt-50 mb-50">
				<h3 class="text-danger">SELECCIONA EL PRODUCTO, ESCOGE COLOR, CANTIDAD, PULSE BOTÓN COMPRAR EN CADA PRODUCTO (AÑADE AL PEDIDO) Y FINALMENTE PULSE BOTÓN REALIZAR PEDIDO:</h3>
			<div class="row">
				<div class="col s11 m4 l3">
					<div class="card material-placeholder">
						<img class="card-img img-fluid" src="imagenes/CARTUCHERA DOBLE HK G-36 CON BOMBERAS BOSCOSO pequena.jpg" title="Cartuchera Doble HK G-36 con Bomberas Boscoso" alt="Cartuchera Doble HK G-36 con Bomberas Boscoso" />
						<div class="card-body">
						  <h4 class="card-title bienvenida">CARTUCHERA DOBLE HK G-36 CON BOMBERAS BOSCOSO</h4>
							<asp:Label ID="Labelnumref1" class="card-subtitle mb-2 text-muted" runat="server" Text="DEM1"></asp:Label>
						  <div class="options">
							   <asp:Label ID="Label1" runat="server" Text="Color " class="bienvenida"></asp:Label>
							   <asp:DropDownList ID="DropDownList1ColorCartucheraDobleBomBoscoso" runat="server">
                                   <asp:ListItem Value="BOSCOSO"></asp:ListItem>
                               </asp:DropDownList>
								<br />
								<asp:Label ID="Label2" runat="server" Text="Cantidad " class="bienvenida"></asp:Label>
							   <asp:DropDownList ID="DropDownList2StockCartucheraDobleBomBoscoso" runat="server">
                                   <asp:ListItem>1</asp:ListItem>
                                   <asp:ListItem>2</asp:ListItem>
                               </asp:DropDownList>
						  </div>
						  <div class="buy d-flex justify-content-between align-items-center">
							<div class="price text-success"><h5 class="mt-4">28,90€</h5></div>
								<asp:Button ID="BtnCompraCartucheraDobleBomBoscoso" runat="server" class="btn btn-danger mt-3" Text="COMPRAR" Font-Bold="True" OnClick="BtnCompraCartucheraDobleBomBoscoso_Click" />
						  </div>
						</div>
					</div>
				</div>

				<div class="col s11 m4 l3">
					<div class="card material-placeholder">
						<img class="card-img img-fluid" src="imagenes/CARTUCHERA DOBLE HK G-36 CON BOMBERAS ÁRIDO PIXELADO pequena.jpg" title="Cartuchera Doble HK G-36 con Bomberas Arido Pixelado" alt="Cartuchera Doble HK G-36 con Bomberas Arido Pixelado" />
						<div class="card-body">
						  <h4 class="card-title bienvenida">CARTUCHERA DOBLE HK G-36 CON BOMBERAS ÁRIDO PIXELADO </h4>
							<asp:label ID="Labelnumref37" class="card-subtitle mb-2 text-muted" runat="server" Text="DEM37"></asp:label>
						  <div class="options">
							   <asp:Label ID="Label3" runat="server" Text="Color " class="bienvenida"></asp:Label>
							   <asp:DropDownList ID="DropDownList1ColorCartucheraDobleBomAridoPixel" runat="server">
                                   <asp:ListItem>ARIDO PIXELADO</asp:ListItem>
                               </asp:DropDownList>
								<br />
								<asp:Label ID="Label4" runat="server" Text="Cantidad " class="bienvenida"></asp:Label>
							   <asp:DropDownList ID="DropDownList2StockCartucheraDobleBomAridoPixel" runat="server">
                                   <asp:ListItem>1</asp:ListItem>
                                   <asp:ListItem>2</asp:ListItem>
                                   <asp:ListItem></asp:ListItem>
                               </asp:DropDownList>
						  </div>
						  <div class="buy d-flex justify-content-between align-items-center">
							<div class="price text-success"><h5 class="mt-4">28,90€</h5></div>
							  <asp:Button ID="BtnCompraCartucheraDobleBomAridoPixel" runat="server" class="btn btn-danger mt-3" Text="COMPRAR" Font-Bold="True" OnClick="BtnCompraCartucheraDobleBomAridoPixel_Click" />
						  </div>
						</div>
					</div>
				</div>


				<div class="col s11 m4 l3">
					<div class="card material-placeholder">
						<img class="card-img img-fluid" src="imagenes/Riñoneraboscosapequena.jpg" title="Riñonera Boscoso" alt="Riñonera Boscoso" />
						<div class="card-body">
						  <h4 class="card-title bienvenida">BOLSA DORSAL (RIÑORERA) BOSCOSO</h4>
							<asp:label ID="Labelnumref2" class="card-subtitle mb-2 text-muted" runat="server" Text="DEM2"></asp:label>
						  <div class="options">
							   <asp:Label ID="Label5" runat="server" Text="Color " class="bienvenida"></asp:Label>
							   <asp:DropDownList ID="DropDownList1ColorRiñoneraBoscoso" runat="server">
                                   <asp:ListItem>BOSCOSO</asp:ListItem>
                               </asp:DropDownList>
								<br />
								<asp:Label ID="Label6" runat="server" Text="Cantidad " class="bienvenida"></asp:Label>
							   <asp:DropDownList ID="DropDownList2StockRiñoneraBoscoso" runat="server">
                                   <asp:ListItem>1</asp:ListItem>
                               </asp:DropDownList>
						  </div>
						  <div class="buy d-flex justify-content-between align-items-center">
							<div class="price text-success"><h5 class="mt-4">30€</h5></div>
							  <asp:Button ID="BtnComprarRiñoneraBoscoso" runat="server" class="btn btn-danger mt-3" Text="COMPRAR" Font-Bold="True" OnClick="BtnComprarRiñoneraBoscoso_Click" />
							</div>
						</div>
					</div>
				</div>
				
				<div class="col s11 m4 l3">
					<div class="card material-placeholder">
						<img class="card-img img-fluid" src="imagenes/BOLSA DORSAL CON MUELLE (RIÑONERA) ÁRIDO PIXELADO pequena.jpg" title="Riñonera Arido Pixelado" alt="Riñonera Arido Pixelado" />
						<div class="card-body">
						  <h4 class="card-title bienvenida">BOLSA DORSAL (RIÑORERA) ÁRIDO PIXELADO</h4>
							<asp:label ID="Labelnumref38" class="card-subtitle mb-2 text-muted" runat="server" Text="DEM38"></asp:label>
						  <div class="options">
							   <asp:Label ID="Label7" runat="server" Text="Color " class="bienvenida"></asp:Label>
							   <asp:DropDownList ID="DropDownList1ColorRiñoneraAridoPixel" runat="server">
                                   <asp:ListItem>ARIDO PIXELADO</asp:ListItem>
                               </asp:DropDownList>
								<br />
								<asp:Label ID="Label8" runat="server" Text="Cantidad " class="bienvenida"></asp:Label>
							   <asp:DropDownList ID="DropDownList2StockRiñoneraAridoPixel" runat="server">
                                   <asp:ListItem>1</asp:ListItem>
                                   <asp:ListItem>2</asp:ListItem>
                                   <asp:ListItem>3</asp:ListItem>
                                   <asp:ListItem>4</asp:ListItem>
                               </asp:DropDownList>
						  </div>
						  <div class="buy d-flex justify-content-between align-items-center">
							<div class="price text-success"><h5 class="mt-4">30€</h5></div>
							  <asp:Button ID="BtnComprarRiñoneraAridoPixel" runat="server" class="btn btn-danger mt-3" Text="COMPRAR" Font-Bold="True" OnClick="BtnComprarRiñoneraAridoPixel_Click" />
							</div>
						</div>
					</div>
				</div>
			</div><!--Fin del row 1ª fila de 4 productos-->

			<div class="row">
				<div class="col s11 m4 l3">
					<div class="card material-placeholder">
						<img class="card-img img-fluid" src="imagenes/FUNDA DE GAFAS BOSCOSA pequena.jpg" title="Funda de Gafas Boscoso" alt="Funda de Gafas Boscoso" />
						<div class="card-body">
						  <h4 class="card-title bienvenida">FUNDA DE GAFAS BOSCOSO</h4>
							<asp:label ID="Labelnumref3" class="card-subtitle mb-2 text-muted" runat="server" Text="DEM3"></asp:label>
						  <div class="options">
							   <asp:Label ID="Label9" runat="server" Text="Color " class="bienvenida"></asp:Label>
							   <asp:DropDownList ID="DropDownList1ColorFundaGafasBoscoso" runat="server">
                                   <asp:ListItem>BOSCOSO</asp:ListItem>
                               </asp:DropDownList>
								<br />
								<asp:Label ID="Label10" runat="server" Text="Cantidad " class="bienvenida"></asp:Label>
							   <asp:DropDownList ID="DropDownList2StockFundaGafasBoscoso" runat="server">
                                   <asp:ListItem>1</asp:ListItem>
                                   <asp:ListItem>2</asp:ListItem>
                               </asp:DropDownList>
						  </div>
						  <div class="buy d-flex justify-content-between align-items-center">
							<div class="price text-success"><h5 class="mt-4">10€</h5></div>
							  <asp:Button ID="BtnComprarFundaGafasBoscoso" runat="server" class="btn btn-danger mt-3" Text="COMPRAR" Font-Bold="True" OnClick="BtnComprarFundaGafasBoscoso_Click" />
						  </div>
						</div>
					</div>
				</div>

				<div class="col s11 m4 l3">
					<div class="card material-placeholder">
						<img class="card-img img-fluid" src="imagenes/FUNDA DE GAFAS VERDE NÚMERO pequena.jpg" title="Funda de Gafas Verde" alt="Funda de Gafas Verde" />
						<div class="card-body">
						  <h4 class="card-title bienvenida">FUNDA DE GAFAS VERDE</h4>
							<asp:label ID="Labelnumref14" class="card-subtitle mb-2 text-muted" runat="server" Text="DEM14"></asp:label>
						  <div class="options">
							   <asp:Label ID="Label13" runat="server" Text="Color " class="bienvenida"></asp:Label>
							   <asp:DropDownList ID="DropDownList1ColorFundaGafasVerde" runat="server">
                                   <asp:ListItem>VERDE</asp:ListItem>
                               </asp:DropDownList>
								<br />
								<asp:Label ID="Label14" runat="server" Text="Cantidad " class="bienvenida"></asp:Label>
							   <asp:DropDownList ID="DropDownList2StockFundaGafasVerde" runat="server">
                                   <asp:ListItem>1</asp:ListItem>
                                   <asp:ListItem>2</asp:ListItem>
                                   <asp:ListItem>3</asp:ListItem>
                                   <asp:ListItem>4</asp:ListItem>
                                   <asp:ListItem>5</asp:ListItem>
                               </asp:DropDownList>
						  </div>
						  <div class="buy d-flex justify-content-between align-items-center">
							<div class="price text-success"><h5 class="mt-4">10€</h5></div>
							  <asp:Button ID="BtnComprarFundaGafasVerde" runat="server" class="btn btn-danger mt-3" Text="COMPRAR" Font-Bold="True" OnClick="BtnComprarFundaGafasVerde_Click" />
						  </div>
						</div>
					</div>
				</div>

				<div class="col s11 m4 l3">
					<div class="card material-placeholder">
						<img class="card-img img-fluid" src="imagenes/FUNDA DE GAFAS NEGRA pequena.jpg" title="Funda de Gafas Negro" alt="Funda de Gafas Negro" />
						<div class="card-body">
						  <h4 class="card-title bienvenida">FUNDA DE GAFAS NEGRO</h4>
							<asp:label ID="Labelnumref26" class="card-subtitle mb-2 text-muted" runat="server" Text="DEM26"></asp:label>
						  <div class="options">
							   <asp:Label ID="Label17" runat="server" Text="Color " class="bienvenida"></asp:Label>
							   <asp:DropDownList ID="DropDownList1ColorFundaGafasNegro" runat="server">
                                   <asp:ListItem>NEGRO</asp:ListItem>
                               </asp:DropDownList>
								<br />
								<asp:Label ID="Label18" runat="server" Text="Cantidad " class="bienvenida"></asp:Label>
							   <asp:DropDownList ID="DropDownList2StockFundaGafasNegro" runat="server">
                                   <asp:ListItem>1</asp:ListItem>
                               </asp:DropDownList>
						  </div>
						  <div class="buy d-flex justify-content-between align-items-center">
							<div class="price text-success"><h5 class="mt-4">10€</h5></div>
							  <asp:Button ID="BtnComprarFundaGafasNegro" runat="server" class="btn btn-danger mt-3" Text="COMPRAR" Font-Bold="True" OnClick="BtnComprarFundaGafasNegro_Click" />
						  </div>
						</div>
					</div>
				</div>

				<div class="col s11 m4 l3">
					<div class="card material-placeholder">
						<img class="card-img img-fluid" src="imagenes/FUNDA DE GAFAS ARIDO PIXELADO pequena .jpg" title="Funda de Gafas Arido Pixelado" alt="Funda de Gafas Arido Pixelado" />
						<div class="card-body">
						  <h4 class="card-title bienvenida">FUNDA DE GAFAS ÁRIDO PIXELADO</h4>
							<asp:label ID="Labelnumref45" class="card-subtitle mb-2 text-muted" runat="server" Text="DEM45"></asp:label>
						  <div class="options">
							   <asp:Label ID="Label11" runat="server" Text="Color " class="bienvenida"></asp:Label>
							   <asp:DropDownList ID="DropDownList1ColorFundaGafasAridoPixel" runat="server">
                                   <asp:ListItem>ARIDO PIXELADO</asp:ListItem>
                               </asp:DropDownList>
								<br />
								<asp:Label ID="Label12" runat="server" Text="Cantidad " class="bienvenida"></asp:Label>
							   <asp:DropDownList ID="DropDownList2StockFundaGafasAridoPixel" runat="server">
                                   <asp:ListItem>1</asp:ListItem>
                                   <asp:ListItem>2</asp:ListItem>
                                   <asp:ListItem>3</asp:ListItem>
                               </asp:DropDownList>
						  </div>
						  <div class="buy d-flex justify-content-between align-items-center">
							<div class="price text-success"><h5 class="mt-4">10€</h5></div>
							  <asp:Button ID="BtnComprarFundaGafasAridoPixel" runat="server" class="btn btn-danger mt-3" Text="COMPRAR" Font-Bold="True" OnClick="BtnComprarFundaGafasAridoPixel_Click" />
						  </div>
						</div>
					</div>
				</div>
			</div><!--Fin del row 2ª fila de 4 productos-->

			<div class="row">
				<div class="col s11 m4 l3">
					<div class="card material-placeholder">
						<img class="card-img img-fluid" src="imagenes/Fundanavajaboscosopequena.jpg" title="Funda de Navaja Multiusos Boscoso" alt="Funda de Navaja Multiusos Boscoso" />
						<div class="card-body">
						  <h4 class="card-title bienvenida">FUNDA DE NAVAJA MULTIUSOS BOSCOSO</h4>
							<asp:label ID="Labelnumref4" class="card-subtitle mb-2 text-muted" runat="server" Text="DEM4"></asp:label>
						  <div class="options">
							   <asp:Label ID="Label15" runat="server" Text="Color " class="bienvenida"></asp:Label>
							   <asp:DropDownList ID="DropDownList1ColorFundaNavajaMultiBoscoso" runat="server">
                                   <asp:ListItem>BOSCOSO</asp:ListItem>
                               </asp:DropDownList>
								<br />
								<asp:Label ID="Label16" runat="server" Text="Cantidad " class="bienvenida"></asp:Label>
							   <asp:DropDownList ID="DropDownList2StockFundaNavajaMultiBoscoso" runat="server">
                                   <asp:ListItem>1</asp:ListItem>
                                   <asp:ListItem>2</asp:ListItem>
                                   <asp:ListItem>3</asp:ListItem>
                                   <asp:ListItem>4</asp:ListItem>
                                   <asp:ListItem>5</asp:ListItem>
                                   <asp:ListItem>6</asp:ListItem>
                                   <asp:ListItem>7</asp:ListItem>
                                   <asp:ListItem>8</asp:ListItem>
                               </asp:DropDownList>
						  </div>
						  <div class="buy d-flex justify-content-between align-items-center">
							<div class="price text-success"><h5 class="mt-4">5,99€</h5></div>
							  <asp:Button ID="BtnComprarFundaNavajaMultiBoscoso" runat="server" class="btn btn-danger mt-3" Text="COMPRAR" Font-Bold="True" OnClick="BtnComprarFundaNavajaMultiBoscoso_Click" />
						  </div>
						</div>
					</div>
				</div>

				<div class="col s11 m4 l3">
					<div class="card material-placeholder">
						<img class="card-img img-fluid" src="imagenes/FUNDA DE NAVAJA VERDE pequena.jpg" title="Funda Navaja Multiusos Verde" alt="Funda de Navaja Multiusos Verde" />
						<div class="card-body">
						  <h4 class="card-title bienvenida">FUNDA DE NAVAJA MULTIUSOS VERDE</h4>
							<asp:label ID="Labelnumref15" class="card-subtitle mb-2 text-muted" runat="server" Text="DEM15"></asp:label>
						  <div class="options">
							   <asp:Label ID="Label19" runat="server" Text="Color " class="bienvenida"></asp:Label>
							   <asp:DropDownList ID="DropDownList1ColorFundaNavajaMultiVerde" runat="server">
                                   <asp:ListItem>VERDE</asp:ListItem>
                               </asp:DropDownList>
								<br />
								<asp:Label ID="Label20" runat="server" Text="Cantidad " class="bienvenida"></asp:Label>
							   <asp:DropDownList ID="DropDownList2StockFundaNavajaMultiVerde" runat="server">
                                   <asp:ListItem>1</asp:ListItem>
                                   <asp:ListItem>2</asp:ListItem>
                                   <asp:ListItem>3</asp:ListItem>
                                   <asp:ListItem>4</asp:ListItem>
                               </asp:DropDownList>
						  </div>
						  <div class="buy d-flex justify-content-between align-items-center">
							<div class="price text-success"><h5 class="mt-4">5,99€</h5></div>
							  <asp:Button ID="BtnComprarFundaNavajaMultiVerde" runat="server" class="btn btn-danger mt-3" Text="COMPRAR" Font-Bold="True" OnClick="BtnComprarFundaNavajaMultiVerde_Click" />
						  </div>
						</div>
					</div>
				</div>

				<div class="col s11 m4 l3">
					<div class="card material-placeholder">
						<img class="card-img img-fluid" src="imagenes/FUNDA DE NAVAJA NEGRA pequena.jpg" title="Funda de Navaja Multiusos Negro" alt="Funda de Navaja Multiusos Negro" />
						<div class="card-body">
						  <h4 class="card-title bienvenida">FUNDA DE NAVAJA MULTIUSOS NEGRO</h4>
							<asp:label ID="Labelnumref27" class="card-subtitle mb-2 text-muted" runat="server" Text="DEM27"></asp:label>
						  <div class="options">
							   <asp:Label ID="Label21" runat="server" Text="Color " class="bienvenida"></asp:Label>
							   <asp:DropDownList ID="DropDownList1ColorFundaNavajaMultiNegro" runat="server">
                                   <asp:ListItem>NEGRO</asp:ListItem>
                               </asp:DropDownList>
								<br />
								<asp:Label ID="Label22" runat="server" Text="Cantidad " class="bienvenida"></asp:Label>
							   <asp:DropDownList ID="DropDownList2StockFundaNavajaMultiNegro" runat="server">
                                   <asp:ListItem>1</asp:ListItem>
                                   <asp:ListItem>2</asp:ListItem>
                                   <asp:ListItem>3</asp:ListItem>
                                   <asp:ListItem>4</asp:ListItem>
                                   <asp:ListItem>5</asp:ListItem>
                                   <asp:ListItem>6</asp:ListItem>
                               </asp:DropDownList>
						  </div>
						  <div class="buy d-flex justify-content-between align-items-center">
							<div class="price text-success"><h5 class="mt-4">5,99€</h5></div>
							  <asp:Button ID="BtnComprarFundaNavajaMultiNegro" runat="server" class="btn btn-danger mt-3" Text="COMPRAR" Font-Bold="True" OnClick="BtnComprarFundaNavajaMultiNegro_Click" />
						  </div>
						</div>
					</div>
				</div>

				<div class="col s11 m4 l3">
					<div class="card material-placeholder">
						<img class="card-img img-fluid" src="imagenes/FUNDA DE NAVAJA ÁRIDO PIXELADO pequena.jpg" title="Funda de Navaja Multiusos Arido Pixelado" alt="Funda de Navaja Multiusos Arido Pixelado" />
						<div class="card-body">
						  <h4 class="card-title bienvenida">FUNDA DE NAVAJA MULTIUSOS ÁRIDO PIXELADO </h4>
							<asp:label ID="Labelnumref43" class="card-subtitle mb-2 text-muted" runat="server" Text="DEM43"></asp:label>
						  <div class="options">
							   <asp:Label ID="Label23" runat="server" Text="Color " class="bienvenida"></asp:Label>
							   <asp:DropDownList ID="DropDownList1ColorFundaNavajaMultiAridoPixel" runat="server">
                                   <asp:ListItem>ARIDO PIXELADO</asp:ListItem>
                               </asp:DropDownList>
								<br />
								<asp:Label ID="Label24" runat="server" Text="Cantidad " class="bienvenida"></asp:Label>
							   <asp:DropDownList ID="DropDownList2StockFundaNavajaMultiAridoPixel" runat="server">
                                   <asp:ListItem>1</asp:ListItem>
                                   <asp:ListItem>2</asp:ListItem>
                                   <asp:ListItem>3</asp:ListItem>
                                   <asp:ListItem>4</asp:ListItem>
                                   <asp:ListItem>5</asp:ListItem>
                                   <asp:ListItem>6</asp:ListItem>
                                   <asp:ListItem>7</asp:ListItem>
                               </asp:DropDownList>
						  </div>
						  <div class="buy d-flex justify-content-between align-items-center">
							<div class="price text-success"><h5 class="mt-4">5,99€</h5></div>
							  <asp:Button ID="BtnComprarFundaNavajaMultiAridoPixel" runat="server" class="btn btn-danger mt-3" Text="COMPRAR" Font-Bold="True" OnClick="BtnComprarFundaNavajaMultiAridoPixel_Click" />
						  </div>
						</div>
					</div>
				</div>
			</div><!--Fin del row 3ª fila de 4 productos-->

			<div class="row">
				<div class="col s11 m4 l3">
					<div class="card material-placeholder">
						<img class="card-img img-fluid" src="imagenes/FUNDA ANCHA DE TELÉFONO O GPS BOSCOSO pequena.jpg" title="Funda de Teléfono Ancha Boscoso" alt="Funda de Teléfono Ancha Boscoso" />
						<div class="card-body">
						  <h4 class="card-title bienvenida">FUNDA DE TELÉFONO ANCHA BOSCOSO MEDIDA: 17cm x 7,5cm x 4,5cm</h4>
							<asp:label ID="Labelnumref5" class="card-subtitle mb-2 text-muted" runat="server" Text="DEM5"></asp:label>
						  <div class="options">
							   <asp:Label ID="Label25" runat="server" Text="Color " class="bienvenida"></asp:Label>
							   <asp:DropDownList ID="DropDownList1ColorFundaAnchaTlfnoBoscoso" runat="server">
                                   <asp:ListItem>BOSCOSO</asp:ListItem>
                               </asp:DropDownList>
								<br />
								<asp:Label ID="Label26" runat="server" Text="Cantidad " class="bienvenida"></asp:Label>
							   <asp:DropDownList ID="DropDownList2StockFundaAnchaTlfnoBoscoso" runat="server">
                                   <asp:ListItem>1</asp:ListItem>
                                   <asp:ListItem>2</asp:ListItem>
                               </asp:DropDownList>
						  </div>
						  <div class="buy d-flex justify-content-between align-items-center">
							<div class="price text-success"><h5 class="mt-4">9€</h5></div>
							  <asp:Button ID="BtnComprarFundaAnchaTlfnoBoscoso" runat="server" class="btn btn-danger mt-3" Text="COMPRAR" Font-Bold="True" OnClick="BtnComprarFundaAnchaTlfnoBoscoso_Click" />
						  </div>
						</div>
					</div>
				</div>

				<div class="col s11 m4 l3">
					<div class="card material-placeholder">
						<img class="card-img img-fluid" src="imagenes/FUNDA ANCHA DE TELÉFONO O GPS VERDE pequena.jpg" title="Funda Telefono Ancha Verde" alt="Funda de Telefono Ancha Verde" />
						<div class="card-body">
						  <h4 class="card-title bienvenida">FUNDA DE TELÉFONO ANCHA VERDE MEDIDA: 17cm x 7,5cm x 4,5cm</h4>
							<asp:label ID="Labelnumref16" class="card-subtitle mb-2 text-muted" runat="server" Text="DEM16"></asp:label>
						  <div class="options">
							   <asp:Label ID="Label27" runat="server" Text="Color " class="bienvenida"></asp:Label>
							   <asp:DropDownList ID="DropDownList1ColorFundaAnchaTlfnoVerde" runat="server">
                                   <asp:ListItem>VERDE</asp:ListItem>
                               </asp:DropDownList>
								<br />
								<asp:Label ID="Label28" runat="server" Text="Cantidad " class="bienvenida"></asp:Label>
							   <asp:DropDownList ID="DropDownList2StockFundaAnchaTlfnoVerde" runat="server">
                                   <asp:ListItem>1</asp:ListItem>
                               </asp:DropDownList>
						  </div>
						  <div class="buy d-flex justify-content-between align-items-center">
							<div class="price text-success"><h5 class="mt-4">8€</h5></div>
							  <asp:Button ID="BtnComprarFundaAnchaTlfnoVerde" runat="server" class="btn btn-danger mt-3" Text="COMPRAR" Font-Bold="True" OnClick="BtnComprarFundaAnchaTlfnoVerde_Click" />
						  </div>
						</div>
					</div>
				</div>

				<div class="col s11 m4 l3">
					<div class="card material-placeholder">
						<img class="card-img img-fluid" src="imagenes/FUNDA ANCHA DE TELÉFONO O GPS NEGRA pequena.jpg" title="Funda Telefono Ancha Negro" alt="Funda Telefono Ancha Negro" />
						<div class="card-body">
						  <h4 class="card-title bienvenida">FUNDA DE TELÉFONO ANCHA NEGRO MEDIDA: 17cm x 7,5cm x 4,5cm</h4>
							<asp:label ID="Labelnumref28" class="card-subtitle mb-2 text-muted" runat="server" Text="DEM28"></asp:label>
						  <div class="options">
							   <asp:Label ID="Label29" runat="server" Text="Color " class="bienvenida"></asp:Label>
							   <asp:DropDownList ID="DropDownList1ColorFundaAnchaTlfnoNegro" runat="server">
                                   <asp:ListItem>NEGRO</asp:ListItem>
                               </asp:DropDownList>
								<br />
								<asp:Label ID="Label30" runat="server" Text="Cantidad " class="bienvenida"></asp:Label>
							   <asp:DropDownList ID="DropDownList2StockFundaAnchaTlfnoNegro" runat="server">
                                   <asp:ListItem>1</asp:ListItem>
                                   <asp:ListItem>2</asp:ListItem>
                                   <asp:ListItem>3</asp:ListItem>
                               </asp:DropDownList>
						  </div>
						  <div class="buy d-flex justify-content-between align-items-center">
							<div class="price text-success"><h5 class="mt-4">8€</h5></div>
							  <asp:Button ID="BtnComprarFundaAnchaTlfnoNegro" runat="server" class="btn btn-danger mt-3" Text="COMPRAR" Font-Bold="True" OnClick="BtnComprarFundaAnchaTlfnoNegro_Click" />
						  </div>
						</div>
					</div>
				</div>

				<div class="col s11 m4 l3">
					<div class="card material-placeholder">
						<img class="card-img img-fluid" src="imagenes/FUNDA DE BRUJULA Y ESPOSAS BOSCOSO pequena.jpg" title="Funda Brujula Boscoso" alt="Funda Brujula Boscoso" />
						<div class="card-body">
						  <h4 class="card-title bienvenida">FUNDA DE BRÚJULA O DE ESPOSAS BOSCOSO</h4>
							<asp:label ID="Labelnumref6" class="card-subtitle mb-2 text-muted" runat="server" Text="DEM6"></asp:label>
						  <div class="options">
							   <asp:Label ID="Label31" runat="server" Text="Color " class="bienvenida"></asp:Label>
							   <asp:DropDownList ID="DropDownList1ColorFundaBrujulaBoscoso" runat="server">
                                   <asp:ListItem>BOSCOSO</asp:ListItem>
                               </asp:DropDownList>
								<br />
								<asp:Label ID="Label32" runat="server" Text="Cantidad " class="bienvenida"></asp:Label>
							   <asp:DropDownList ID="DropDownList2StockFundaBrujulaBoscoso" runat="server">
                                   <asp:ListItem>1</asp:ListItem>
                                   <asp:ListItem>2</asp:ListItem>
                                   <asp:ListItem>3</asp:ListItem>
                               </asp:DropDownList>
						  </div>
						  <div class="buy d-flex justify-content-between align-items-center">
							<div class="price text-success"><h5 class="mt-4">12,90€</h5></div>
							  <asp:Button ID="BtnComprarFundaBrujulaBoscoso" runat="server" class="btn btn-danger mt-3" Text="COMPRAR" Font-Bold="True" OnClick="BtnComprarFundaBrujulaBoscoso_Click" />
						  </div>
						</div>
					</div>
				</div>
			</div><!--Fin del row 4ª fila de 4 productos-->

			<div class="row">
				<div class="col s11 m4 l3">
					<div class="card material-placeholder">
						<img class="card-img img-fluid" src="imagenes/FUNDA DE BRUJULA Y ESPOSAS VERDE pequena.jpg" title="Funda Brujula Verde" alt="Funda Brujula Verde" />
						<div class="card-body">
						  <h4 class="card-title bienvenida">FUNDA DE BRÚJULA O DE ESPOSAS VERDE</h4>
							<asp:label ID="Labelnumref17" class="card-subtitle mb-2 text-muted" runat="server" Text="DEM17"></asp:label>
						  <div class="options">
							   <asp:Label ID="Label33" runat="server" Text="Color " class="bienvenida"></asp:Label>
							   <asp:DropDownList ID="DropDownList1ColorFundaBrujulaVerde" runat="server">
                                   <asp:ListItem>VERDE</asp:ListItem>
                               </asp:DropDownList>
								<br />
								<asp:Label ID="Label34" runat="server" Text="Cantidad " class="bienvenida"></asp:Label>
							   <asp:DropDownList ID="DropDownList2StockFundaBrujulaVerde" runat="server">
                                   <asp:ListItem>1</asp:ListItem>
                                   <asp:ListItem>2</asp:ListItem>
                               </asp:DropDownList>
						  </div>
						  <div class="buy d-flex justify-content-between align-items-center">
							<div class="price text-success"><h5 class="mt-4">12,90€</h5></div>
							  <asp:Button ID="BtnComprarFundaBrujulaVerde" runat="server" class="btn btn-danger mt-3" Text="COMPRAR" Font-Bold="True" OnClick="BtnComprarFundaBrujulaverde_Click" />
						  </div>
						</div>
					</div>
				</div>

				<div class="col s11 m4 l3">
					<div class="card material-placeholder">
						<img class="card-img img-fluid" src="imagenes/FUNDA DE BRUJULA Y ESPOSAS NEGRA pequena.jpg" title="Funda Brujula Negro" alt="Funda Brujula Negro" />
						<div class="card-body">
						  <h4 class="card-title bienvenida">FUNDA DE BRÚJULA O DE ESPOSAS NEGRO</h4>
							<asp:label ID="Labelnumref29" class="card-subtitle mb-2 text-muted" runat="server" Text="DEM29"></asp:label>
						  <div class="options">
							   <asp:Label ID="Label35" runat="server" Text="Color " class="bienvenida"></asp:Label>
							   <asp:DropDownList ID="DropDownList1ColorFundaBrujulaNegro" runat="server">
                                   <asp:ListItem>NEGRO</asp:ListItem>
                               </asp:DropDownList>
								<br />
								<asp:Label ID="Label36" runat="server" Text="Cantidad " class="bienvenida"></asp:Label>
							   <asp:DropDownList ID="DropDownList2StockFundaBrujulaNegro" runat="server">
                                   <asp:ListItem>1</asp:ListItem>
                                   <asp:ListItem>2</asp:ListItem>
                               </asp:DropDownList>
						  </div>
						  <div class="buy d-flex justify-content-between align-items-center">
							<div class="price text-success"><h5 class="mt-4">12,90€</h5></div>
							  <asp:Button ID="BtnComprarFundaBrujulaNegro" runat="server" class="btn btn-danger mt-3" Text="COMPRAR" Font-Bold="True" OnClick="BtnComprarFundaBrujulaNegro_Click" />
						  </div>
						</div>
					</div>
				</div>

				<div class="col s11 m4 l3">
					<div class="card material-placeholder">
						<img class="card-img img-fluid" src="imagenes/FUNDA DE BRUJULA Y ESPOSAS ÁRIDO PIXELADO pequena .jpg" title="Funda Brujula Arido Pixelado" alt="Funda Brujula Arido Pixelado" />
						<div class="card-body">
						  <h4 class="card-title bienvenida">FUNDA DE BRÚJULA O DE ESPOSAS ÁRIDO PIXELADO</h4>
							<asp:label ID="Labelnumref46" class="card-subtitle mb-2 text-muted" runat="server" Text="DEM46"></asp:label>
						  <div class="options">
							   <asp:Label ID="Label37" runat="server" Text="Color " class="bienvenida"></asp:Label>
							   <asp:DropDownList ID="DropDownList1ColorBrujulaAridoPixel" runat="server">
                                   <asp:ListItem>ARIDO PIXELADO</asp:ListItem>
                               </asp:DropDownList>
								<br />
								<asp:Label ID="Label38" runat="server" Text="Cantidad " class="bienvenida"></asp:Label>
							   <asp:DropDownList ID="DropDownList2StockBrujulaAridoPixel" runat="server">
                                   <asp:ListItem>1</asp:ListItem>
                                   <asp:ListItem>2</asp:ListItem>
                                   <asp:ListItem>3</asp:ListItem>
                               </asp:DropDownList>
						  </div>
						  <div class="buy d-flex justify-content-between align-items-center">
							<div class="price text-success"><h5 class="mt-4">12,90€</h5></div>
							  <asp:Button ID="BtnComprarFundaBrujulaAridoPixel" runat="server" class="btn btn-danger mt-3" Text="COMPRAR" Font-Bold="True" OnClick="BtnComprarFundaBrujulaAridoPixel_Click" />
						  </div>
						</div>
					</div>
				</div>

				<div class="col s11 m4 l3">
					<div class="card material-placeholder">
						<img class="card-img img-fluid" src="imagenes/Fundacubierto4piezaspequena.jpg" title="Funda de Cubiertos 4 Piezas Boscoso" alt="Funda de Cubiertos 4 Piezas Boscoso" />
						<div class="card-body">
						  <h4 class="card-title bienvenida">FUNDA DE CUBIERTOS 4 PIEZAS BOSCOSO</h4>
							<asp:label ID="Labelnumref7" class="card-subtitle mb-2 text-muted" runat="server" Text="DEM7"></asp:label>
						  <div class="options">
							   <asp:Label ID="Label39" runat="server" Text="Color " class="bienvenida"></asp:Label>
							   <asp:DropDownList ID="DropDownList1ColorFundaCubierto4PiezasBoscoso" runat="server">
                                   <asp:ListItem>BOSCOSO</asp:ListItem>
                               </asp:DropDownList>
								<br />
								<asp:Label ID="Label40" runat="server" Text="Cantidad " class="bienvenida"></asp:Label>
							   <asp:DropDownList ID="DropDownList2StockFundaCubierto4PiezasBoscoso" runat="server">
                                   <asp:ListItem>1</asp:ListItem>
                                   <asp:ListItem>2</asp:ListItem>
                                   <asp:ListItem>3</asp:ListItem>
                                   <asp:ListItem>4</asp:ListItem>
                               </asp:DropDownList>
						  </div>
						  <div class="buy d-flex justify-content-between align-items-center">
							<div class="price text-success"><h5 class="mt-4">6€</h5></div>
							  <asp:Button ID="BtnComprarFundaCubierto4PiezasBoscoso" runat="server" class="btn btn-danger mt-3" Text="COMPRAR" Font-Bold="True" OnClick="BtnComprarFundaCubierto4PiezasBoscoso_Click" />
						  </div>
						</div>
					</div>
				</div>
			</div><!--Fin del row 5ª fila de 4 productos-->

			<div class="row">
				<div class="col s11 m4 l3">
					<div class="card material-placeholder">
						<img class="card-img img-fluid" src="imagenes/FUNDA CUBIERTO 4 PIEZAS ACERO INOXIDABLE VERDE pequena.jpg" title="Funda de Cubiertos 4 Piezas Verde" alt="Funda de Cubiertos 4 Piezas Verde" />
						<div class="card-body">
						  <h4 class="card-title bienvenida">FUNDA DE CUBIERTOS 4 PIEZAS VERDE</h4>
							<asp:label ID="Labelnumref18" class="card-subtitle mb-2 text-muted" runat="server" Text="DEM18"></asp:label>
						  <div class="options">
							   <asp:Label ID="Label41" runat="server" Text="Color " class="bienvenida"></asp:Label>
							   <asp:DropDownList ID="DropDownList1ColorFundaCubierto4PiezasVerde" runat="server">
                                   <asp:ListItem>VERDE</asp:ListItem>
                               </asp:DropDownList>
								<br />
								<asp:Label ID="Label42" runat="server" Text="Cantidad " class="bienvenida"></asp:Label>
							   <asp:DropDownList ID="DropDownList2StockFundaCubierto4PiezasVerde" runat="server">
                                   <asp:ListItem>1</asp:ListItem>
                                   <asp:ListItem>2</asp:ListItem>
                                   <asp:ListItem>3</asp:ListItem>
                                   <asp:ListItem>4</asp:ListItem>
                                   <asp:ListItem>5</asp:ListItem>
                                   <asp:ListItem>6</asp:ListItem>
                                   <asp:ListItem>7</asp:ListItem>
                               </asp:DropDownList>
						  </div>
						  <div class="buy d-flex justify-content-between align-items-center">
							<div class="price text-success"><h5 class="mt-4">6€</h5></div>
							  <asp:Button ID="BtnComprarFundaCubierto4PiezasVerde" runat="server" class="btn btn-danger mt-3" Text="COMPRAR" Font-Bold="True" OnClick="BtnComprarFundaCubierto4PiezasVerde_Click" />
						  </div>
						</div>
					</div>
				</div>

				<div class="col s11 m4 l3">
					<div class="card material-placeholder">
						<img class="card-img img-fluid" src="imagenes/FUNDA DE PISTOLA MULTIPLE BOSCOSA pequena.jpg" title="Funda de Pistola Multiple Boscoso" alt="Funda de Pistola Multiple Boscoso" />
						<div class="card-body">
						  <h4 class="card-title bienvenida">FUNDA DE PISTOLA MULTIPLE BOSCOSO</h4>
							<asp:label ID="Labelnumref8" class="card-subtitle mb-2 text-muted" runat="server" Text="DEM8"></asp:label>
						  <div class="options">
							   <asp:Label ID="Label43" runat="server" Text="Color " class="bienvenida"></asp:Label>
							   <asp:DropDownList ID="DropDownList1ColorFundaPistolaMultiPleBoscoso" runat="server">
                                   <asp:ListItem>BOSCOSO</asp:ListItem>
                               </asp:DropDownList>
								<br />
								<asp:Label ID="Label44" runat="server" Text="Cantidad " class="bienvenida"></asp:Label>
							   <asp:DropDownList ID="DropDownList2StockFundaPistolaMultiPleBoscoso" runat="server">
                                   <asp:ListItem>1</asp:ListItem>
                                   <asp:ListItem>2</asp:ListItem>
                               </asp:DropDownList>
						  </div>
						  <div class="buy d-flex justify-content-between align-items-center">
							<div class="price text-success"><h5 class="mt-4">39€</h5></div>
							  <asp:Button ID="BtnComprarFundaPistolaMultiPleBoscoso" runat="server" class="btn btn-danger mt-3" Text="COMPRAR" Font-Bold="True" OnClick="BtnComprarFundaPistolaMultiPleBoscoso_Click" />
						  </div>
						</div>
					</div>
				</div>

				<div class="col s11 m4 l3">
					<div class="card material-placeholder">
						<img class="card-img img-fluid" src="imagenes/FUNDA DE PISTOLA MULTIPLE NEGRA pequena.jpg" title="Funda de Pistola Multiple Negro" alt="Funda de Pistola Multiple Negro" />
						<div class="card-body">
						  <h4 class="card-title bienvenida">FUNDA DE PISTOLA MULTIPLE NEGRO</h4>
							<asp:label ID="Labelnumref31" class="card-subtitle mb-2 text-muted" runat="server" Text="DEM31"></asp:label>
						  <div class="options">
							   <asp:Label ID="Label45" runat="server" Text="Color " class="bienvenida"></asp:Label>
							   <asp:DropDownList ID="DropDownList1ColorFundaPistolaMultiPleNegro" runat="server">
                                   <asp:ListItem>NEGRO</asp:ListItem>
                               </asp:DropDownList>
								<br />
								<asp:Label ID="Label46" runat="server" Text="Cantidad " class="bienvenida"></asp:Label>
							   <asp:DropDownList ID="DropDownList2StockFundaPistolaMultiPleNegro" runat="server">
                                   <asp:ListItem>1</asp:ListItem>
                                   <asp:ListItem>2</asp:ListItem>
                               </asp:DropDownList>
						  </div>
						  <div class="buy d-flex justify-content-between align-items-center">
							<div class="price text-success"><h5 class="mt-4">39€</h5></div>
							  <asp:Button ID="BtnComprarStockFundaPistolaMultiPleNegro" runat="server" class="btn btn-danger mt-3" Text="COMPRAR" Font-Bold="True" OnClick="BtnComprarStockFundaPistolaMultiPleNegro_Click" />
						  </div>
						</div>
					</div>
				</div>

				<div class="col s11 m4 l3">
					<div class="card material-placeholder">
						<img class="card-img img-fluid" src="imagenes/FUNDA DE PISTOLA MULTIPLE  ÁRIDO PIXELADO pequena.jpg" title="Funda de Pistola Multiple Árido Pixelado" alt="Funda de Pistola Multiple Árido Pixelado" />
						<div class="card-body">
						  <h4 class="card-title bienvenida">FUNDA DE PISTOLA MULTIPLE ÁRIDO PIXELADO</h4>
							<asp:label ID="Labelnumref39" class="card-subtitle mb-2 text-muted" runat="server" Text="DEM39"></asp:label>
						  <div class="options">
							   <asp:Label ID="Label47" runat="server" Text="Color " class="bienvenida"></asp:Label>
							   <asp:DropDownList ID="DropDownList1ColorFundaPistolaMultiPleAridoPixel" runat="server">
                                   <asp:ListItem>ARIDO PIXELADO</asp:ListItem>
                               </asp:DropDownList>
								<br />
								<asp:Label ID="Label48" runat="server" Text="Cantidad " class="bienvenida"></asp:Label>
							   <asp:DropDownList ID="DropDownList2StockFundaPistolaMultiPleAridoPixel" runat="server">
                                   <asp:ListItem>1</asp:ListItem>
                                   <asp:ListItem>2</asp:ListItem>
                                   <asp:ListItem>3</asp:ListItem>
                                   <asp:ListItem>4</asp:ListItem>
                               </asp:DropDownList>
						  </div>
						  <div class="buy d-flex justify-content-between align-items-center">
							<div class="price text-success"><h5 class="mt-4">39€</h5></div>
							  <asp:Button ID="BtnComprarFundaPistolaMultiPleAridoPixel" runat="server" class="btn btn-danger mt-3" Text="COMPRAR" Font-Bold="True" OnClick="BtnComprarFundaPistolaMultiPleAridoPixel_Click" />
						  </div>
						</div>
					</div>
				</div>

			</div><!--Fin del row 6ª fila de 4 productos-->


			<div class="row">
				<div class="col s11 m4 l3">
					<div class="card material-placeholder">
						<img class="card-img img-fluid" src="imagenes/FUNDA DE PISTOLA DE CUERO DE LA LEGIÓN O DE LA GUARDIA CIVIL pequena.jpg" title="Funda de Pistola de Cuero Negro de la Legión de la Guardia Civil" alt="Funda de Pistola de Cuero Negro de la Legión de la Guardia Civil" />
						<div class="card-body">
						  <h4 class="card-title bienvenida">FUNDA DE PISTOLA DE CUERO NEGRO DE LA LEGIÓN O DE LA GUARDIA CIVIL</h4>
							<asp:label ID="Labelnumref47" class="card-subtitle mb-2 text-muted" runat="server" Text="DEM47"></asp:label>
						  <div class="options">
							   <asp:Label ID="Label57" runat="server" Text="Color " class="bienvenida"></asp:Label>
							   <asp:DropDownList ID="DropDownList1ColorFundaPistolaLegionGuardiaCiv" runat="server">
                                   <asp:ListItem>NEGRO</asp:ListItem>
                               </asp:DropDownList>
								<br />
								<asp:Label ID="Label58" runat="server" Text="Cantidad " class="bienvenida"></asp:Label>
							   <asp:DropDownList ID="DropDownList2StockFundaPistolaLegionGuardiaCiv" runat="server">
                                   <asp:ListItem>1</asp:ListItem>
                               </asp:DropDownList>
						  </div>
						  <div class="buy d-flex justify-content-between align-items-center">
							<div class="price text-success"><h5 class="mt-4">50€</h5></div>
							  <asp:Button ID="BtnFundaPistolaLegionGuardiaCiv" runat="server" class="btn btn-danger mt-3" Text="COMPRAR" Font-Bold="True" OnClick="BtnFundaPistolaLegionGuardiaCiv_Click" />
						  </div>
						</div>
					</div>
				</div>


				<div class="col s11 m4 l3">
					<div class="card material-placeholder">
						<img class="card-img img-fluid" src="imagenes/EXTENSOR DE FUNDA DE PISTOLA MULTIPLE MOD NUEVO MULTIPLE ÁRIDO PIXELADO pequena.jpg" title="Extensor de Funda de Pistola Multiple Árido Pixelado Apertura Rápida Modelo Nuevo" alt="Extensor de Funda de Pistola Multiple Árido Pixelado Apertura Rápida Modelo Nuevo" />
						<div class="card-body">
						  <h4 class="card-title bienvenida">EXTENSOR DE FUNDA DE PISTOLA MULTIPLE APERTURA RÁPIDA ÁRIDO PIXELADO NUEVO MODELO</h4>
							<asp:label ID="Labelnumref40" class="card-subtitle mb-2 text-muted" runat="server" Text="DEM40"></asp:label>
						  <div class="options">
							   <asp:Label ID="Label59" runat="server" Text="Color " class="bienvenida"></asp:Label>
							   <asp:DropDownList ID="DropDownList1ColorExtensorPistolaAridoPixel" runat="server">
                                   <asp:ListItem>ARIDO PIXELADO</asp:ListItem>
                               </asp:DropDownList>
								<br />
								<asp:Label ID="Label60" runat="server" Text="Cantidad " class="bienvenida"></asp:Label>
							   <asp:DropDownList ID="DropDownList2StockExtensorPistolaAridoPixel" runat="server">
                                   <asp:ListItem>1</asp:ListItem>
                                   <asp:ListItem>2</asp:ListItem>
                                   <asp:ListItem>3</asp:ListItem>
                                   <asp:ListItem>4</asp:ListItem>
                               </asp:DropDownList>
						  </div>
						  <div class="buy d-flex justify-content-between align-items-center">
							<div class="price text-success"><h5 class="mt-4">19€</h5></div>
							  <asp:Button ID="BtnComprarExtensorPistolaAridoPixel" runat="server" class="btn btn-danger mt-3" Text="COMPRAR" Font-Bold="True" OnClick="BtnComprarExtensorPistolaAridoPixel_Click" />
						  </div>
						</div>
					</div>
				</div>


				<div class="col s11 m4 l3">
					<div class="card material-placeholder">
						<img class="card-img img-fluid" src="imagenes/FUNDA DE CARGADOR DE PISTOLA MULTIPLE NEGRA pequena.jpg" title="Funda Cargador Pistola Multiple Negro" alt="Funda Cargador Pistola Multiple Negro" />
						<div class="card-body">
						  <h4 class="card-title bienvenida">FUNDA DE CARGADOR DE PISTOLA MULTIPLE NEGRO</h4>
							<asp:label ID="Labelnumref32" class="card-subtitle mb-2 text-muted" runat="server" Text="DEM32"></asp:label>
						  <div class="options">
							   <asp:Label ID="Label61" runat="server" Text="Color " class="bienvenida"></asp:Label>
							   <asp:DropDownList ID="DropDownList1ColorFundaCargadorPistolaMultiNegro" runat="server">
                                   <asp:ListItem>NEGRO</asp:ListItem>
                               </asp:DropDownList>
								<br />
								<asp:Label ID="Label62" runat="server" Text="Cantidad " class="bienvenida"></asp:Label>
							   <asp:DropDownList ID="DropDownList2StockFundaCargadorPistolaMultiNegro" runat="server">
                                   <asp:ListItem>1</asp:ListItem>
                                   <asp:ListItem>2</asp:ListItem>
                               </asp:DropDownList>
						  </div>
						  <div class="buy d-flex justify-content-between align-items-center">
							<div class="price text-success"><h5 class="mt-4">14,99€</h5></div>
							  <asp:Button ID="BtnComparFundaCargadorPistolaMultiNegro" runat="server" class="btn btn-danger mt-3" Text="COMPRAR" Font-Bold="True" OnClick="BtnComparFundaCargadorPistolaMultiNegro_Click" />
						  </div>
						</div>
					</div>
				</div>


				<div class="col s11 m4 l3">
					<div class="card material-placeholder">
						<img class="card-img img-fluid" src="imagenes/FUNDA DE CARGADOR DE PISTOLA MULTIPLE ÁRIDO PIXELADO pequena.jpg" title="Funda Cargador Pistola Multiple Árido Pixelado" alt="Funda Cargador Pistola Multiple Árido Pixelado" />
						<div class="card-body">
						  <h4 class="card-title bienvenida">FUNDA DE CARGADOR DE PISTOLA MULTIPLE ÁRIDO PIXELADO</h4>
							<asp:label ID="Labelnumref41" class="card-subtitle mb-2 text-muted" runat="server" Text="DEM41"></asp:label>
						  <div class="options">
							   <asp:Label ID="Label63" runat="server" Text="Color " class="bienvenida"></asp:Label>
							   <asp:DropDownList ID="DropDownList1ColorFundaCargadorPistolaMultiAridoPixel" runat="server">
                                   <asp:ListItem>ARIDO PIXELADO</asp:ListItem>
                               </asp:DropDownList>
								<br />
								<asp:Label ID="Label64" runat="server" Text="Cantidad " class="bienvenida"></asp:Label>
							   <asp:DropDownList ID="DropDownList2StockFundaCargadorPistolaMultiAridoPixel" runat="server">
                                   <asp:ListItem>1</asp:ListItem>
                                   <asp:ListItem>2</asp:ListItem>
                                   <asp:ListItem>3</asp:ListItem>
                                   <asp:ListItem>4</asp:ListItem>
                               </asp:DropDownList>
						  </div>
						  <div class="buy d-flex justify-content-between align-items-center">
							<div class="price text-success"><h5 class="mt-4">14,99€</h5></div>
							  <asp:Button ID="BtnComprarFundaCargadorPistolaMultiAridoPixel" runat="server" class="btn btn-danger mt-3" Text="COMPRAR" Font-Bold="True" OnClick="BtnComprarFundaCargadorPistolaMultiAridoPixel_Click" />
						  </div>
						</div>
					</div>
				</div>
			</div><!--Fin del row 7ª fila de 4 productos-->

			<div class="row">
				<div class="col s11 m4 l3">
					<div class="card material-placeholder">
						<img class="card-img img-fluid" src="imagenes/CARTERA DE CAMILLERO BOSCOSO pequena.jpg" title="Cartera Camillero Boscoso" alt="CarteraCamilleroBoscoso" />
						<div class="card-body">
						  <h4 class="card-title bienvenida">CARTERA DE CAMILLERO BOSCOSO, MEDIDAS: 14cm Alto x 19cm Ancho x 10cm Fondo</h4>
							<asp:label ID="Labelnumref12" class="card-subtitle mb-2 text-muted" runat="server" Text="DEM12"></asp:label>
						  <div class="options">
							   <asp:Label ID="Label65" runat="server" Text="Color " class="bienvenida"></asp:Label>
							   <asp:DropDownList ID="DropDownList1ColorCarteraCamilleroBoscoso" runat="server">
                                   <asp:ListItem>BOSCOSO</asp:ListItem>
                               </asp:DropDownList>
								<br />
								<asp:Label ID="Label66" runat="server" Text="Cantidad " class="bienvenida"></asp:Label>
							   <asp:DropDownList ID="DropDownList2StockCarteraCamilleroBoscoso" runat="server">
                                   <asp:ListItem>1</asp:ListItem>
                               </asp:DropDownList>
						  </div>
						  <div class="buy d-flex justify-content-between align-items-center">
							<div class="price text-success"><h5 class="mt-4">18,50€</h5></div>
							  <asp:Button ID="BtnComprarCarteraCamilleroBoscoso" runat="server" class="btn btn-danger mt-3" Text="COMPRAR" Font-Bold="True" OnClick="BtnComprarCarteraCamilleroBoscoso_Click" />
						  </div>
						</div>
					</div>
				</div>


				<div class="col s11 m4 l3">
					<div class="card material-placeholder">
						<img class="card-img img-fluid" src="imagenes/EXTENSOR 2 CARTUCHERAS HK G-36 DOBLES BOSCOSO pequena.jpg" title="Extensor 2 Cartucheras HK G-36 Doble Boscoso" alt="Extensor 2 Cartucheras HK G-36 Doble Boscoso" />
						<div class="card-body">
						  <h4 class="card-title bienvenida">EXTENSOR 2 CARTUCHERAS HK G-36 DOBLES BOSCOSO</h4>
							<asp:label ID="Labelnumref9" class="card-subtitle mb-2 text-muted" runat="server" Text="DEM9"></asp:label>
						  <div class="options">
							   <asp:Label ID="Label49" runat="server" Text="Color " class="bienvenida"></asp:Label>
							   <asp:DropDownList ID="DropDownList1ColorExtensorCartucherasDoblesBoscoso" runat="server">
                                   <asp:ListItem>BOSCOSO</asp:ListItem>
                               </asp:DropDownList>
								<br />
								<asp:Label ID="Label50" runat="server" Text="Cantidad " class="bienvenida"></asp:Label>
							   <asp:DropDownList ID="DropDownList2StockExtensorCartucherasDoblesBoscoso" runat="server">
                                   <asp:ListItem>1</asp:ListItem>
                                   <asp:ListItem>2</asp:ListItem>
                               </asp:DropDownList>
						  </div>
						  <div class="buy d-flex justify-content-between align-items-center">
							<div class="price text-success"><h5 class="mt-4">35€</h5></div>
							  <asp:Button ID="BtnComprarExtensorCartucherasDoblesBoscoso" runat="server" class="btn btn-danger mt-3" Text="COMPRAR" Font-Bold="True" OnClick="BtnComprarExtensorCartucherasDoblesBoscoso_Click" />
						  </div>
						</div>
					</div>
				</div>


				<div class="col s11 m4 l3">
					<div class="card material-placeholder">
						<img class="card-img img-fluid" src="imagenes/EXTENSOR 2 CARTUCHERAS HK G-36 DOBLES ÁRIDO PIXELADO pequena.jpg" title="Extensor 2 Cartucheras HK G-36 Árido Pixelado" alt="Extensor 2 Cartucheras HK G-36 Doble Árido Pixelado" />
						<div class="card-body">
						  <h4 class="card-title bienvenida">EXTENSOR 2 CARTUCHERAS HK G-36 DOBLES ÁRIDO PIXELADO</h4>
							<asp:label ID="Labelnumref42" class="card-subtitle mb-2 text-muted" runat="server" Text="DEM42"></asp:label>
						  <div class="options">
							   <asp:Label ID="Label51" runat="server" Text="Color " class="bienvenida"></asp:Label>
							   <asp:DropDownList ID="DropDownList1ColorExtensorCartucherasDoblesAridoPixel" runat="server">
                                   <asp:ListItem>ARIDO PIXELADO</asp:ListItem>
                               </asp:DropDownList>
								<br />
								<asp:Label ID="Label52" runat="server" Text="Cantidad " class="bienvenida"></asp:Label>
							   <asp:DropDownList ID="DropDownList2StockExtensorCartucherasDoblesAridoPixel" runat="server">
                                   <asp:ListItem>1</asp:ListItem>
                               </asp:DropDownList>
						  </div>
						  <div class="buy d-flex justify-content-between align-items-center">
							<div class="price text-success"><h5 class="mt-4">35€</h5></div>
							  <asp:Button ID="BtnComprarExtensorCartucherasDoblesAridoPixel" runat="server" class="btn btn-danger mt-3" Text="COMPRAR" Font-Bold="True" OnClick="BtnComprarExtensorCartucherasDoblesAridoPixel_Click" />
						  </div>
						</div>
					</div>
				</div>


				<div class="col s11 m4 l3">
					<div class="card material-placeholder">
						<img class="card-img img-fluid" src="imagenes/Mochilapequena.jpg" title="Mochila Soporte Vital Avenazdo A.Respiratorio Boscoso Pixelado" alt="Mochila Soporte Vital Avenazdo A.Respiratorio Boscoso Pixelado" />
						<div class="card-body">
						  <h4 class="card-title bienvenida">MOCHILA SOPORTE VITAL AVANZADO A.RESPIRATORIO BOSCOSO PIXELADO</h4>
							<asp:label ID="Labelnumref35" class="card-subtitle mb-2 text-muted" runat="server" Text="DEM35"></asp:label>
						  <div class="options">
							   <asp:Label ID="Label67" runat="server" Text="Color " class="bienvenida"></asp:Label>
							   <asp:DropDownList ID="DropDownList1ColorMochilaSoporteARespBoscosoPixel" runat="server">
                                   <asp:ListItem>BOSCOSO PIXELADO</asp:ListItem>
                               </asp:DropDownList>
								<br />
								<asp:Label ID="Label68" runat="server" Text="Cantidad " class="bienvenida"></asp:Label>
							   <asp:DropDownList ID="DropDownList2StockMochilaSoporteARespBoscosoPixel" runat="server">
                                   <asp:ListItem>1</asp:ListItem>
                               </asp:DropDownList>
						  </div>
						  <div class="buy d-flex justify-content-between align-items-center">
							<div class="price text-success"><h5 class="mt-4">300€</h5></div>
							  <asp:Button ID="BtnComprarMochilaSoporteARespBoscosoPixel" runat="server" class="btn btn-danger mt-3" Text="COMPRAR" Font-Bold="True" OnClick="BtnComprarMochilaSoporteARespBoscosoPixel_Click" />
						  </div>
						</div>
					</div>
				</div>


				</div><!--Fin del row 8ª fila de 4 productos-->

				
				<div class="row">
				  <div class="col s11 m4 l3">
						<div class="card material-placeholder">
							<img class="card-img img-fluid" src="imagenes/CEÑIDOR BRIPAC CON TERMINAL DE GARRA BOSCOSO CLARO pequena.jpg" title="Ceñidor BRIPAC con Terminal de Garra Boscoso Claro" alt="Ceñidor BRIPAC con Terminal de Garra Boscoso Claro" />
							<div class="card-body">
							  <h4 class="card-title bienvenida">CEÑIDOR BRIPAC CON TERMINAL DE GARRA BOSCOSO CLARO</h4>
								<asp:label ID="Labelnumref10" class="card-subtitle mb-2 text-muted" runat="server" Text="DEM10"></asp:label>
							  <div class="options">
								   <asp:Label ID="Label55" runat="server" Text="Color " class="bienvenida"></asp:Label>
								   <asp:DropDownList ID="DropDownList1ColorCenidorBripacBoscosoClaro" runat="server">
                                       <asp:ListItem>BOSCOSO CLARO</asp:ListItem>
                                   </asp:DropDownList>
									<br />
									<asp:Label ID="Label56" runat="server" Text="Cantidad " class="bienvenida"></asp:Label>
								   <asp:DropDownList ID="DropDownList2StockCenidorBripacBoscosoClaro" runat="server">
                                       <asp:ListItem>1</asp:ListItem>
                                       <asp:ListItem>2</asp:ListItem>
                                   </asp:DropDownList>
							  </div>
							  <div class="buy d-flex justify-content-between align-items-center">
								<div class="price text-success"><h5 class="mt-4">12,99€</h5></div>
								  <asp:Button ID="BtnComprarCenidorBripacBoscosoClaro" runat="server" class="btn btn-danger mt-3" Text="COMPRAR" Font-Bold="True" OnClick="BtnComprarCenidorBripacBoscosoClaro_Click" />
							  </div>
							</div>
						</div>
					</div>


				<div class="col s11 m4 l3">
					<div class="card material-placeholder">
						<img class="card-img img-fluid" src="imagenes/CEÑIDOR BRIPAC CON TERMINAL DE GARRA BOSCOSO OSCURO pequena.jpg" title="Ceñidor BRIPAC con Terminal de Garra Boscoso Oscuro" alt="Ceñidor BRIPAC con Terminal de Garra Boscoso Oscuro" />
						<div class="card-body">
						  <h4 class="card-title bienvenida">CEÑIDOR BRIPAC CON TERMINAL DE GARRA BOSCOSO OSCURO</h4>
							<asp:label ID="Labelnumref11" class="card-subtitle mb-2 text-muted" runat="server" Text="DEM11"></asp:label>
						  <div class="options">
							   <asp:Label ID="Label53" runat="server" Text="Color " class="bienvenida"></asp:Label>
							   <asp:DropDownList ID="DropDownList1ColorCenidorBripacBoscosoOscuro" runat="server">
                                   <asp:ListItem>BOSCOSO OSCURO</asp:ListItem>
                               </asp:DropDownList>
								<br />
								<asp:Label ID="Label54" runat="server" Text="Cantidad " class="bienvenida"></asp:Label>
							   <asp:DropDownList ID="DropDownList2StockCenidorBripacBoscosoOscuro" runat="server">
                                   <asp:ListItem>1</asp:ListItem>
                                   <asp:ListItem>2</asp:ListItem>
                                   <asp:ListItem>3</asp:ListItem>
                               </asp:DropDownList>
						  </div>
						  <div class="buy d-flex justify-content-between align-items-center">
							<div class="price text-success"><h5 class="mt-4">12,99€</h5></div>
							  <asp:Button ID="BtnComprarCenidorBripacBoscosoOscuro" runat="server" class="btn btn-danger mt-3" Text="COMPRAR" Font-Bold="True" OnClick="BtnComprarCenidorBripacBoscosoOscuro_Click" />
						  </div>
						</div>
					</div>
				</div>
				
				<div class="col s11 m4 l3">
					<div class="card material-placeholder">
						<img class="card-img img-fluid" src="imagenes/CEÑIDOR BRIPAC VERDE (CON TERMINAL DE GARRA) NÚMERO REFERENCIA DEM 23.jpg" title="Ceñidor BRIPAC con Terminal de Garra Verde" alt="Ceñidor BRIPAC con Terminal de Garra Verde" />
						<div class="card-body">
						  <h4 class="card-title bienvenida">CEÑIDOR BRIPAC CON TERMINAL DE GARRA VERDE</h4>
							<asp:label ID="Labelnumref21" class="card-subtitle mb-2 text-muted" runat="server" Text="DEM21"></asp:label>
						  <div class="options">
							   <asp:Label ID="Label69" runat="server" Text="Color " class="bienvenida"></asp:Label>
							   <asp:DropDownList ID="DropDownList1ColorCenidorBripacTerminalGarraVerde" runat="server">
                                   <asp:ListItem>VERDE </asp:ListItem>
                               </asp:DropDownList>
								<br />
								<asp:Label ID="Label70" runat="server" Text="Cantidad " class="bienvenida"></asp:Label>
							   <asp:DropDownList ID="DropDownList2StockCenidorBripacTerminalGarraVerde" runat="server">
                                   <asp:ListItem>1</asp:ListItem>
                               </asp:DropDownList>
						  </div>
						  <div class="buy d-flex justify-content-between align-items-center">
							<div class="price text-success"><h5 class="mt-4">12,99€</h5></div>
							  <asp:Button ID="BtnComprarCenidorBripacTerminalGarraVerde" runat="server" class="btn btn-danger mt-3" Text="COMPRAR" Font-Bold="True" OnClick="BtnComprarCenidorBripacTerminalGarraVerde_Click" />
						  </div>
						</div>
					</div>
				</div>

				<div class="col s11 m4 l3">
					<div class="card material-placeholder">
						<img class="card-img img-fluid" src="imagenes/CEÑIDOR BRIPAC VERDE (CON TERMINAL DE GANCHOS) pequena.jpg" title="Ceñidor BRIPAC con Terminal de Ganchos Verde" alt="Ceñidor BRIPAC con Terminal de Ganchos Verde" />
						<div class="card-body">
						  <h4 class="card-title bienvenida">CEÑIDOR BRIPAC CON TERMINAL DE GANCHOS VERDE</h4>
							<asp:label ID="Labelnumref20" class="card-subtitle mb-2 text-muted" runat="server" Text="DEM20"></asp:label>
						  <div class="options">
							   <asp:Label ID="Label71" runat="server" Text="Color " class="bienvenida"></asp:Label>
							   <asp:DropDownList ID="DropDownList1ColorCenidorBripacTerminalGanchosVerde" runat="server">
                                   <asp:ListItem>VERDE </asp:ListItem>
                               </asp:DropDownList>
								<br />
								<asp:Label ID="Label72" runat="server" Text="Cantidad " class="bienvenida"></asp:Label>
							   <asp:DropDownList ID="DropDownList2StockCenidorBripacTerminalGanchosVerde" runat="server">
                                   <asp:ListItem>1</asp:ListItem>
                                   <asp:ListItem>2</asp:ListItem>
                                   <asp:ListItem>3</asp:ListItem>
                                   <asp:ListItem>4</asp:ListItem>
                               </asp:DropDownList>
						  </div>
						  <div class="buy d-flex justify-content-between align-items-center">
							<div class="price text-success"><h5 class="mt-4">12,99€</h5></div>
							  <asp:Button ID="BtnComprarCenidorBripacTerminalGanchosVerde" runat="server" class="btn btn-danger mt-3" Text="COMPRAR" Font-Bold="True" OnClick="BtnComprarCenidorBripacTerminalGanchosVerde_Click" />
						  </div>
						</div>
					</div>
				</div>

		</div><!--Fin del row 9ª fila de 4 productos-->


       <div class="row">
		   <div class="col s11 m4 l3">
					<div class="card material-placeholder">
						<img class="card-img img-fluid" src="imagenes/CEÑIDOR BRIPAC, UME NEGRO (CON TERMINAL DE GARRA) pequena.jpg" title="Ceñidor BRIPAC,UME con Terminal de Garra Negro" alt="Ceñidor BRIPAC,UME con Terminal de Garra Negro" />
						<div class="card-body">
						  <h4 class="card-title bienvenida">CEÑIDOR BRIPAC,UME CON TERMINAL DE GARRA NEGRO</h4>
							<asp:label ID="Labelnumref23" class="card-subtitle mb-2 text-muted" runat="server" Text="DEM23"></asp:label>
						  <div class="options">
							   <asp:Label ID="Label73" runat="server" Text="Color " class="bienvenida"></asp:Label>
							   <asp:DropDownList ID="DropDownList1ColorCenidorBripacUmeTerminalGarraNegro" runat="server">
                                   <asp:ListItem>NEGRO</asp:ListItem>
                               </asp:DropDownList>
								<br />
								<asp:Label ID="Label74" runat="server" Text="Cantidad " class="bienvenida"></asp:Label>
							   <asp:DropDownList ID="DropDownList2StockCenidorBripacUmeTerminalGarraNegro" runat="server">
                                   <asp:ListItem>1</asp:ListItem>
                                   <asp:ListItem>2</asp:ListItem>
                               </asp:DropDownList>
						  </div>
						  <div class="buy d-flex justify-content-between align-items-center">
							<div class="price text-success"><h5 class="mt-4">12,99€</h5></div>
							  <asp:Button ID="BtnBtnComprarCenidorBripacUmeTerminalGarraNegro" runat="server" class="btn btn-danger mt-3" Text="COMPRAR" Font-Bold="True" OnClick="BtnBtnComprarCenidorBripacUmeTerminalGarraNegro_Click" />
						  </div>
						</div>
					</div>
				</div>


		   <div class="col s11 m4 l3">
					<div class="card material-placeholder">
						<img class="card-img img-fluid" src="imagenes/CEÑIDOR BRIPAC ÁRIDO PIXELADO (CON TERMINAL DE GARRA) pequena.jpg" title="Ceñidor BRIPAC con Terminal de Garra Árido Pixelado" alt="Ceñidor BRIPAC con Terminal de Garra Árido Pixelado" />
						<div class="card-body">
						  <h4 class="card-title bienvenida">CEÑIDOR BRIPAC CON TERMINAL DE GARRA ÁRIDO PIXELADO</h4>
							<asp:label ID="Labelnumref36" class="card-subtitle mb-2 text-muted" runat="server" Text="DEM36"></asp:label>
						  <div class="options">
							   <asp:Label ID="Label75" runat="server" Text="Color " class="bienvenida"></asp:Label>
							   <asp:DropDownList ID="DropDownList1ColorCenidorBripacTerminalGarraAridoPixel" runat="server">
                                   <asp:ListItem>ARIDO PIXELADO</asp:ListItem>
                               </asp:DropDownList>
								<br />
								<asp:Label ID="Label76" runat="server" Text="Cantidad " class="bienvenida"></asp:Label>
							   <asp:DropDownList ID="DropDownList2StockCenidorBripacTerminalGarraAridoPixel" runat="server">
                                   <asp:ListItem>1</asp:ListItem>
                                   <asp:ListItem>2</asp:ListItem>
                                   <asp:ListItem>3</asp:ListItem>
                                   <asp:ListItem>4</asp:ListItem>
                                   <asp:ListItem>5</asp:ListItem>
                               </asp:DropDownList>
						  </div>
						  <div class="buy d-flex justify-content-between align-items-center">
							<div class="price text-success"><h5 class="mt-4">12,99€</h5></div>
							  <asp:Button ID="BtnComprarCenidorBripacTerminalGarraAridoPixel" runat="server" class="btn btn-danger mt-3" Text="COMPRAR" Font-Bold="True" OnClick="BtnComprarCenidorBripacTerminalGarraAridoPixel_Click" />
						  </div>
						</div>
					</div>
				</div>

		   <div class="col s11 m4 l3">
					<div class="card material-placeholder">
						<img class="card-img img-fluid" src="imagenes/CINTURÓN CORDURA HEBILLA  SEGURIDAD 50MM NEGRO pequena.jpg" title="Ceñidor Cordura Hebilla Seguridad 3 puntos Negro de 1,40cm" alt="Ceñidor Cordura Hebilla Seguridad 3 puntos Negro de 1,40cm" />
						<div class="card-body">
						  <h4 class="card-title bienvenida">CEÑIDOR CORDURA HEBILLA 3 PUNTOS DE SEGURIDAD NEGRO, MEDIDA: 1,40cm</h4>
							<asp:label ID="Labelnumref34" class="card-subtitle mb-2 text-muted" runat="server" Text="DEM34"></asp:label>
						  <div class="options">
							   <asp:Label ID="Label77" runat="server" Text="Color " class="bienvenida"></asp:Label>
							   <asp:DropDownList ID="DropDownList1ColorCenidorPolicialNegro" runat="server">
                                   <asp:ListItem>NEGRO</asp:ListItem>
                               </asp:DropDownList>
								<br />
								<asp:Label ID="Label78" runat="server" Text="Cantidad " class="bienvenida"></asp:Label>
							   <asp:DropDownList ID="DropDownList2StockCenidorPolicialNegro" runat="server">
                                   <asp:ListItem>1</asp:ListItem>
                               </asp:DropDownList>
						  </div>
						  <div class="buy d-flex justify-content-between align-items-center">
							<div class="price text-success"><h5 class="mt-4">19,99€</h5></div>
							  <asp:Button ID="BtnComprarCenidorPolicialNegro" runat="server" class="btn btn-danger mt-3" Text="COMPRAR" Font-Bold="True" OnClick="BtnComprarCenidorPolicialNegro_Click" />
						  </div>
						</div>
					</div>
				</div>

		   <div class="col s11 m4 l3">
					<div class="card material-placeholder">
						<img class="card-img img-fluid" src="imagenes/CINTURÓN CORDURA HEBILLA  SEGURIDAD 50MM NEGRO pequena.jpg" title="Ceñidor Cordura Hebilla Seguridad 3 puntos Negro de 1,30cm" alt="Ceñidor Cordura Hebilla Seguridad 3 puntos Negro de 1,30cm" />
						<div class="card-body">
						  <h4 class="card-title bienvenida">CEÑIDOR CORDURA HEBILLA 3 PUNTOS DE SEGURIDAD NEGRO, MEDIDA: 1,30cm</h4>
							<asp:label ID="Labelnumref33" class="card-subtitle mb-2 text-muted" runat="server" Text="DEM33"></asp:label>
						  <div class="options">
							   <asp:Label ID="Label79" runat="server" Text="Color " class="bienvenida"></asp:Label>
							   <asp:DropDownList ID="DropDownList1ColorCenidorPolicialNegro130" runat="server">
                                   <asp:ListItem>NEGRO</asp:ListItem>
                               </asp:DropDownList>
								<br />
								<asp:Label ID="Label80" runat="server" Text="Cantidad " class="bienvenida"></asp:Label>
							   <asp:DropDownList ID="DropDownList2StockCenidorPolicialNegro130" runat="server">
                                   <asp:ListItem>1</asp:ListItem>
                                   <asp:ListItem>2</asp:ListItem>
                                   <asp:ListItem>3</asp:ListItem>
                                   <asp:ListItem>4</asp:ListItem>
                                   <asp:ListItem>5</asp:ListItem>
                                   <asp:ListItem>6</asp:ListItem>
                                   <asp:ListItem>7</asp:ListItem>
                                   <asp:ListItem>8</asp:ListItem>
                                   <asp:ListItem>9</asp:ListItem>
                                   <asp:ListItem>10</asp:ListItem>
                                   <asp:ListItem>11</asp:ListItem>
                                   <asp:ListItem>12</asp:ListItem>
                                   <asp:ListItem>13</asp:ListItem>
                                   <asp:ListItem>14</asp:ListItem>
                                   <asp:ListItem>15</asp:ListItem>
                                   <asp:ListItem>16</asp:ListItem>
                                   <asp:ListItem>17</asp:ListItem>
                                   <asp:ListItem>18</asp:ListItem>
                                   <asp:ListItem>19</asp:ListItem>
                                   <asp:ListItem>20</asp:ListItem>
                                   <asp:ListItem>21</asp:ListItem>
                                   <asp:ListItem>22</asp:ListItem>
                                   <asp:ListItem>23</asp:ListItem>
                                   <asp:ListItem>24</asp:ListItem>
                                   <asp:ListItem>25</asp:ListItem>
                                   <asp:ListItem>26</asp:ListItem>
                                   <asp:ListItem>27</asp:ListItem>
                                   <asp:ListItem>28</asp:ListItem>
                                   <asp:ListItem>29</asp:ListItem>
                                   <asp:ListItem>30</asp:ListItem>
                                   <asp:ListItem>31</asp:ListItem>
                                   <asp:ListItem>32</asp:ListItem>
                                   <asp:ListItem>33</asp:ListItem>
                                   <asp:ListItem>34</asp:ListItem>
                                   <asp:ListItem>35</asp:ListItem>
                                   <asp:ListItem>36</asp:ListItem>
                                   <asp:ListItem>37</asp:ListItem>
                                   <asp:ListItem>38</asp:ListItem>
                               </asp:DropDownList>
						  </div>
						  <div class="buy d-flex justify-content-between align-items-center">
							<div class="price text-success"><h5 class="mt-4">19,99€</h5></div>
							  <asp:Button ID="BtnComprarCenidorPolicialNegro2" runat="server" class="btn btn-danger mt-3" Text="COMPRAR" Font-Bold="True" OnClick="BtnComprarColorCenidorPolicialNegro2_Click" />
						  </div>
						</div>
					</div>
				</div>

		</div><!--Fin del row 10ª fila de 4 productos-->


		<div class="row">
			<div class="col s11 m4 l3">
					<div class="card material-placeholder">
						<img class="card-img img-fluid" src="imagenes/CINTURÓN CON HEBILLA METÁLICA UME NEGRO pequena.jpg" title="Cinturon Hebilla Metal Ume Negro" alt="Cinturon Hebilla Metal Ume Negro" />
						<div class="card-body">
						  <h4 class="card-title bienvenida">CINTURON CON HEBILLA METÁLICA UME NEGRO</h4>
							<asp:label ID="Labelnumref24" class="card-subtitle mb-2 text-muted" runat="server" Text="DEM24"></asp:label>
						  <div class="options">
							   <asp:Label ID="Label81" runat="server" Text="Color " class="bienvenida"></asp:Label>
							   <asp:DropDownList ID="DropDownList1ColorCinturonHebillaMetalUmeNegro" runat="server">
                                   <asp:ListItem>NEGRO</asp:ListItem>
                               </asp:DropDownList>
								<br />
								<asp:Label ID="Label82" runat="server" Text="Cantidad " class="bienvenida"></asp:Label>
							   <asp:DropDownList ID="DropDownList2StockCinturonHebillaMetalUmeNegro" runat="server">
                                   <asp:ListItem>1</asp:ListItem>
                                   <asp:ListItem>2</asp:ListItem>
                               </asp:DropDownList>
						  </div>
						  <div class="buy d-flex justify-content-between align-items-center">
							<div class="price text-success"><h5 class="mt-4">20€</h5></div>
								<asp:Button ID="BtnComprarCinturonHebillaMetalUmeNegro" runat="server" class="btn btn-danger mt-3" Text="COMPRAR" Font-Bold="True" OnClick="BtnComprarCinturonHebillaMetalUmeNegro_Click" />
						  </div>
						</div>
					</div>
				</div>


				<div class="col s11 m4 l3">
					<div class="card material-placeholder">
						<img class="card-img img-fluid" src="imagenes/CINTURÓN DE VELCRO VERDE pequena.jpg" title="Ceñidor Velcro Verde" alt="Cinturon Velcro Verde" />
						<div class="card-body">
						  <h4 class="card-title bienvenida">CINTURON VELCRO VERDE</h4>
							<asp:label ID="Labelnumref22" class="card-subtitle mb-2 text-muted" runat="server" Text="DEM22"></asp:label>
						  <div class="options">
							   <asp:Label ID="Label83" runat="server" Text="Color " class="bienvenida"></asp:Label>
							   <asp:DropDownList ID="DropDownList1ColorCinturonVelcroVerde" runat="server">
                                   <asp:ListItem>VERDE </asp:ListItem>
                               </asp:DropDownList>
								<br />
								<asp:Label ID="Label84" runat="server" Text="Cantidad " class="bienvenida"></asp:Label>
							   <asp:DropDownList ID="DropDownList2StockCinturonVelcroVerde" runat="server">
                                   <asp:ListItem>1</asp:ListItem>
                               </asp:DropDownList>
						  </div>
						  <div class="buy d-flex justify-content-between align-items-center">
							<div class="price text-success"><h5 class="mt-4">9,50€</h5></div>
							  <asp:Button ID="BtnCompraCinturonVelcroVerde" runat="server" class="btn btn-danger mt-3" Text="COMPRAR" Font-Bold="True" OnClick="BtnCompraCinturonVelcroVerde_Click" />
						  </div>
						</div>
					</div>
				</div>


			<div class="col s11 m4 l3">
					<div class="card material-placeholder">
						<img class="card-img img-fluid" src="imagenes/CORREA PORTAFUSIL HK G-36 EXTENSIBLE MULTIUSO REGULABLE SENCILLO NEGRA pequena.jpg" title="Correa Portafusil HK G-36 Extensible Regulable Sencillo Negro" alt="Correa Portafusil HK G-36 Extensible Regulable Sencillo Negro" />
						<div class="card-body">
						  <h4 class="card-title bienvenida">CORREA PORTAFUSIL HK G-36 EXTENSIBLE MULTIUSO REGULABLE SENCILLO NEGRO</h4>
							<asp:label ID="Labelnumref25" class="card-subtitle mb-2 text-muted" runat="server" Text="DEM25"></asp:label>
						  <div class="options">
							   <asp:Label ID="Label85" runat="server" Text="Color " class="bienvenida"></asp:Label>
							   <asp:DropDownList ID="DropDownList1ColorCorreaPortafusilHKG36Negro" runat="server">
                                   <asp:ListItem>NEGRO</asp:ListItem>
                               </asp:DropDownList>
								<br />
								<asp:Label ID="Label86" runat="server" Text="Cantidad " class="bienvenida"></asp:Label>
							   <asp:DropDownList ID="DropDownList2StockCorreaPortafusilHKG36Negro" runat="server">
                                   <asp:ListItem>1</asp:ListItem>
                               </asp:DropDownList>
						  </div>
						  <div class="buy d-flex justify-content-between align-items-center">
							<div class="price text-success"><h5 class="mt-4">20€</h5></div>
							  <asp:Button ID="BtnComprarCorreaPortaFusilHKG36Negro" runat="server" class="btn btn-danger mt-3" Text="COMPRAR" Font-Bold="True" OnClick="BtnComprarCorreaPortaFusilHKG36Negro_Click" />
						  </div>
						</div>
					</div>
				</div>

			<div class="col s11 m4 l3">
					<div class="card material-placeholder">
						<img class="card-img img-fluid" src="imagenes/FUNDA DE CANTIMPLORA DE BORREGUITO VERDE pequena.jpg" title="Funda Cantimplora Borreguito Verde" alt="Funda Cantimplora Borreguito Verde" />
						<div class="card-body">
						  <h4 class="card-title bienvenida">FUNDA CANTIMPLORA DE BORREGUITO CON BOLSILLO PARA LAS PASTILLAS POTABILIZADORAS, VERDE</h4>
							<asp:label ID="Labelnumref13" class="card-subtitle mb-2 text-muted" runat="server" Text="DEM13"></asp:label>
							<div class="options">
							   <asp:Label ID="Label87" runat="server" Text="Color " class="bienvenida"></asp:Label>
							   <asp:DropDownList ID="DropDownList1ColorFundaCantimploraBorreguitoVerde" runat="server">
                                   <asp:ListItem>VERDE </asp:ListItem>
                                </asp:DropDownList>
								<br />
								<asp:Label ID="Label88" runat="server" Text="Cantidad " class="bienvenida"></asp:Label>
							   <asp:DropDownList ID="DropDownList2StockFundaCantimploraBorreguitoVerde" runat="server">
                                   <asp:ListItem>1</asp:ListItem>
                                   <asp:ListItem>2</asp:ListItem>
                                   <asp:ListItem>3</asp:ListItem>
                                   <asp:ListItem>4</asp:ListItem>
                                </asp:DropDownList>
						  </div>
						  <div class="buy d-flex justify-content-between align-items-center">
							<div class="price text-success"><h5 class="mt-4">14€</h5></div>
							  <asp:Button ID="BtnComprarFundaCantimploraBorreguitoVerde" runat="server" class="btn btn-danger mt-3" Text="COMPRAR" Font-Bold="True" OnClick="BtnComprarFundaCantimploraBorreguitoVerde_Click" />
						  </div>
						</div>
					</div>
				</div>
	
	   </div><!--Fin del row 11ª fila de 4 productos-->


      <div class="row">
		  <div class="col s11 m4 l3">
					<div class="card material-placeholder">
						<img class="card-img img-fluid" src="imagenes/CANTIMPLORA PVC VERDE pequena.jpg" title="Cantimplora 1 Litro PVC Verde" alt="Cantimplora 1 Litro PVC Verde" />
						<div class="card-body">
						  <h4 class="card-title bienvenida">CANTIMPLORA 1 LITRO, PVC VERDE</h4>
							<asp:label ID="Labelnumref48" class="card-subtitle mb-2 text-muted" runat="server" Text="DEM48"></asp:label>
						  <div class="options">
							   <asp:Label ID="Label89" runat="server" Text="Color " class="bienvenida"></asp:Label>
							   <asp:DropDownList ID="DropDownList1ColorCantimploraVerde" runat="server">
                                   <asp:ListItem>VERDE </asp:ListItem>
                               </asp:DropDownList>
								<br />
								<asp:Label ID="Label90" runat="server" Text="Cantidad " class="bienvenida"></asp:Label>
							   <asp:DropDownList ID="DropDownList2StockCantimploraVerde" runat="server">
                                   <asp:ListItem>1</asp:ListItem>
                                   <asp:ListItem>2</asp:ListItem>
                                   <asp:ListItem>3</asp:ListItem>
                                   <asp:ListItem>4</asp:ListItem>
                                   <asp:ListItem>5</asp:ListItem>
                                   <asp:ListItem>6</asp:ListItem>
                                   <asp:ListItem>7</asp:ListItem>
                                   <asp:ListItem>8</asp:ListItem>
                                   <asp:ListItem>9</asp:ListItem>
                                   <asp:ListItem>10</asp:ListItem>
                                   <asp:ListItem>11</asp:ListItem>
                                   <asp:ListItem>12</asp:ListItem>
                                   <asp:ListItem>13</asp:ListItem>
                                   <asp:ListItem>14</asp:ListItem>
                                   <asp:ListItem>15</asp:ListItem>
                               </asp:DropDownList>
						  </div>
						  <div class="buy d-flex justify-content-between align-items-center">
							<div class="price text-success"><h5 class="mt-4">5,99€</h5></div>
							  <asp:Button ID="BtnComprarCantimploraVerde" runat="server" class="btn btn-danger mt-3" Text="COMPRAR" Font-Bold="True" OnClick="BtnComprarCantimploraVerde_Click" />
						  </div>
						</div>
					</div>
				</div>


		 <div class="col s11 m4 l3">
					<div class="card material-placeholder">
						<img class="card-img img-fluid" src="imagenes/CANTIMPLORA PVC ÁRIDA pequena.jpg" title="Cantimplora 1 Litro PVC Árido" alt="Cantimplora 1 Litro PVC Árido" />
						<div class="card-body">
						  <h4 class="card-title bienvenida">CANTIMPLORA 1 LITRO, PVC ÁRIDO</h4>
							<asp:label ID="Labelnumref49" class="card-subtitle mb-2 text-muted" runat="server" Text="DEM49"></asp:label>
						  <div class="options">
							   <asp:Label ID="Label91" runat="server" Text="Color " class="bienvenida"></asp:Label>
							   <asp:DropDownList ID="DropDownList1ColorCantimploraArido" runat="server">
                                   <asp:ListItem>ARIDA</asp:ListItem>
                               </asp:DropDownList>
								<br />
								<asp:Label ID="Label92" runat="server" Text="Cantidad " class="bienvenida"></asp:Label>
							   <asp:DropDownList ID="DropDownList2StockCantimploraArido" runat="server">
                                   <asp:ListItem>1</asp:ListItem>
                                   <asp:ListItem>2</asp:ListItem>
                                   <asp:ListItem>3</asp:ListItem>
                                   <asp:ListItem>4</asp:ListItem>
                                   <asp:ListItem>5</asp:ListItem>
                               </asp:DropDownList>
						  </div>
						  <div class="buy d-flex justify-content-between align-items-center">
							<div class="price text-success"><h5 class="mt-4">5,99€</h5></div>
							  <asp:Button ID="BtnComprarCantimploraArido" runat="server" class="btn btn-danger mt-3" Text="COMPRAR" Font-Bold="True" OnClick="BtnComprarCantimploraArido_Click" />
						  </div>
						</div>
					</div>
				</div>


		   <div class="col s11 m4 l3">
					<div class="card material-placeholder">
						<img class="card-img img-fluid" src="imagenes/CACILLO ACERO INOXIDABLE pequena.jpg" title="Cacillo Acero Inoxidable para Cantimplora de 1 litro" alt="Cacillo Acero Inoxidable para Cantimplora de 1 litro" />
						<div class="card-body">
						  <h4 class="card-title bienvenida">VASO DE ACERO INOXIDABLE (GABATA PARA CANTIMPLORA de 1 LITRO)</h4>
							<asp:label ID="Labelnumref50" class="card-subtitle mb-2 text-muted" runat="server" Text="DEM50"></asp:label>
						  <div class="options">
							   <asp:Label ID="Label93" runat="server" Text="Color " class="bienvenida"></asp:Label>
							   <asp:DropDownList ID="DropDownList1ColorCacilloAceroInox" runat="server">
                                   <asp:ListItem>ACERO INOXIDABLE</asp:ListItem>
                               </asp:DropDownList>
								<br />
								<asp:Label ID="Label94" runat="server" Text="Cantidad " class="bienvenida"></asp:Label>
							   <asp:DropDownList ID="DropDownList2StockCacilloAceroInox" runat="server">
                                   <asp:ListItem>1</asp:ListItem>
                                   <asp:ListItem>2</asp:ListItem>
                                   <asp:ListItem>3</asp:ListItem>
                                   <asp:ListItem>4</asp:ListItem>
                                   <asp:ListItem>5</asp:ListItem>
                               </asp:DropDownList>
						  </div>
						  <div class="buy d-flex justify-content-between align-items-center">
							<div class="price text-success"><h5 class="mt-4">22,90€</h5></div>
							  <asp:Button ID="BtnComprarCacilloAceroInox" runat="server" class="btn btn-danger mt-3" Text="COMPRAR" Font-Bold="True" OnClick="BtnComprarCacilloAceroInox_Click" />
						  </div>
						</div>
					</div>
				</div>

		  <div class="col s11 m4 l3">
					<div class="card material-placeholder">
						<img class="card-img img-fluid" src="imagenes/CUBIERTO 4 PIEZAS ACERO INOXIDABLE pequena.jpg" title="Cubiertos 3 Piezas Acero Inoxidable" alt="Cubiertos 3 Piezas Acero Inoxidable" />
						<div class="card-body">
						  <h4 class="card-title bienvenida">CUBIERTOS 3 PIEZAS ACERO INOXIDABLE</h4>
							<asp:label ID="Labelnumref54" class="card-subtitle mb-2 text-muted" runat="server" Text="DEM54"></asp:label>
						  <div class="options">
							   <asp:Label ID="Label95" runat="server" Text="Color " class="bienvenida"></asp:Label>
							   <asp:DropDownList ID="DropDownList1ColorCubiertos3Piezas" runat="server">
                                   <asp:ListItem>ACERO INOXIDABLE</asp:ListItem>
                               </asp:DropDownList>
								<br />
								<asp:Label ID="Label96" runat="server" Text="Cantidad " class="bienvenida"></asp:Label>
							   <asp:DropDownList ID="DropDownList2StockCubiertos3Piezas" runat="server">
                                   <asp:ListItem>1</asp:ListItem>
                               </asp:DropDownList>
						  </div>
						  <div class="buy d-flex justify-content-between align-items-center">
							<div class="price text-success"><h5 class="mt-4">5,50€</h5></div>
							  <asp:Button ID="BtnComprarCubiertos3Piezas" runat="server" class="btn btn-danger mt-3" Text="COMPRAR" Font-Bold="True" OnClick="BtnComprarCubiertos3Piezas_Click" />
						  </div>
						</div>
					</div>
				</div>

	  </div><!--Fin del row 12ª fila de 4 productos-->

		<div class="row">
			<div class="col s11 m4 l3">
					<div class="card material-placeholder">
						<img class="card-img img-fluid" src="imagenes/Navajaarmadaespañolaverdepequena.jpg" title="Navaja Multiusos Verde Armada Española" alt="Navaja Multiusos Verde Armada Española" />
						<div class="card-body">
						  <h4 class="card-title bienvenida">NAVAJA MULTIUSUOS VERDE CON EMBLEMA DE LA ARMADA ESPAÑOLA, FABRICADA EN TOLEDO, ESPAÑA Y DE DOTACIÓN PARA EL PERSONAL DE LA ARMADA</h4>
							<asp:label ID="Labelnumref53" class="card-subtitle mb-2 text-muted" runat="server" Text="DEM53"></asp:label>
						  <div class="options">
							   <asp:Label ID="Label97" runat="server" Text="Color " class="bienvenida"></asp:Label>
							   <asp:DropDownList ID="DropDownList1ColorNavajaMultiArmadaEsp" runat="server">
                                   <asp:ListItem>VERDE </asp:ListItem>
                               </asp:DropDownList>
								<br />
								<asp:Label ID="Label98" runat="server" Text="Cantidad " class="bienvenida"></asp:Label>
							   <asp:DropDownList ID="DropDownList2StockNavajaMultiArmadaEsp" runat="server">
                                   <asp:ListItem>1</asp:ListItem>
                               </asp:DropDownList>
						  </div>
						  <div class="buy d-flex justify-content-between align-items-center">
							<div class="price text-success"><h5 class="mt-4">12,99€</h5></div>
							  <asp:Button ID="BtnComprarNavajaMultiArmadaEsp" runat="server" class="btn btn-danger mt-3" Text="COMPRAR" Font-Bold="True" OnClick="BtnComprarNavajaMultiArmadaEsp_Click" />
						  </div>
						</div>
					</div>
				</div>


			<div class="col s11 m4 l3">
					<div class="card material-placeholder">
						<img class="card-img img-fluid" src="imagenes/FUNDA DE CUBIERTOS Y NAVAJA VERDE pequena.jpg" title="Funda Cubierto Navaja Verde" alt="Funda Cubierto Navaja Verde" />
						<div class="card-body">
						  <h4 class="card-title bienvenida">FUNDA CUBIERTO-NAVAJA MULTIUSOS VERDE</h4>
							<asp:label ID="Labelnumref19" class="card-subtitle mb-2 text-muted" runat="server" Text="DEM19"></asp:label>
						  <div class="options">
							   <asp:Label ID="Label99" runat="server" Text="Color " class="bienvenida"></asp:Label>
							   <asp:DropDownList ID="DropDownList1ColorFundaCubiertoNavajaVerde" runat="server">
                                   <asp:ListItem>VERDE </asp:ListItem>
                               </asp:DropDownList>
								<br />
								<asp:Label ID="Label100" runat="server" Text="Cantidad " class="bienvenida"></asp:Label>
							   <asp:DropDownList ID="DropDownList2StockFundaCubiertoNavajaVerde" runat="server">
                                   <asp:ListItem>1</asp:ListItem>
                                   <asp:ListItem>2</asp:ListItem>
                               </asp:DropDownList>
						  </div>
						  <div class="buy d-flex justify-content-between align-items-center">
							<div class="price text-success"><h5 class="mt-4">7€</h5></div>
							  <asp:Button ID="BtnComprarFundaCubiertoNavajaVerde" runat="server" class="btn btn-danger mt-3" Text="COMPRAR" Font-Bold="True" OnClick="BtnComprarFundaCubiertoNavajaVerde_Click" />
						  </div>
						</div>
					</div>
				</div>


				<div class="col s11 m4 l3">
					<div class="card material-placeholder">
						<img class="card-img img-fluid" src="imagenes/FUNDA DE CUBIERTOS Y NAVAJA NEGRA pequena.jpg" title="Funda Cubierto Navaja Negro" alt="Funda Cubierto Navaja Negro" />
						<div class="card-body">
						  <h4 class="card-title bienvenida">FUNDA CUBIERTO-NAVAJA MULTIUSOS NEGRO</h4>
							<asp:label ID="Labelnumref30" class="card-subtitle mb-2 text-muted" runat="server" Text="DEM30"></asp:label>
						  <div class="options">
							   <asp:Label ID="Label101" runat="server" Text="Color " class="bienvenida"></asp:Label>
							   <asp:DropDownList ID="DropDownList1ColorFundaCubiertoNavajaNegra" runat="server">
                                   <asp:ListItem>NEGRO</asp:ListItem>
                               </asp:DropDownList>
								<br />
								<asp:Label ID="Label102" runat="server" Text="Cantidad " class="bienvenida"></asp:Label>
							   <asp:DropDownList ID="DropDownList2StockFundaCubiertoNavajaNegra" runat="server">
                                   <asp:ListItem>1</asp:ListItem>
                                   <asp:ListItem>2</asp:ListItem>
                                   <asp:ListItem>3</asp:ListItem>
                                   <asp:ListItem>4</asp:ListItem>
                               </asp:DropDownList>
						  </div>
						  <div class="buy d-flex justify-content-between align-items-center">
							<div class="price text-success"><h5 class="mt-4">7€</h5></div>
							  <asp:Button ID="BtnComprarFundaCubiertoNavajaNegra" runat="server" class="btn btn-danger mt-3" Text="COMPRAR" Font-Bold="True" OnClick="BtnComprarFundaCubiertoNavajaNegra_Click" />
						  </div>
						</div>
					</div>
				</div>


			<div class="col s11 m4 l3">
					<div class="card material-placeholder">
						<img class="card-img img-fluid" src="imagenes/FUNDA DE CUBIERTOS Y NAVAJA ÁRIDO PIXELADO pequena.jpg" title="Funda Cubierto Navaja Arido Pixelado" alt="Funda Cubierto Navaja Arido Pixelado" />
						<div class="card-body">
						  <h4 class="card-title bienvenida">FUNDA CUBIERTO-NAVAJA MULTIUSOS ÁRIDO PIXELADO</h4>
							<asp:label ID="Labelnumref44" class="card-subtitle mb-2 text-muted" runat="server" Text="DEM44"></asp:label>
						  <div class="options">
							   <asp:Label ID="Label103" runat="server" Text="Color " class="bienvenida"></asp:Label>
							   <asp:DropDownList ID="DropDownList1ColorFundaCubiertoNavajaAridoPixel" runat="server">
                                   <asp:ListItem>ARIDO PIXELADO</asp:ListItem>
                               </asp:DropDownList>
								<br />
								<asp:Label ID="Label104" runat="server" Text="Cantidad " class="bienvenida"></asp:Label>
							   <asp:DropDownList ID="DropDownList2StockFundaCubiertoNavajaAridoPixel" runat="server">
                                   <asp:ListItem></asp:ListItem>
                                   <asp:ListItem>1</asp:ListItem>
                                   <asp:ListItem>2</asp:ListItem>
                                   <asp:ListItem>3</asp:ListItem>
                                   <asp:ListItem>4</asp:ListItem>
                                   <asp:ListItem>5</asp:ListItem>
                                   <asp:ListItem>6</asp:ListItem>
                               </asp:DropDownList>
						  </div>
						  <div class="buy d-flex justify-content-between align-items-center">
							<div class="price text-success"><h5 class="mt-4">7€</h5></div>
							  <asp:Button ID="BtnComprarFundaCubiertoNavajaAridoPixel" runat="server" class="btn btn-danger mt-3" Text="COMPRAR" Font-Bold="True" OnClick="BtnComprarFundaCubiertoNavajaAridoPixel_Click" />
						  </div>
						</div>
					</div>
				</div>


		</div><!--Fin del row 13ª fila de 4 productos-->

		<div class="row">
		<div class="col s11 m4 l3">
			 <div class="card material-placeholder">
						<img class="card-img img-fluid" src="imagenes/PLATO MARMITA SARTÉN ACERO INOXIDABLE pequena.jpg" title="Plato Marmita Sartén Acero Inoxidable" alt="Plato Marmita Sartén Acero Inoxidable" />
						<div class="card-body">
						  <h4 class="card-title bienvenida">PLATO MARMITA SARTÉN ACERO INOXIDABLE</h4>
							<asp:label ID="Labelnumref51" class="card-subtitle mb-2 text-muted" runat="server" Text="DEM51"></asp:label>
						  <div class="options">
							   <asp:Label ID="Label105" runat="server" Text="Color " class="bienvenida"></asp:Label>
							   <asp:DropDownList ID="DropDownList1ColorPlatoMarmitaSartenAceroInox" runat="server">
                                   <asp:ListItem>ACERO INOXIDABLE</asp:ListItem>
                               </asp:DropDownList>
								<br />
								<asp:Label ID="Label106" runat="server" Text="Cantidad " class="bienvenida"></asp:Label>
							   <asp:DropDownList ID="DropDownList2StockPlatoMarmitaSartenAceroInox" runat="server">
                                   <asp:ListItem>1</asp:ListItem>
                                   <asp:ListItem>2</asp:ListItem>
                                   <asp:ListItem>3</asp:ListItem>
                               </asp:DropDownList>
						  </div>
						  <div class="buy d-flex justify-content-between align-items-center">
							<div class="price text-success"><h5 class="mt-4">15,90€</h5></div>
							  <asp:Button ID="BtnComprarPlatoMarmitaSartenAceroInox" runat="server" class="btn btn-danger mt-3" Text="COMPRAR" Font-Bold="True" OnClick="BtnComprarPlatoMarmitaSartenAceroInox_Click" />
						  </div>
						</div>
					</div>
				</div>


			<div class="col s11 m4 l3">
			 <div class="card material-placeholder">
						<img class="card-img img-fluid" src="imagenes/Platomarmitasartenaluminioverdepequena.jpg" title="Plato Marmita Sartén Aluminio Verde" alt="Plato Marmita Sartén Aluminio Verde" />
						<div class="card-body">
						  <h4 class="card-title bienvenida">PLATO MARMITA SARTÉN ALUMINIO VERDE</h4>
							<asp:label ID="Labelnumref52" class="card-subtitle mb-2 text-muted" runat="server" Text="DEM52"></asp:label>
						  <div class="options">
							   <asp:Label ID="Label107" runat="server" Text="Color " class="bienvenida"></asp:Label>
							   <asp:DropDownList ID="DropDownList1ColorPlatoMarmitaSartenAluminioVerde" runat="server">
                                   <asp:ListItem>VERDE</asp:ListItem>
                               </asp:DropDownList>
								<br />
								<asp:Label ID="Label108" runat="server" Text="Cantidad " class="bienvenida"></asp:Label>
							   <asp:DropDownList ID="DropDownList2StockPlatoMarmitaSartenAluminioVerde" runat="server">
                                   <asp:ListItem>1</asp:ListItem>
                                   <asp:ListItem>2</asp:ListItem>
                               </asp:DropDownList>
						  </div>
						  <div class="buy d-flex justify-content-between align-items-center">
							<div class="price text-success"><h5 class="mt-4">15,90€</h5></div>
							  <asp:Button ID="BtnComprarPlatoMarmitaSartenAluminioVerde" runat="server" class="btn btn-danger mt-3" Text="COMPRAR" Font-Bold="True" OnClick="BtnComprarPlatoMarmitaSartenAluminioVerde_Click" />
						  </div>
						</div>
					</div>
				</div>


			<div class="col s11 m4 l3">
			 <div class="card material-placeholder">
						<img class="card-img img-fluid" src="imagenes/Mangueraflexiblebidonpequena.jpg" title="Manguera Flexible de Aluminio para Bidón Militar Jerrican de Gasolina" alt="Manguera Flexible de Aluminio para Bidón Militar Jerrican de Gasolina" />
						<div class="card-body">
						  <h4 class="card-title bienvenida">MANGUERA FLEXIBLE DE ALUMINIO PARA BIDÓN MILITAR JERRICAN GASOLINA (MIL-TEC)</h4>
							<asp:label ID="Labelnumrefmiltec2" class="card-subtitle mb-2 text-muted" runat="server" Text="MILTEC2"></asp:label>
						  <div class="options">
							   <asp:Label ID="Label109" runat="server" Text="Color " class="bienvenida"></asp:Label>
							   <asp:DropDownList ID="DropDownList1ColorMangueraFlexibleAluminioBidonGasolin" runat="server">
                                   <asp:ListItem>ALUMINIO</asp:ListItem>
                               </asp:DropDownList>
								<br />
								<asp:Label ID="Label110" runat="server" Text="Cantidad " class="bienvenida"></asp:Label>
							   <asp:DropDownList ID="DropDownList2StockMangueraFlexibleAluminioBidonGasolin" runat="server">
                                   <asp:ListItem>1</asp:ListItem>
                                   <asp:ListItem>2</asp:ListItem>
                                   <asp:ListItem></asp:ListItem>
                               </asp:DropDownList>
						  </div>
						  <div class="buy d-flex justify-content-between align-items-center">
							<div class="price text-success"><h5 class="mt-4">8€</h5></div>
							  <asp:Button ID="BtnComprarMangueraFlexibleAluminioBidonGasolin" runat="server" class="btn btn-danger mt-3" Text="COMPRAR" Font-Bold="True" OnClick="BtnComprarMangueraFlexibleAluminioBidonGasolin_Click" />
						  </div>
						</div>
					</div>
				</div>


			<div class="col s11 m4 l3">
			 <div class="card material-placeholder">
						<img class="card-img img-fluid" src="imagenes/FASTENER pequena.jpg" title="Fastener Negro 1 Par" alt="Fastener Negro 1 Par" />
						<div class="card-body">
						  <h4 class="card-title bienvenida">FASTENER NEGRO 1 PAR (2 FASTENERS)</h4>
							<asp:label ID="Labelnumref55" class="card-subtitle mb-2 text-muted" runat="server" Text="DEM55"></asp:label>
						  <div class="options">
							   <asp:Label ID="Label111" runat="server" Text="Color " class="bienvenida"></asp:Label>
							   <asp:DropDownList ID="DropDownList1ColorFastenerNegro1par" runat="server">
                                   <asp:ListItem>NEGRO</asp:ListItem>
                               </asp:DropDownList>
								<br />
								<asp:Label ID="Label112" runat="server" Text="Cantidad " class="bienvenida"></asp:Label>
							   <asp:DropDownList ID="DropDownList2StockFastenerNegro1par" runat="server">
                                   <asp:ListItem>1</asp:ListItem>
                                   <asp:ListItem>2</asp:ListItem>
                                   <asp:ListItem>3</asp:ListItem>
                                   <asp:ListItem>4</asp:ListItem>
                                   <asp:ListItem>5</asp:ListItem>
                                   <asp:ListItem>6</asp:ListItem>
                                   <asp:ListItem>7</asp:ListItem>
                                   <asp:ListItem>8</asp:ListItem>
                                   <asp:ListItem>9</asp:ListItem>
                                   <asp:ListItem>10</asp:ListItem>
                               </asp:DropDownList>
						  </div>
						  <div class="buy d-flex justify-content-between align-items-center">
							<div class="price text-success"><h5 class="mt-4">4,50€</h5></div>
							  <asp:Button ID="BtnComprarFastenerNegro1par" runat="server" class="btn btn-danger mt-3" Text="COMPRAR" Font-Bold="True" OnClick="BtnComprarFastenerNegro1par_Click" />
						  </div>
						</div>
					</div>
				</div>
			

		</div><!--Fin del row 14ª fila de 4 productos-->

		<div class="row">
			<div class="col s11 m4 l3">
			 <div class="card material-placeholder">
						<img class="card-img img-fluid" src="imagenes/PAQUETE 5 FASTENER pequena.jpg" title="1 Bolsa de 5 Fasteners Negros" alt="1 Bolsa de 5 Fasteners Negros" />
						<div class="card-body">
						  <h4 class="card-title bienvenida"> 1 BOLSA DE 5 FASTENERS NEGROS</h4>
							<asp:label ID="Labelnumref56" class="card-subtitle mb-2 text-muted" runat="server" Text="DEM56"></asp:label>
						  <div class="options">
							   <asp:Label ID="Label113" runat="server" Text="Color " class="bienvenida"></asp:Label>
							   <asp:DropDownList ID="DropDownList1ColorBolsa5Fasteners" runat="server">
                                   <asp:ListItem>NEGRO</asp:ListItem>
                               </asp:DropDownList>
								<br />
								<asp:Label ID="Label114" runat="server" Text="Cantidad " class="bienvenida"></asp:Label>
							   <asp:DropDownList ID="DropDownList2StockBolsa5Fasteners" runat="server">
                                   <asp:ListItem>1</asp:ListItem>
                                   <asp:ListItem>2</asp:ListItem>
                                   <asp:ListItem>3</asp:ListItem>
                                   <asp:ListItem>4</asp:ListItem>
                               </asp:DropDownList>
						  </div>
						  <div class="buy d-flex justify-content-between align-items-center">
							<div class="price text-success"><h5 class="mt-4">11,25€</h5></div>
							  <asp:Button ID="BtnComprarBolsa5Fasteners" runat="server" class="btn btn-danger mt-3" Text="COMPRAR" Font-Bold="True" OnClick="BtnComprarBolsa5Fasteners_Click" />
						  </div>
						</div>
					</div>
				</div>

			<div class="col s11 m4 l3">
			 <div class="card material-placeholder">
						<img class="card-img img-fluid" src="imagenes/gorraoficialarmadapequena.jpg" title="Gorra de Oficial de la Armada Española" alt="Gorra de Oficial de la Armada Española" />
						<div class="card-body">
						  <h4 class="card-title bienvenida">GORRA DE OFICIAL DE LA ARMADA ESPAÑOLA SEMIUEVA, TALLA 56=M, MARCA:ANGEL GABARDOS, FABRICADA EN ZARAGOZA, ESPAÑA</h4>
							<asp:label ID="Labelnumrefgabardos" class="card-subtitle mb-2 text-muted" runat="server" Text="GABARDOS"></asp:label>
						  <div class="options">
							   <asp:Label ID="Label117" runat="server" Text="Color " class="bienvenida"></asp:Label>
							   <asp:DropDownList ID="DropDownList1ColorGorraOfArmadaEsp" runat="server">
                                   <asp:ListItem>BLANCA</asp:ListItem>
                               </asp:DropDownList>
								<br />
								<asp:Label ID="Label118" runat="server" Text="Cantidad " class="bienvenida"></asp:Label>
							   <asp:DropDownList ID="DropDownList2StockGorraOfArmadaEsp" runat="server">
                                   <asp:ListItem>1</asp:ListItem>
                               </asp:DropDownList>
						  </div>
						  <div class="buy d-flex justify-content-between align-items-center">
							<div class="price text-success"><h5 class="mt-4">45€</h5></div>
							  <asp:Button ID="BtnComprarGorraOfArmadaEsp" runat="server" class="btn btn-danger mt-3" Text="COMPRAR" Font-Bold="True" OnClick="BtnComprarGorraOfArmadaEsp_Click" />
						  </div>
						</div>
					</div>
				</div>


			<div class="col s11 m4 l3">
			 <div class="card material-placeholder">
						<img class="card-img img-fluid" src="imagenes/abrigopequena.jpg" title="Abrigo Armada Británica Mil-Tec" alt="Abrigo Armada Británica Mil-Tec" />
						<div class="card-body">
						  <h4 class="card-title bienvenida">ABRIGO ARMADA BRITÁNICA SEMIUEVO, TALLA 52=M, MARCA:MIL-TEC</h4>
							<asp:label ID="Labelnumrefmiltec1" class="card-subtitle mb-2 text-muted" runat="server" Text="MILTEC1"></asp:label>
						  <div class="options">
							   <asp:Label ID="Label115" runat="server" Text="Color " class="bienvenida"></asp:Label>
							   <asp:DropDownList ID="DropDownList1ColorAbrigoArmadaBrit" runat="server">
                                   <asp:ListItem>AZUL MARINO</asp:ListItem>
                               </asp:DropDownList>
								<br />
								<asp:Label ID="Label116" runat="server" Text="Cantidad " class="bienvenida"></asp:Label>
							   <asp:DropDownList ID="DropDownList2StockAbrigoArmadaBrit" runat="server">
                                   <asp:ListItem>1</asp:ListItem>
                               </asp:DropDownList>
						  </div>
						  <div class="buy d-flex justify-content-between align-items-center">
							<div class="price text-success"><h5 class="mt-4">100€</h5></div>
							  <asp:Button ID="BtnComprarAbrigoArmadaBrit" runat="server" class="btn btn-danger mt-3" Text="COMPRAR" Font-Bold="True" OnClick="BtnComprarAbrigoArmadaBrit_Click" />
						  </div>
						</div>
					</div>
				</div>


			<div class="col s11 m4 l3">
			 <div class="card material-placeholder">
						<img class="card-img img-fluid" src="imagenes/LIQUIDACIÓN DE ARMY SURVIVAL ADVENTURE  LOTE DE PRODUCTOS DE DEM pequena.jpg" title="Lote Completo de Liquidación de todos los Productos" alt="Lote Completo de Liquidación de todos los Productos" />
						<div class="card-body">
						  <h4 class="card-title bienvenida">LOTE COMPLETO DE TODOS LOS PRODUCTOS QUE SE LIQUIDAN (SON TODOS LOS QUE ESTA NAVEGANDO EN ESTA PÁGINA DE TIENDA), CONSTA DE DOS CAJAS GRANDES, 5 CAJAS MEDIANAS.</h4>
							<asp:label ID="Labelnumrefliquidacionlotecomp" class="card-subtitle mb-2 text-muted" runat="server" Text="LIQUIDACIONLOTECOMP"></asp:label>
						  <div class="options">
							   <asp:Label ID="Label119" runat="server" Text="Color " class="bienvenida"></asp:Label>
							   <asp:DropDownList ID="DropDownList1ColorLoteLiqProductos" runat="server">
                                   <asp:ListItem>TODOS</asp:ListItem>
                               </asp:DropDownList>
								<br />
								<asp:Label ID="Label120" runat="server" Text="Cantidad " class="bienvenida"></asp:Label>
							   <asp:DropDownList ID="DropDownList2StockLoteLiqProductos" runat="server">
                                   <asp:ListItem>1</asp:ListItem>
                               </asp:DropDownList>
						  </div>
						  <div class="buy d-flex justify-content-between align-items-center">
							<div class="price text-success"><h5 class="mt-4">1161€</h5></div>
							  <asp:Button ID="BtnComprarLoteLiqProductos" runat="server" class="btn btn-danger mt-3" Text="COMPRAR" Font-Bold="True" OnClick="BtnComprarLoteLiqProductos_Click" />
						  </div>
						</div>
					</div>
				</div>


		</div><!--Fin del row 15ª fila de 4 productos-->

		</div><!--Fin del Div Container (Contenido de productos)-->
			

			
			

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


