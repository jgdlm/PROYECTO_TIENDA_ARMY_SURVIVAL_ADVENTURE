<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registrarse.aspx.cs" Inherits="LIQUIDACION_TIENDA_ARMY_SURVIVAL_ADVENTURE.Registrarse" %>
<!--Usuario: Jorge González De La Miar Fecha: 10 de Septiembre de 2021-->
<!--PAGINA REGISTRARSE.aspx (REGISTRARSE COMO CLIENTE)-->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" 
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"> 
<html xmlns="http://www.w3.org/1999/xhtml" lang="es" xml:lang="es">
<head runat="server">

<!-- Etiquetas requeridas-->	
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
<meta name="author" content="Jorge González De La Miar" />
<meta name="copyright" content="Army Survival Adventure" />
<meta name="robots" content="IniciarSesion, follow" />
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
        <div id="cuerpo" class="container-fluid col-lg-11">
		 <h2 class="col-sm-11 col-xl-11 bienvenido">REGISTRARSE CON CUENTA DE CLIENTE PARA PODER COMPRAR PRODUCTOS:</h2>
			<div class="container-fluid col-sm-11 col-xl-11 formRegistroCliente">
				<div>
					<asp:Label ID="Label4" runat="server" Text="DNI:" class="bienvenida"></asp:Label><asp:TextBox ID="TextDni" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="EL NÚMERO DE DNI ES UN CAMPO OBLIGATORIO" Display="Static" ControlToValidate="TextDni" Text="DEBE INGRESAR SU DNI" ForeColor="Red" Font-Bold="True" Font-Size="Medium"></asp:RequiredFieldValidator>
				</div>

				<div>
					<asp:Label ID="Label5" runat="server" Text="NOMBRE:" class="bienvenida"></asp:Label><asp:TextBox ID="TextNombre" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="NOMBRE ES UN CAMPO OBLIGATORIO" Display="Static" ControlToValidate="TextNombre" Text="DEBE INGRESAR SU NOMBRE" ForeColor="Red" Font-Bold="True" Font-Size="Medium"></asp:RequiredFieldValidator>
				</div>

				<div>
					<asp:Label ID="Label6" runat="server" Text="PRIMER APELLIDO:" class="bienvenida"></asp:Label><asp:TextBox ID="TextApellido1" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="PRIMER APELLIDO ES UN CAMPO OBLIGATORIO" Display="Static" ControlToValidate="TextApellido1" Text="DEBE INGRESAR SU PRIMER APELLIDO" ForeColor="Red" Font-Bold="True" Font-Size="Medium"></asp:RequiredFieldValidator>
				</div>
				
				<div>
					<asp:Label ID="Label7" runat="server" Text="SEGUNDO APELLIDO:" class="bienvenida"></asp:Label><asp:TextBox ID="TextApellido2" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="SEGUNDO APELLIDO ES UN CAMPO OBLIGATORIO" Display="Static" ControlToValidate="TextApellido2" Text="DEBE INGRESAR SU SEGUNDO APELLIDO" ForeColor="Red" Font-Bold="True" Font-Size="Medium"></asp:RequiredFieldValidator>
				</div>
				
				<div>
					<asp:Label ID="Label8" runat="server" Text="DIRECCIÓN:" class="bienvenida"></asp:Label><asp:TextBox ID="TextDireccion" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="DIRECCIÓN ES UN CAMPO OBLIGATORIO" Display="Static" ControlToValidate="TextDireccion" Text="DEBE INGRESAR SU DIRECCIÓN" ForeColor="Red" Font-Bold="True" Font-Size="Medium"></asp:RequiredFieldValidator>
				</div>
				
				<div>
					<asp:Label ID="Label9" runat="server" Text="CIUDAD:" class="bienvenida"></asp:Label><asp:TextBox ID="TextCiudad" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="CIUDAD ES UN CAMPO OBLIGATORIO" Display="Static" ControlToValidate="TextCiudad" Text="DEBE INGRESAR SU CIUDAD" ForeColor="Red" Font-Bold="True" Font-Size="Medium"></asp:RequiredFieldValidator>
				</div>

				<div>
					<asp:Label ID="Label10" runat="server" Text="PROVINCIA:" class="bienvenida"></asp:Label><asp:TextBox ID="TextProvincia" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="PROVINCIA ES UN CAMPO OBLIGATORIO" Display="Static" ControlToValidate="TextProvincia" Text="DEBE INGRESAR SU PROVINCIA" ForeColor="Red" Font-Bold="True" Font-Size="Medium"></asp:RequiredFieldValidator>
				</div>

				<div>
					<asp:Label ID="Label11" runat="server" Text="CÓDIGO POSTAL:" class="bienvenida"></asp:Label><asp:TextBox ID="TextCodigoPostal" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="CÓDIGO POSTAL ES UN CAMPO OBLIGATORIO" Display="Static" ControlToValidate="TextCodigoPostal" Text="DEBE INGRESAR SU CÓDIGO POSTAL" ForeColor="Red" Font-Bold="True" Font-Size="Medium"></asp:RequiredFieldValidator>
				</div>

				<div>
					<asp:Label ID="Label12" runat="server" Text="TELÉFONO:" class="bienvenida"></asp:Label><asp:TextBox ID="TextTelefono" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="TELÉFONO ES UN CAMPO OBLIGATORIO" Display="Static" ControlToValidate="TextTelefono" Text="DEBE INGRESAR SU TELÉFONO" ForeColor="Red" Font-Bold="True" Font-Size="Medium"></asp:RequiredFieldValidator>
				</div>

				<div>
					<asp:Label ID="Label13" runat="server" Text="CORREO ELECTRÓNICO:" class="bienvenida"></asp:Label><asp:TextBox ID="TextEmail" runat="server"></asp:TextBox><asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="EL CORREO ELECTRÓNICO ES UN CAMPO OBLIGATORIO" ForeColor="Red" Font-Bold="True" Display="Static" Text="INTRODUZCA UN CORREO ELECTRÓNICO VÁLIDO" ControlToValidate="TextEmail" ValidationExpression="^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$"></asp:RegularExpressionValidator>
				</div>

				<div>
					<asp:Label ID="Label14" runat="server" Text="NOMBRE DE USUARIO:" class="bienvenida"></asp:Label><asp:TextBox ID="TextNombreUsuario" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ErrorMessage="El NOMBRE DE USUARIO ES UN CAMPO OBLIGATORIO" Display="Static" ControlToValidate="TextNombreUsuario" Text="DEBE INGRESAR EL NOMBRE DE USUARIO" ForeColor="Red" Font-Bold="True" Font-Size="Medium"></asp:RequiredFieldValidator>
				</div>

				<div>
					<asp:Label ID="Label15" runat="server" Text="CONTRASEÑA:" class="bienvenida"></asp:Label><asp:TextBox ID="TextPassword" runat="server" TextMode="Password"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ErrorMessage="LA CONTRASEÑA ES UN CAMPO OBLIGATORIO" Font-Bold="True" ControlToValidate="TextPassword" Text="DEBE INTRODUCCIR LA CONTRASEÑA" ForeColor="Red" Font-Size="Medium"></asp:RequiredFieldValidator>
				</div>

				<div>
					<asp:CheckBox ID="ChkPolitica" runat="server" class="bienvenida" Text="Acepto la Política de Privacidad y los términos y condiciones Generales de la Compra" />
					<asp:Label ID="Label16" runat="server" class="validacion" Text="&nbsp" ForeColor="Red"></asp:Label>
				</div>

				<div>
					<asp:Button ID="BtnRegistrarse" runat="server" Text="REGISTRARSE" OnClick="BtnRegistrarse_Click" />
				</div>

				<div>
					<asp:Label ID="Label1" runat="server" ForeColor="#00A653"></asp:Label>
				</div>

				<div>
					<asp:ValidationSummary ID="ValidationSummary1" runat="server" DisplayMode="List" ForeColor="Red" Font-Bold="True" />
				</div>
			</div> 
		</div><!--Fin del Div Container (Contenido de la página)-->
    </form><!--Fin del form-->

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
