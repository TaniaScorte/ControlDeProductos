USE [ControlDeProductos]
GO
/****** Object:  Table [dbo].[Familias]    Script Date: 22/05/2017 0:13:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Familias](
	[IdFamilia] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Descripcion] [varchar](50) NULL,
 CONSTRAINT [PK_Familias_1] PRIMARY KEY CLUSTERED 
(
	[IdFamilia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Productos]    Script Date: 22/05/2017 0:13:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Productos](
	[Codigo] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nchar](50) NULL,
	[Descripcion] [nchar](50) NULL,
	[IdProveedor] [int] NULL,
	[IdRubro] [int] NULL,
	[Marca] [nchar](50) NULL,
	[Precio] [decimal](10, 4) NULL,
 CONSTRAINT [PK_Productos] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Proveedores]    Script Date: 22/05/2017 0:13:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Proveedores](
	[IdProv] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Direccion] [varchar](50) NULL,
 CONSTRAINT [PK_Proveedores_1] PRIMARY KEY CLUSTERED 
(
	[IdProv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Rubros]    Script Date: 22/05/2017 0:13:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Rubros](
	[IdRubro] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Descripcion] [varchar](50) NULL,
	[IdFlia] [int] NULL,
 CONSTRAINT [PK_Rubros] PRIMARY KEY CLUSTERED 
(
	[IdRubro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 22/05/2017 0:13:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Usuarios](
	[IdUsuario] [int] IDENTITY(1,1) NOT NULL,
	[Usuario] [varchar](50) NULL,
	[Clave] [varchar](50) NULL,
	[Tipo_Usuario] [varchar](50) NULL,
 CONSTRAINT [Id__Usuarios] PRIMARY KEY CLUSTERED 
(
	[IdUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Familias] ON 

INSERT [dbo].[Familias] ([IdFamilia], [Nombre], [Descripcion]) VALUES (1, N'Tecnologia', N'Articulos 
		   Informaticos, Computadoras')
INSERT [dbo].[Familias] ([IdFamilia], [Nombre], [Descripcion]) VALUES (2, N'Electrodomesticos', N'Articulos 
		   para electronicos para el hogar')
INSERT [dbo].[Familias] ([IdFamilia], [Nombre], [Descripcion]) VALUES (3, N'Casa y Jardin', N'Articulos 
		   para interior y exterior')
INSERT [dbo].[Familias] ([IdFamilia], [Nombre], [Descripcion]) VALUES (4, N'Salud y Belleza', N'Articulos 
		   para cuidado personal')
INSERT [dbo].[Familias] ([IdFamilia], [Nombre], [Descripcion]) VALUES (5, N'Bebes y Niños', N'Articulos 
		   exclusivos para niños y bebes')
INSERT [dbo].[Familias] ([IdFamilia], [Nombre], [Descripcion]) VALUES (6, N'Otros                                             ', N'Sin categoria                                     ')
SET IDENTITY_INSERT [dbo].[Familias] OFF
SET IDENTITY_INSERT [dbo].[Productos] ON 

INSERT [dbo].[Productos] ([Codigo], [Nombre], [Descripcion], [IdProveedor], [IdRubro], [Marca], [Precio]) VALUES (1, N'notebook                                          ', N'Notebook 234                                      ', 1, 1, N'Lenovo                                            ', CAST(1900.0000 AS Decimal(10, 4)))
INSERT [dbo].[Productos] ([Codigo], [Nombre], [Descripcion], [IdProveedor], [IdRubro], [Marca], [Precio]) VALUES (2, N'Afeitadora                                        ', N'Afeitadora con bateria                            ', 5, 5, N'Phillip                                           ', CAST(2345.0000 AS Decimal(10, 4)))
INSERT [dbo].[Productos] ([Codigo], [Nombre], [Descripcion], [IdProveedor], [IdRubro], [Marca], [Precio]) VALUES (3, N'Carrito                                           ', N'Carrito 3 ruedas                                  ', 6, 22, N'Nose                                              ', CAST(3500.0000 AS Decimal(10, 4)))
INSERT [dbo].[Productos] ([Codigo], [Nombre], [Descripcion], [IdProveedor], [IdRubro], [Marca], [Precio]) VALUES (9, N'taniua                                            ', N'jsdahd                                            ', 2, 7, N'xsscsd                                            ', CAST(1223.0000 AS Decimal(10, 4)))
INSERT [dbo].[Productos] ([Codigo], [Nombre], [Descripcion], [IdProveedor], [IdRubro], [Marca], [Precio]) VALUES (10, N'hsadf                                             ', N'gvsdgc                                            ', 2, 7, N'hjxd                                              ', CAST(1232.0000 AS Decimal(10, 4)))
INSERT [dbo].[Productos] ([Codigo], [Nombre], [Descripcion], [IdProveedor], [IdRubro], [Marca], [Precio]) VALUES (11, N'hola                                              ', N'bbggf                                             ', 2, 18, N'dfjhdsg                                           ', CAST(132434.0000 AS Decimal(10, 4)))
INSERT [dbo].[Productos] ([Codigo], [Nombre], [Descripcion], [IdProveedor], [IdRubro], [Marca], [Precio]) VALUES (12, N'gabz                                              ', N'dfsf                                              ', 2, 13, N'fvcszdvf                                          ', CAST(233.0000 AS Decimal(10, 4)))
INSERT [dbo].[Productos] ([Codigo], [Nombre], [Descripcion], [IdProveedor], [IdRubro], [Marca], [Precio]) VALUES (13, N'gabz                                              ', N'dfsf                                              ', 2, 13, N'fvcszdvf                                          ', CAST(233.0000 AS Decimal(10, 4)))
INSERT [dbo].[Productos] ([Codigo], [Nombre], [Descripcion], [IdProveedor], [IdRubro], [Marca], [Precio]) VALUES (14, N'hola                                              ', N'dsa                                               ', 4, 8, N'dddc                                              ', CAST(111.0000 AS Decimal(10, 4)))
INSERT [dbo].[Productos] ([Codigo], [Nombre], [Descripcion], [IdProveedor], [IdRubro], [Marca], [Precio]) VALUES (15, N'aa                                                ', N'aa                                                ', 3, 13, N'aa                                                ', CAST(1234.0000 AS Decimal(10, 4)))
INSERT [dbo].[Productos] ([Codigo], [Nombre], [Descripcion], [IdProveedor], [IdRubro], [Marca], [Precio]) VALUES (16, N'assa                                              ', N'asa                                               ', 3, 12, N'sass                                              ', CAST(12.0000 AS Decimal(10, 4)))
INSERT [dbo].[Productos] ([Codigo], [Nombre], [Descripcion], [IdProveedor], [IdRubro], [Marca], [Precio]) VALUES (17, N'asd                                               ', N'afs                                               ', 1, 1, N'fsa                                               ', CAST(12.0000 AS Decimal(10, 4)))
INSERT [dbo].[Productos] ([Codigo], [Nombre], [Descripcion], [IdProveedor], [IdRubro], [Marca], [Precio]) VALUES (18, N'zx                                                ', N'dsfdf                                             ', 1, 1, N'dsf                                               ', CAST(12.0000 AS Decimal(10, 4)))
INSERT [dbo].[Productos] ([Codigo], [Nombre], [Descripcion], [IdProveedor], [IdRubro], [Marca], [Precio]) VALUES (19, N'tt                                                ', N'tt                                                ', 5, 21, N'tt                                                ', CAST(123.0000 AS Decimal(10, 4)))
INSERT [dbo].[Productos] ([Codigo], [Nombre], [Descripcion], [IdProveedor], [IdRubro], [Marca], [Precio]) VALUES (20, N'ds                                                ', N'as                                                ', 5, 22, N'sasw                                              ', CAST(44.0000 AS Decimal(10, 4)))
SET IDENTITY_INSERT [dbo].[Productos] OFF
SET IDENTITY_INSERT [dbo].[Proveedores] ON 

INSERT [dbo].[Proveedores] ([IdProv], [Nombre], [Direccion]) VALUES (1, N'Noblex', N'Av Mayo 12')
INSERT [dbo].[Proveedores] ([IdProv], [Nombre], [Direccion]) VALUES (2, N'LG', N'Escobar 33')
INSERT [dbo].[Proveedores] ([IdProv], [Nombre], [Direccion]) VALUES (3, N'Lenovo', N'Alem 2090')
INSERT [dbo].[Proveedores] ([IdProv], [Nombre], [Direccion]) VALUES (4, N'Sony', N'Cordoba 234')
INSERT [dbo].[Proveedores] ([IdProv], [Nombre], [Direccion]) VALUES (5, N'Phillip', N'Las Heras 678')
INSERT [dbo].[Proveedores] ([IdProv], [Nombre], [Direccion]) VALUES (6, N'Mimo', N'Costa 546')
SET IDENTITY_INSERT [dbo].[Proveedores] OFF
SET IDENTITY_INSERT [dbo].[Rubros] ON 

INSERT [dbo].[Rubros] ([IdRubro], [Nombre], [Descripcion], [IdFlia]) VALUES (1, N'Infomatica computacion', N'Computadoras, Tablet, Pendrive', 1)
INSERT [dbo].[Rubros] ([IdRubro], [Nombre], [Descripcion], [IdFlia]) VALUES (2, N'Televisores', N'Smart TV, LEDs, Monitores', 1)
INSERT [dbo].[Rubros] ([IdRubro], [Nombre], [Descripcion], [IdFlia]) VALUES (3, N'Fotografia/Video', N'Camaras, Videograbadora, GoPro', 1)
INSERT [dbo].[Rubros] ([IdRubro], [Nombre], [Descripcion], [IdFlia]) VALUES (4, N'Accesorios', N'Lentes de camara, Auriculares', 1)
INSERT [dbo].[Rubros] ([IdRubro], [Nombre], [Descripcion], [IdFlia]) VALUES (5, N'Cuidado Personal', N'Afeitadora, Depiladora', 1)
INSERT [dbo].[Rubros] ([IdRubro], [Nombre], [Descripcion], [IdFlia]) VALUES (6, N'Ventilacion/Calefaccion', N'Aires acoondicionados, Ventiladores, Estufas', 2)
INSERT [dbo].[Rubros] ([IdRubro], [Nombre], [Descripcion], [IdFlia]) VALUES (7, N'Hogar/Limpieza', N'Aspiradoras, Enceradora', 2)
INSERT [dbo].[Rubros] ([IdRubro], [Nombre], [Descripcion], [IdFlia]) VALUES (8, N'Heladeras/Freezer', N'Heladera, Mini Bar, Freezer', 2)
INSERT [dbo].[Rubros] ([IdRubro], [Nombre], [Descripcion], [IdFlia]) VALUES (9, N'Pequeños Electrdomesticos', N'Tostadoras, Mixer, Licuadora', 2)
INSERT [dbo].[Rubros] ([IdRubro], [Nombre], [Descripcion], [IdFlia]) VALUES (10, N'Muebles', N'Armarios, Cajoneras', 3)
INSERT [dbo].[Rubros] ([IdRubro], [Nombre], [Descripcion], [IdFlia]) VALUES (11, N'Dormitorio', N'Camas, Sabana, Acolchados', 3)
INSERT [dbo].[Rubros] ([IdRubro], [Nombre], [Descripcion], [IdFlia]) VALUES (12, N'Cocina', N'Cocinas, Anafres, Microondas', 3)
INSERT [dbo].[Rubros] ([IdRubro], [Nombre], [Descripcion], [IdFlia]) VALUES (13, N'Living/Comedor', N'Mesas Ratona, Sillones', 3)
INSERT [dbo].[Rubros] ([IdRubro], [Nombre], [Descripcion], [IdFlia]) VALUES (14, N'Baño', N'Griferias, Lavatorios', 3)
INSERT [dbo].[Rubros] ([IdRubro], [Nombre], [Descripcion], [IdFlia]) VALUES (15, N'Herramientas', N'Taladro, Moladora', 3)
INSERT [dbo].[Rubros] ([IdRubro], [Nombre], [Descripcion], [IdFlia]) VALUES (16, N'Cuidado Capilar', N'Secador de pelo, Planchitas', 4)
INSERT [dbo].[Rubros] ([IdRubro], [Nombre], [Descripcion], [IdFlia]) VALUES (17, N'Moda', N'Ropa para damas, Ropa para Cabelleros', 4)
INSERT [dbo].[Rubros] ([IdRubro], [Nombre], [Descripcion], [IdFlia]) VALUES (18, N'Cuidado y Bienestar', N'Masajeador', 4)
INSERT [dbo].[Rubros] ([IdRubro], [Nombre], [Descripcion], [IdFlia]) VALUES (19, N'Cosmeticos', N'Maquillajes', 4)
INSERT [dbo].[Rubros] ([IdRubro], [Nombre], [Descripcion], [IdFlia]) VALUES (20, N'Juguetes', N'Juegos didacticos, Juegos de estrategia', 5)
INSERT [dbo].[Rubros] ([IdRubro], [Nombre], [Descripcion], [IdFlia]) VALUES (21, N'Butacas', N'Silla para autos', 5)
INSERT [dbo].[Rubros] ([IdRubro], [Nombre], [Descripcion], [IdFlia]) VALUES (22, N'Coches', N'Paraguitas, Coches de 3 ruedas,', 5)
SET IDENTITY_INSERT [dbo].[Rubros] OFF
SET IDENTITY_INSERT [dbo].[Usuarios] ON 

INSERT [dbo].[Usuarios] ([IdUsuario], [Usuario], [Clave], [Tipo_Usuario]) VALUES (1, N'tania', N'1234', N'1')
INSERT [dbo].[Usuarios] ([IdUsuario], [Usuario], [Clave], [Tipo_Usuario]) VALUES (2, N'matias', N'1234', N'1')
INSERT [dbo].[Usuarios] ([IdUsuario], [Usuario], [Clave], [Tipo_Usuario]) VALUES (3, N'gaby', N'12345', N'1')
SET IDENTITY_INSERT [dbo].[Usuarios] OFF
/****** Object:  Index [IX_Familias]    Script Date: 22/05/2017 0:13:41 ******/
ALTER TABLE [dbo].[Familias] ADD  CONSTRAINT [IX_Familias] UNIQUE NONCLUSTERED 
(
	[IdFamilia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Productos]    Script Date: 22/05/2017 0:13:41 ******/
ALTER TABLE [dbo].[Productos] ADD  CONSTRAINT [IX_Productos] UNIQUE NONCLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Rubros]    Script Date: 22/05/2017 0:13:41 ******/
ALTER TABLE [dbo].[Rubros] ADD  CONSTRAINT [IX_Rubros] UNIQUE NONCLUSTERED 
(
	[IdRubro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Usuarios]    Script Date: 22/05/2017 0:13:41 ******/
ALTER TABLE [dbo].[Usuarios] ADD  CONSTRAINT [IX_Usuarios] UNIQUE NONCLUSTERED 
(
	[IdUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Productos]  WITH CHECK ADD  CONSTRAINT [FK_Productos_Proveedores] FOREIGN KEY([IdProveedor])
REFERENCES [dbo].[Proveedores] ([IdProv])
GO
ALTER TABLE [dbo].[Productos] CHECK CONSTRAINT [FK_Productos_Proveedores]
GO
ALTER TABLE [dbo].[Productos]  WITH CHECK ADD  CONSTRAINT [FK_Productos_Rubros] FOREIGN KEY([IdRubro])
REFERENCES [dbo].[Rubros] ([IdRubro])
GO
ALTER TABLE [dbo].[Productos] CHECK CONSTRAINT [FK_Productos_Rubros]
GO
ALTER TABLE [dbo].[Rubros]  WITH CHECK ADD  CONSTRAINT [FK_Rubros_Familias] FOREIGN KEY([IdFlia])
REFERENCES [dbo].[Familias] ([IdFamilia])
GO
ALTER TABLE [dbo].[Rubros] CHECK CONSTRAINT [FK_Rubros_Familias]
GO
ALTER TABLE [dbo].[Rubros]  WITH CHECK ADD  CONSTRAINT [FK_Rubros_Familias1] FOREIGN KEY([IdFlia])
REFERENCES [dbo].[Familias] ([IdFamilia])
GO
ALTER TABLE [dbo].[Rubros] CHECK CONSTRAINT [FK_Rubros_Familias1]
GO
/****** Object:  StoredProcedure [dbo].[SP_ALTA_BAJA_MODIFICACION_PRODUCTOS]    Script Date: 22/05/2017 0:13:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[SP_ALTA_BAJA_MODIFICACION_PRODUCTOS]
@Codigo int,
@Nombre nchar(50),
@Descripcion nchar(50),
@IdProveedor int,
@IdRubro int,
@Marca nchar(50),
@Precio nchar(50),
@Consulta int 

AS

IF @Consulta = 1
begin

Insert into Productos (Nombre,Descripcion,IdProveedor,IdRubro,Marca,Precio)			
Values (@Nombre,@Descripcion,@IdProveedor,@IdRubro,@Marca,@Precio)
end

IF @Consulta = 2
begin

update Productos set Nombre = @Nombre ,Descripcion = @Descripcion
					,IdProveedor=@IdProveedor ,IdRubro = @IdRubro,
					Marca= @Marca, Precio= @Precio
end

IF @Consulta = 3
begin 
delete Productos where Codigo = @Codigo
end 


GO
/****** Object:  StoredProcedure [dbo].[SP_LISTAR_FAMILIAS]    Script Date: 22/05/2017 0:13:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[SP_LISTAR_FAMILIAS]
AS
SELECT IdFamilia,Nombre FROM Familias
GO
/****** Object:  StoredProcedure [dbo].[SP_LISTAR_PRODUCTOS]    Script Date: 22/05/2017 0:13:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[SP_LISTAR_PRODUCTOS]

AS
SELECT p.Codigo,p.Descripcion,p.Marca,p.Nombre,p.Precio,p.IdProveedor,p.IdRubro,pr.Nombre Proveedor,r.Nombre Rubro FROM Productos p JOIN Proveedores pr ON p.IdProveedor=pr.IdProv JOIN Rubros r ON p.IdRubro=r.IdRubro



GO
/****** Object:  StoredProcedure [dbo].[SP_LISTAR_PROVEEDORES]    Script Date: 22/05/2017 0:13:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[SP_LISTAR_PROVEEDORES]
AS

SELECT IdProv,Nombre FROM Proveedores

GO
/****** Object:  StoredProcedure [dbo].[SP_LISTAR_RUBROS]    Script Date: 22/05/2017 0:13:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[SP_LISTAR_RUBROS]
@idFlia int
AS
SELECT IdRubro , Nombre FROM Rubros WHERE IdFlia = @idFlia
GO
/****** Object:  StoredProcedure [dbo].[SP_MOSTRAR_CODIGO_PRODUCTO]    Script Date: 22/05/2017 0:13:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[SP_MOSTRAR_CODIGO_PRODUCTO]

as 
begin
Select MAX(Codigo) FROM Productos
end

GO
/****** Object:  StoredProcedure [dbo].[SP_PRODUCTOS_CONSULTAR_TODOS]    Script Date: 22/05/2017 0:13:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[SP_PRODUCTOS_CONSULTAR_TODOS]
	@RUBRO varchar(50)=null, 
	@PROVEEDOR varchar(50)=null, 
	@FAMILIA varchar(50)=null, 
	@FILTRO varchar(150) =null
AS
	SELECT *

	FROM Productos P LEFT JOIN Rubros R ON (p.IdRubro=r.IdRubro)
	left join Familias F on ( F.IdFamilia = R.IdFlia)
	left join Proveedores PR on ( PR.IdProv = P.IdProveedor)

	WHERE R.IdRubro =ISNULL(@RUBRO, R.IdRubro)
	and (( P.Codigo like  '%' + ISNULL(@FILTRO, P.Codigo) + '%')
			or ( P.Nombre like  '%' + ISNULL(@FILTRO, P.Nombre) + '%')
			or ( P.Descripcion like  '%' + ISNULL(@FILTRO, P.Descripcion) + '%')
			or ( F.Descripcion like  '%' + ISNULL(@FILTRO, F.Descripcion) + '%')	
			or ( R.Descripcion like  '%' + ISNULL(@FILTRO, R.Descripcion) + '%')	
			or ( PR.Nombre like  '%' + ISNULL(@FILTRO, PR.Nombre) + '%')		)
GO
/****** Object:  StoredProcedure [dbo].[SP_VERIFICAR_USUARIO]    Script Date: 22/05/2017 0:13:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[SP_VERIFICAR_USUARIO]
@Usuario varchar(50),
@Clave varchar(50)

AS  

BEGIN  
   SELECT IdUsuario  
   FROM Usuarios WHERE @Usuario = Usuario and @Clave = Clave
END 
GO
