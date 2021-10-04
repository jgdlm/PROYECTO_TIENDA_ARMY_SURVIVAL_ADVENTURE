USE [LIQUIDACION_TIENDA_ARMY_SURVIVAL_ADVENTURE]
GO
/****** Object:  Table [dbo].[CLIENTES]    Script Date: 21/09/2021 17:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CLIENTES](
	[IDCLIENTE] [int] IDENTITY(1,1) NOT NULL,
	[DNI] [nvarchar](9) NULL,
	[NOMBRE] [nvarchar](100) NULL,
	[APELLIDO1] [nvarchar](100) NULL,
	[APELLIDO2] [nvarchar](100) NULL,
	[DIRECCION] [nvarchar](100) NULL,
	[CIUDAD] [nvarchar](100) NULL,
	[PROVINCIA] [nvarchar](100) NULL,
	[CODIGOPOSTAL] [int] NULL,
	[TELEFONO] [nvarchar](10) NULL,
	[EMAIL] [nvarchar](100) NULL,
	[NOMBREUSUARIO] [nvarchar](50) NULL,
	[CONTRASENA] [nvarchar](8) NULL,
 CONSTRAINT [PK_CLIENTES_1] PRIMARY KEY CLUSTERED 
(
	[IDCLIENTE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PEDIDOS]    Script Date: 21/09/2021 17:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PEDIDOS](
	[FECHA] [date] NULL,
	[IDPEDIDO] [int] IDENTITY(1,1) NOT NULL,
	[IDCLIENTE] [int] NULL,
	[NOMBRE] [nvarchar](100) NULL,
	[APELLIDO1] [nvarchar](100) NULL,
	[APELLIDO2] [nvarchar](100) NULL,
	[DNI] [nvarchar](9) NULL,
	[DIRECCION] [nvarchar](100) NULL,
	[CIUDAD] [nvarchar](100) NULL,
	[PROVINCIA] [nvarchar](100) NULL,
	[CODIGOPOSTAL] [int] NULL,
	[TELEFONO] [nvarchar](10) NULL,
	[NUMERO_REFERENCIA] [nvarchar](50) NULL,
	[NOMBREPRODUCTO] [nvarchar](100) NULL,
	[COLOR] [nvarchar](50) NULL,
	[CANTIDAD] [int] NULL,
	[PRECIO] [decimal](20, 2) NULL,
	[TOTAL] [decimal](20, 2) NULL,
 CONSTRAINT [PK_PEDIDOS] PRIMARY KEY CLUSTERED 
(
	[IDPEDIDO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PRODUCTOS]    Script Date: 21/09/2021 17:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PRODUCTOS](
	[NUMERO_REFERENCIA] [nvarchar](50) NOT NULL,
	[NOMBREPRODUCTO] [nvarchar](100) NULL,
	[COLOR] [nvarchar](50) NULL,
	[UNIDADSTOCK] [int] NULL,
	[PRECIO] [decimal](20, 2) NULL,
	[IMAGEN] [image] NULL,
 CONSTRAINT [PK_PRODUCTOS] PRIMARY KEY CLUSTERED 
(
	[NUMERO_REFERENCIA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CLIENTES] ON 

INSERT [dbo].[CLIENTES] ([IDCLIENTE], [DNI], [NOMBRE], [APELLIDO1], [APELLIDO2], [DIRECCION], [CIUDAD], [PROVINCIA], [CODIGOPOSTAL], [TELEFONO], [EMAIL], [NOMBREUSUARIO], [CONTRASENA]) VALUES (5, N'09430203L', N'JORGE', N'GONZALEZ', N'DE LA MIAR', N'C/ FRANCISCO PINTADO FE Nº10, 2ºF', N'OVIEDO', N'ASTURIAS', 33011, N'617603097', N'jgdlm77@hotmail.com', N'ARMY', N'1234')
SET IDENTITY_INSERT [dbo].[CLIENTES] OFF
GO
INSERT [dbo].[PRODUCTOS] ([NUMERO_REFERENCIA], [NOMBREPRODUCTO], [COLOR], [UNIDADSTOCK], [PRECIO], [IMAGEN]) VALUES (N'DEM1', N'CARTUCHERA DOBLE HK G-36 CON BOMBERAS CON SISTEMA MUELLE', N'BOSCOSO', 2, CAST(28.90 AS Decimal(20, 2)), NULL)
INSERT [dbo].[PRODUCTOS] ([NUMERO_REFERENCIA], [NOMBREPRODUCTO], [COLOR], [UNIDADSTOCK], [PRECIO], [IMAGEN]) VALUES (N'DEM10', N'CEÑIDOR BRIPAC CON TERMINAL DE GARRA', N'BOSCOSO OSCURO', 3, CAST(12.99 AS Decimal(20, 2)), NULL)
INSERT [dbo].[PRODUCTOS] ([NUMERO_REFERENCIA], [NOMBREPRODUCTO], [COLOR], [UNIDADSTOCK], [PRECIO], [IMAGEN]) VALUES (N'DEM11', N'CEÑIDOR BRIPAC CON TERMINAL DE GARRA', N'BOSCOSO CLARO', 2, CAST(12.99 AS Decimal(20, 2)), NULL)
INSERT [dbo].[PRODUCTOS] ([NUMERO_REFERENCIA], [NOMBREPRODUCTO], [COLOR], [UNIDADSTOCK], [PRECIO], [IMAGEN]) VALUES (N'DEM12', N'CARTERA DE CAMILLERO CON SISTEMA DE 2 CORCHETES (MEDIDAS: Alto: 14cm x Ancho: 19cm x Fondo: 10cm )', N'BOSCOSO', 1, CAST(18.50 AS Decimal(20, 2)), NULL)
INSERT [dbo].[PRODUCTOS] ([NUMERO_REFERENCIA], [NOMBREPRODUCTO], [COLOR], [UNIDADSTOCK], [PRECIO], [IMAGEN]) VALUES (N'DEM13', N'FUNDA DE CANTIMPLORA DE BORREGUITO CON BOLSILLO CON SISTEMA 2 FASTENERS', N'VERDE', 4, CAST(14.00 AS Decimal(20, 2)), NULL)
INSERT [dbo].[PRODUCTOS] ([NUMERO_REFERENCIA], [NOMBREPRODUCTO], [COLOR], [UNIDADSTOCK], [PRECIO], [IMAGEN]) VALUES (N'DEM14', N'FUNDA DE GAFAS CON SISTEMA 2 CORCHETES', N'VERDE', 5, CAST(10.00 AS Decimal(20, 2)), NULL)
INSERT [dbo].[PRODUCTOS] ([NUMERO_REFERENCIA], [NOMBREPRODUCTO], [COLOR], [UNIDADSTOCK], [PRECIO], [IMAGEN]) VALUES (N'DEM15', N'FUNDA DE NAVAJA', N'VERDE', 4, CAST(5.99 AS Decimal(20, 2)), NULL)
INSERT [dbo].[PRODUCTOS] ([NUMERO_REFERENCIA], [NOMBREPRODUCTO], [COLOR], [UNIDADSTOCK], [PRECIO], [IMAGEN]) VALUES (N'DEM16', N'FUNDA DE TELEFONO O GPS CON SISTEMA CORCHETE (MEDIDAS: 17cm x 7,5 cm x 4,5cm)', N'VERDE', 1, CAST(8.00 AS Decimal(20, 2)), NULL)
INSERT [dbo].[PRODUCTOS] ([NUMERO_REFERENCIA], [NOMBREPRODUCTO], [COLOR], [UNIDADSTOCK], [PRECIO], [IMAGEN]) VALUES (N'DEM17', N'FUNDA DE BRUJULA Y ESPOSAS CON SISTEMA MUELLE', N'VERDE', 2, CAST(12.90 AS Decimal(20, 2)), NULL)
INSERT [dbo].[PRODUCTOS] ([NUMERO_REFERENCIA], [NOMBREPRODUCTO], [COLOR], [UNIDADSTOCK], [PRECIO], [IMAGEN]) VALUES (N'DEM18', N'FUNDA CUBIERTO 3 PIEZAS', N'VERDE', 7, CAST(6.00 AS Decimal(20, 2)), NULL)
INSERT [dbo].[PRODUCTOS] ([NUMERO_REFERENCIA], [NOMBREPRODUCTO], [COLOR], [UNIDADSTOCK], [PRECIO], [IMAGEN]) VALUES (N'DEM19', N'FUNDA CUBIERTO-NAVAJA', N'VERDE', 2, CAST(7.00 AS Decimal(20, 2)), NULL)
INSERT [dbo].[PRODUCTOS] ([NUMERO_REFERENCIA], [NOMBREPRODUCTO], [COLOR], [UNIDADSTOCK], [PRECIO], [IMAGEN]) VALUES (N'DEM2', N'BOLSA DORSAL (RIÑONERA) CON SISTEMA MUELLE', N'BOSCOSO', 1, CAST(30.00 AS Decimal(20, 2)), NULL)
INSERT [dbo].[PRODUCTOS] ([NUMERO_REFERENCIA], [NOMBREPRODUCTO], [COLOR], [UNIDADSTOCK], [PRECIO], [IMAGEN]) VALUES (N'DEM20', N'CEÑIDOR BRIPAC CON TERMINAL DE 2 GANCHOS', N'VERDE', 4, CAST(12.99 AS Decimal(20, 2)), NULL)
INSERT [dbo].[PRODUCTOS] ([NUMERO_REFERENCIA], [NOMBREPRODUCTO], [COLOR], [UNIDADSTOCK], [PRECIO], [IMAGEN]) VALUES (N'DEM21', N'CEÑIDOR BRIPAC CON TERMINAL DE GARRA', N'VERDE', 1, CAST(12.99 AS Decimal(20, 2)), NULL)
INSERT [dbo].[PRODUCTOS] ([NUMERO_REFERENCIA], [NOMBREPRODUCTO], [COLOR], [UNIDADSTOCK], [PRECIO], [IMAGEN]) VALUES (N'DEM22', N'CINTURON VELCRO PARA PANTALON', N'VERDE', 1, CAST(9.50 AS Decimal(20, 2)), NULL)
INSERT [dbo].[PRODUCTOS] ([NUMERO_REFERENCIA], [NOMBREPRODUCTO], [COLOR], [UNIDADSTOCK], [PRECIO], [IMAGEN]) VALUES (N'DEM23', N'CEÑIDOR BRIPAC CON TERMINAL DE GARRA', N'NEGRO', 2, CAST(12.99 AS Decimal(20, 2)), NULL)
INSERT [dbo].[PRODUCTOS] ([NUMERO_REFERENCIA], [NOMBREPRODUCTO], [COLOR], [UNIDADSTOCK], [PRECIO], [IMAGEN]) VALUES (N'DEM24', N'CINTURÓN CON HEBILLA METALICA UME', N'NEGRO', 2, CAST(20.00 AS Decimal(20, 2)), NULL)
INSERT [dbo].[PRODUCTOS] ([NUMERO_REFERENCIA], [NOMBREPRODUCTO], [COLOR], [UNIDADSTOCK], [PRECIO], [IMAGEN]) VALUES (N'DEM25', N'PORTAFUSIL HK G-36 EXTENSIBLE MULTIUSO REGULABLE SENCILLO', N'NEGRO', 1, CAST(20.00 AS Decimal(20, 2)), NULL)
INSERT [dbo].[PRODUCTOS] ([NUMERO_REFERENCIA], [NOMBREPRODUCTO], [COLOR], [UNIDADSTOCK], [PRECIO], [IMAGEN]) VALUES (N'DEM26', N'FUNDA DE GAFAS CON SISTEMA 2 CORCHETES', N'NEGRO', 1, CAST(10.00 AS Decimal(20, 2)), NULL)
INSERT [dbo].[PRODUCTOS] ([NUMERO_REFERENCIA], [NOMBREPRODUCTO], [COLOR], [UNIDADSTOCK], [PRECIO], [IMAGEN]) VALUES (N'DEM27', N'FUNDA DE NAVAJA', N'NEGRO', 6, CAST(5.99 AS Decimal(20, 2)), NULL)
INSERT [dbo].[PRODUCTOS] ([NUMERO_REFERENCIA], [NOMBREPRODUCTO], [COLOR], [UNIDADSTOCK], [PRECIO], [IMAGEN]) VALUES (N'DEM28', N'FUNDA DE TELEFONO O GPS CON SISTEMA CORCHETE (MEDIDAS: 17cm x 7,5 cm x 4,5cm)', N'NEGRO', 3, CAST(8.00 AS Decimal(20, 2)), NULL)
INSERT [dbo].[PRODUCTOS] ([NUMERO_REFERENCIA], [NOMBREPRODUCTO], [COLOR], [UNIDADSTOCK], [PRECIO], [IMAGEN]) VALUES (N'DEM29', N'FUNDA DE BRUJULA Y ESPOSAS CON SISTEMA MUELLE', N'NEGRO', 2, CAST(12.90 AS Decimal(20, 2)), NULL)
INSERT [dbo].[PRODUCTOS] ([NUMERO_REFERENCIA], [NOMBREPRODUCTO], [COLOR], [UNIDADSTOCK], [PRECIO], [IMAGEN]) VALUES (N'DEM3', N'FUNDA DE GAFAS CON SISTEMA 2 CORCHETES', N'BOSCOSO', 2, CAST(10.00 AS Decimal(20, 2)), NULL)
INSERT [dbo].[PRODUCTOS] ([NUMERO_REFERENCIA], [NOMBREPRODUCTO], [COLOR], [UNIDADSTOCK], [PRECIO], [IMAGEN]) VALUES (N'DEM30', N'FUNDA CUBIERTO-NAVAJA', N'NEGRO', 4, CAST(7.00 AS Decimal(20, 2)), NULL)
INSERT [dbo].[PRODUCTOS] ([NUMERO_REFERENCIA], [NOMBREPRODUCTO], [COLOR], [UNIDADSTOCK], [PRECIO], [IMAGEN]) VALUES (N'DEM31', N'FUNDA DE PISTOLA MULTIPLE CON SISTEMA DE MUELLE', N'NEGRO', 2, CAST(39.00 AS Decimal(20, 2)), NULL)
INSERT [dbo].[PRODUCTOS] ([NUMERO_REFERENCIA], [NOMBREPRODUCTO], [COLOR], [UNIDADSTOCK], [PRECIO], [IMAGEN]) VALUES (N'DEM32', N'FUNDA DE CARGADOR DE PISTOLA MULTIPLE CON SISTEMA MUELLE', N'NEGRO', 2, CAST(14.99 AS Decimal(20, 2)), NULL)
INSERT [dbo].[PRODUCTOS] ([NUMERO_REFERENCIA], [NOMBREPRODUCTO], [COLOR], [UNIDADSTOCK], [PRECIO], [IMAGEN]) VALUES (N'DEM33', N'CINTURON CORDURA CON HEBILLA CON TRES PUNTOS DE SEGURIDAD (MEDIDAS: 1,30cm de Largo)', N'NEGRO', 38, CAST(19.99 AS Decimal(20, 2)), NULL)
INSERT [dbo].[PRODUCTOS] ([NUMERO_REFERENCIA], [NOMBREPRODUCTO], [COLOR], [UNIDADSTOCK], [PRECIO], [IMAGEN]) VALUES (N'DEM34', N'CINTURON CORDURA CON HEBILLA CON TRES PUNTOS DE SEGURIDAD (MEDIDAS: 1,40cm de Largo)', N'NEGRO', 1, CAST(19.99 AS Decimal(20, 2)), NULL)
INSERT [dbo].[PRODUCTOS] ([NUMERO_REFERENCIA], [NOMBREPRODUCTO], [COLOR], [UNIDADSTOCK], [PRECIO], [IMAGEN]) VALUES (N'DEM35', N'MOCHILA SOPORTE VITAL AVANZADO A.RESPIRATORIO', N'BOSCOSO PIXELADO', 1, CAST(300.00 AS Decimal(20, 2)), NULL)
INSERT [dbo].[PRODUCTOS] ([NUMERO_REFERENCIA], [NOMBREPRODUCTO], [COLOR], [UNIDADSTOCK], [PRECIO], [IMAGEN]) VALUES (N'DEM36', N'CEÑIDOR BRIPAC MODELO NUEVO 2 CARAS CON TERMINAL DE GARRA', N'ARIDO PIXELADO', 5, CAST(12.99 AS Decimal(20, 2)), NULL)
INSERT [dbo].[PRODUCTOS] ([NUMERO_REFERENCIA], [NOMBREPRODUCTO], [COLOR], [UNIDADSTOCK], [PRECIO], [IMAGEN]) VALUES (N'DEM37', N'CARTUCHERA DOBLE HK G-36 CON BOMBERAS CON SISTEMA MUELLE', N'ARIDO PIXELADO', 2, CAST(28.90 AS Decimal(20, 2)), NULL)
INSERT [dbo].[PRODUCTOS] ([NUMERO_REFERENCIA], [NOMBREPRODUCTO], [COLOR], [UNIDADSTOCK], [PRECIO], [IMAGEN]) VALUES (N'DEM38', N'BOLSA DORSAL (RIÑONERA) CON SISTEMA MUELLE', N'ARIDO PIXELADO', 2, CAST(30.00 AS Decimal(20, 2)), NULL)
INSERT [dbo].[PRODUCTOS] ([NUMERO_REFERENCIA], [NOMBREPRODUCTO], [COLOR], [UNIDADSTOCK], [PRECIO], [IMAGEN]) VALUES (N'DEM39', N'FUNDA DE PISTOLA MULTIPLE CON SISTEMA DE MUELLE', N'ARIDO PIXELADO', 4, CAST(39.00 AS Decimal(20, 2)), NULL)
INSERT [dbo].[PRODUCTOS] ([NUMERO_REFERENCIA], [NOMBREPRODUCTO], [COLOR], [UNIDADSTOCK], [PRECIO], [IMAGEN]) VALUES (N'DEM4', N'FUNDA DE NAVAJA', N'BOSCOSO', 8, CAST(5.99 AS Decimal(20, 2)), NULL)
INSERT [dbo].[PRODUCTOS] ([NUMERO_REFERENCIA], [NOMBREPRODUCTO], [COLOR], [UNIDADSTOCK], [PRECIO], [IMAGEN]) VALUES (N'DEM40', N'EXTENSOR DE FUNDA DE PISTOLA MULTIPLE APERTURA RÁPIDA MODELO NUEVO', N'ARIDO PIXELADO', 4, CAST(19.00 AS Decimal(20, 2)), NULL)
INSERT [dbo].[PRODUCTOS] ([NUMERO_REFERENCIA], [NOMBREPRODUCTO], [COLOR], [UNIDADSTOCK], [PRECIO], [IMAGEN]) VALUES (N'DEM41', N'FUNDA DE CARGADOR DE PISTOLA MULTIPLE CON SISTEMA DE MUELLE', N'ARIDO PIXELADO', 4, CAST(14.99 AS Decimal(20, 2)), NULL)
INSERT [dbo].[PRODUCTOS] ([NUMERO_REFERENCIA], [NOMBREPRODUCTO], [COLOR], [UNIDADSTOCK], [PRECIO], [IMAGEN]) VALUES (N'DEM42', N'EXTENSOR 2 CARTUCHERAS HK G-36 DOBLES', N'ARIDO PIXELADO', 1, CAST(35.00 AS Decimal(20, 2)), NULL)
INSERT [dbo].[PRODUCTOS] ([NUMERO_REFERENCIA], [NOMBREPRODUCTO], [COLOR], [UNIDADSTOCK], [PRECIO], [IMAGEN]) VALUES (N'DEM43', N'FUNDA DE NAVAJA', N'ARIDO PIXELADO', 7, CAST(5.99 AS Decimal(20, 2)), NULL)
INSERT [dbo].[PRODUCTOS] ([NUMERO_REFERENCIA], [NOMBREPRODUCTO], [COLOR], [UNIDADSTOCK], [PRECIO], [IMAGEN]) VALUES (N'DEM44', N'FUNDA CUBIERTO-NAVAJA CON SISTEMA DE MUELLE', N'ARIDO PIXELADO', 6, CAST(7.00 AS Decimal(20, 2)), NULL)
INSERT [dbo].[PRODUCTOS] ([NUMERO_REFERENCIA], [NOMBREPRODUCTO], [COLOR], [UNIDADSTOCK], [PRECIO], [IMAGEN]) VALUES (N'DEM45', N'FUNDA DE GAFAS CON SITEMA DE MUELLE', N'ARIDO PIXELADO', 3, CAST(10.00 AS Decimal(20, 2)), NULL)
INSERT [dbo].[PRODUCTOS] ([NUMERO_REFERENCIA], [NOMBREPRODUCTO], [COLOR], [UNIDADSTOCK], [PRECIO], [IMAGEN]) VALUES (N'DEM46', N'FUNDA DE BRUJULA Y ESPOSAS CON SISTEMA MUELLE', N'ARIDO PIXELADO', 3, CAST(12.90 AS Decimal(20, 2)), NULL)
INSERT [dbo].[PRODUCTOS] ([NUMERO_REFERENCIA], [NOMBREPRODUCTO], [COLOR], [UNIDADSTOCK], [PRECIO], [IMAGEN]) VALUES (N'DEM47', N'FUNDA DE PISTOLA DE CUERO PARA LEGION O GUARDIA CIVIL', N'NEGRO', 1, CAST(50.00 AS Decimal(20, 2)), NULL)
INSERT [dbo].[PRODUCTOS] ([NUMERO_REFERENCIA], [NOMBREPRODUCTO], [COLOR], [UNIDADSTOCK], [PRECIO], [IMAGEN]) VALUES (N'DEM48', N'CANTIMPLORA 1 LITRO PVC', N'VERDE', 15, CAST(5.99 AS Decimal(20, 2)), NULL)
INSERT [dbo].[PRODUCTOS] ([NUMERO_REFERENCIA], [NOMBREPRODUCTO], [COLOR], [UNIDADSTOCK], [PRECIO], [IMAGEN]) VALUES (N'DEM49', N'CANTIMPLORA 1 LITRO PVC', N'ARIDO', 5, CAST(5.99 AS Decimal(20, 2)), NULL)
INSERT [dbo].[PRODUCTOS] ([NUMERO_REFERENCIA], [NOMBREPRODUCTO], [COLOR], [UNIDADSTOCK], [PRECIO], [IMAGEN]) VALUES (N'DEM5', N'FUNDA DE TELEFONO O GPS CON SISTEMA CORCHETE (MEDIDAS: 17cm x 7,5 cm x 4,5cm)', N'BOSCOSO', 2, CAST(9.00 AS Decimal(20, 2)), NULL)
INSERT [dbo].[PRODUCTOS] ([NUMERO_REFERENCIA], [NOMBREPRODUCTO], [COLOR], [UNIDADSTOCK], [PRECIO], [IMAGEN]) VALUES (N'DEM50', N'VASO DE ACERO INOXIDABLE (GABATA PARA CANTIMPLORA)', N'ACERO INOXIDABLE', 5, CAST(22.90 AS Decimal(20, 2)), NULL)
INSERT [dbo].[PRODUCTOS] ([NUMERO_REFERENCIA], [NOMBREPRODUCTO], [COLOR], [UNIDADSTOCK], [PRECIO], [IMAGEN]) VALUES (N'DEM51', N'PLATO MARMITA SARTEN ACERO INOXIDABLE', N'ACERO INOXIDABLE', 3, CAST(15.90 AS Decimal(20, 2)), NULL)
INSERT [dbo].[PRODUCTOS] ([NUMERO_REFERENCIA], [NOMBREPRODUCTO], [COLOR], [UNIDADSTOCK], [PRECIO], [IMAGEN]) VALUES (N'DEM52', N'PLATO MARMITA SARTEN ALUMINIO', N'VERDE', 2, CAST(15.90 AS Decimal(20, 2)), NULL)
INSERT [dbo].[PRODUCTOS] ([NUMERO_REFERENCIA], [NOMBREPRODUCTO], [COLOR], [UNIDADSTOCK], [PRECIO], [IMAGEN]) VALUES (N'DEM53', N'NAVAJA MULTIUSOS CON EMBLEMA ARMADA ESPAÑOLA', N'VERDE', 1, CAST(12.99 AS Decimal(20, 2)), NULL)
INSERT [dbo].[PRODUCTOS] ([NUMERO_REFERENCIA], [NOMBREPRODUCTO], [COLOR], [UNIDADSTOCK], [PRECIO], [IMAGEN]) VALUES (N'DEM54', N'CUBIERTOS 3 PIEZAS', N'ACERO INOXIDABLE', 1, CAST(5.50 AS Decimal(20, 2)), NULL)
INSERT [dbo].[PRODUCTOS] ([NUMERO_REFERENCIA], [NOMBREPRODUCTO], [COLOR], [UNIDADSTOCK], [PRECIO], [IMAGEN]) VALUES (N'DEM55', N'FASTENER NEGRO 1 PAR (2 FASTENERS)', N'NEGRO', 10, CAST(4.50 AS Decimal(20, 2)), NULL)
INSERT [dbo].[PRODUCTOS] ([NUMERO_REFERENCIA], [NOMBREPRODUCTO], [COLOR], [UNIDADSTOCK], [PRECIO], [IMAGEN]) VALUES (N'DEM56', N'1 BOLSA DE 5 FASTENERS', N'NEGRO', 4, CAST(11.25 AS Decimal(20, 2)), NULL)
INSERT [dbo].[PRODUCTOS] ([NUMERO_REFERENCIA], [NOMBREPRODUCTO], [COLOR], [UNIDADSTOCK], [PRECIO], [IMAGEN]) VALUES (N'DEM6', N'FUNDA DE BRUJULA Y ESPOSAS CON SISTEMA MUELLE', N'BOSCOSO', 3, CAST(12.90 AS Decimal(20, 2)), NULL)
INSERT [dbo].[PRODUCTOS] ([NUMERO_REFERENCIA], [NOMBREPRODUCTO], [COLOR], [UNIDADSTOCK], [PRECIO], [IMAGEN]) VALUES (N'DEM7', N'FUNDA CUBIERTO 3 PIEZAS', N'BOSCOSO', 4, CAST(6.00 AS Decimal(20, 2)), NULL)
INSERT [dbo].[PRODUCTOS] ([NUMERO_REFERENCIA], [NOMBREPRODUCTO], [COLOR], [UNIDADSTOCK], [PRECIO], [IMAGEN]) VALUES (N'DEM8', N'FUNDA DE PISTOLA MULTIPLE CON SISTEMA DE MUELLE', N'BOSCOSO', 2, CAST(39.00 AS Decimal(20, 2)), NULL)
INSERT [dbo].[PRODUCTOS] ([NUMERO_REFERENCIA], [NOMBREPRODUCTO], [COLOR], [UNIDADSTOCK], [PRECIO], [IMAGEN]) VALUES (N'DEM9', N'EXTENSOR 2 CARTUCHERAS HK G-36 DOBLES', N'BOSCOSO', 2, CAST(35.00 AS Decimal(20, 2)), NULL)
INSERT [dbo].[PRODUCTOS] ([NUMERO_REFERENCIA], [NOMBREPRODUCTO], [COLOR], [UNIDADSTOCK], [PRECIO], [IMAGEN]) VALUES (N'GABARDOS', N'GORRA DE OFICIAL DE LA ARMADA ESPAÑOLA SEMINUEVA TALLA: 56', N'BLANCA', 1, CAST(45.00 AS Decimal(20, 2)), NULL)
INSERT [dbo].[PRODUCTOS] ([NUMERO_REFERENCIA], [NOMBREPRODUCTO], [COLOR], [UNIDADSTOCK], [PRECIO], [IMAGEN]) VALUES (N'LIQUIDACIONLOTECOMP', N'LIQUIDACIÓN DE TODO EL LOTE DE PRODUCTOS (2 CAJAS GRANDES, 5 CAJAS MEDIANAS)', N'TODOS', 1, CAST(1161.00 AS Decimal(20, 2)), NULL)
INSERT [dbo].[PRODUCTOS] ([NUMERO_REFERENCIA], [NOMBREPRODUCTO], [COLOR], [UNIDADSTOCK], [PRECIO], [IMAGEN]) VALUES (N'MILTEC1', N'ABRIGO ARMADA BRITANICA TALLA M:52 SEMINUEVO', N'AZUL MARINO', 1, CAST(100.00 AS Decimal(20, 2)), NULL)
INSERT [dbo].[PRODUCTOS] ([NUMERO_REFERENCIA], [NOMBREPRODUCTO], [COLOR], [UNIDADSTOCK], [PRECIO], [IMAGEN]) VALUES (N'MILTEC2', N'MANGUERA FLEXIBLE DE ALUMINIO PARA BIDON MILITAR JERRICAN DE GASOLINA', N'ALUMINIO', 2, CAST(8.00 AS Decimal(20, 2)), NULL)
GO
ALTER TABLE [dbo].[PEDIDOS]  WITH CHECK ADD  CONSTRAINT [FK_PEDIDOS_CLIENTES] FOREIGN KEY([IDCLIENTE])
REFERENCES [dbo].[CLIENTES] ([IDCLIENTE])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PEDIDOS] CHECK CONSTRAINT [FK_PEDIDOS_CLIENTES]
GO
ALTER TABLE [dbo].[PEDIDOS]  WITH CHECK ADD  CONSTRAINT [FK_PEDIDOS_PRODUCTOS] FOREIGN KEY([NUMERO_REFERENCIA])
REFERENCES [dbo].[PRODUCTOS] ([NUMERO_REFERENCIA])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PEDIDOS] CHECK CONSTRAINT [FK_PEDIDOS_PRODUCTOS]
GO
USE [master]
GO
ALTER DATABASE [LIQUIDACION_TIENDA_ARMY_SURVIVAL_ADVENTURE] SET  READ_WRITE 
GO
