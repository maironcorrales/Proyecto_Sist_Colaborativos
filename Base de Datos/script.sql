USE [master]
GO
/****** Object:  Database [Cinema]    Script Date: 10/11/2016 14:55:31 ******/
CREATE DATABASE [Cinema] ON  PRIMARY 
( NAME = N'Cinema', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MTI02\MSSQL\DATA\Cinema.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Cinema_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MTI02\MSSQL\DATA\Cinema_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Cinema] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Cinema].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Cinema] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [Cinema] SET ANSI_NULLS OFF
GO
ALTER DATABASE [Cinema] SET ANSI_PADDING OFF
GO
ALTER DATABASE [Cinema] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [Cinema] SET ARITHABORT OFF
GO
ALTER DATABASE [Cinema] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [Cinema] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [Cinema] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [Cinema] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [Cinema] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [Cinema] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [Cinema] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [Cinema] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [Cinema] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [Cinema] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [Cinema] SET  DISABLE_BROKER
GO
ALTER DATABASE [Cinema] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [Cinema] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [Cinema] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [Cinema] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [Cinema] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [Cinema] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [Cinema] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [Cinema] SET  READ_WRITE
GO
ALTER DATABASE [Cinema] SET RECOVERY FULL
GO
ALTER DATABASE [Cinema] SET  MULTI_USER
GO
ALTER DATABASE [Cinema] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [Cinema] SET DB_CHAINING OFF
GO
USE [Cinema]
GO
/****** Object:  Table [dbo].[T_TipoUsuario]    Script Date: 10/11/2016 14:55:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_TipoUsuario](
	[Tn_IdTipoUsuario] [int] IDENTITY(1,1) NOT NULL,
	[Tt_DescripcionTipoUsuario] [varchar](500) NOT NULL,
 CONSTRAINT [PK_T_TipoUsuario] PRIMARY KEY CLUSTERED 
(
	[Tn_IdTipoUsuario] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_TipoEstadoReservacion]    Script Date: 10/11/2016 14:55:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_TipoEstadoReservacion](
	[Tn_IdEstadoReserva] [int] IDENTITY(1,1) NOT NULL,
	[Tt_DescripcionEstadoReserva] [varchar](50) NOT NULL,
 CONSTRAINT [PK_T_TipoEstadoReservacion] PRIMARY KEY CLUSTERED 
(
	[Tn_IdEstadoReserva] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_Parametros]    Script Date: 10/11/2016 14:55:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_Parametros](
	[Tn_IdParametro] [int] IDENTITY(1,1) NOT NULL,
	[Tt_DescripcionParametro] [varchar](500) NOT NULL,
	[Tn_Valor] [int] NOT NULL,
 CONSTRAINT [PK_T_Parametros] PRIMARY KEY CLUSTERED 
(
	[Tn_IdParametro] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_Factura]    Script Date: 10/11/2016 14:55:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_Factura](
	[Tn_IdFactura] [int] IDENTITY(1,1) NOT NULL,
	[Tt_DescripcionFactura] [varbinary](5000) NULL,
	[Tf_FechaFactura] [datetime] NULL,
 CONSTRAINT [PK_T_Factura] PRIMARY KEY CLUSTERED 
(
	[Tn_IdFactura] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_SalaTipo]    Script Date: 10/11/2016 14:55:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_SalaTipo](
	[Tn_IdTipoSala] [int] NOT NULL,
	[Tt_Descripcion] [varchar](500) NULL,
 CONSTRAINT [PK_T_SalaTipo] PRIMARY KEY CLUSTERED 
(
	[Tn_IdTipoSala] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TGenero]    Script Date: 10/11/2016 14:55:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TGenero](
	[Tn_IdGenero] [int] NOT NULL,
	[Tt_NombreGenero] [varchar](1000) NOT NULL,
 CONSTRAINT [PK_TGenero] PRIMARY KEY CLUSTERED 
(
	[Tn_IdGenero] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TPelicula]    Script Date: 10/11/2016 14:55:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TPelicula](
	[Tn_IdPelicula] [int] IDENTITY(1,1) NOT NULL,
	[Tt_NombrePelicula] [varchar](500) NOT NULL,
	[Tt_NombrePeliculaAdaptado] [varchar](500) NOT NULL,
	[Tt_Resumen] [varchar](8000) NOT NULL,
	[Tn_DuracionMinutos] [decimal](18, 2) NOT NULL,
	[Tn_IdGenero] [int] NOT NULL,
 CONSTRAINT [PK_TPelicula] PRIMARY KEY CLUSTERED 
(
	[Tn_IdPelicula] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_Usuario]    Script Date: 10/11/2016 14:55:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_Usuario](
	[Tn_IdUsuario] [int] IDENTITY(1,1) NOT NULL,
	[Tt_NombreUsuario] [varchar](5000) NOT NULL,
	[Tt_CorreoElectronico] [varbinary](500) NOT NULL,
	[Tt_Contrasenna] [varchar](500) NOT NULL,
	[Tt_Telefono] [varchar](50) NULL,
	[Tf_FechaNacimiento] [date] NOT NULL,
	[Tn_IdTipoUsuario] [int] NULL,
	[Tf_FechaCreacion] [datetime] NULL,
 CONSTRAINT [PK_T_Usuario] PRIMARY KEY CLUSTERED 
(
	[Tn_IdUsuario] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_Sala]    Script Date: 10/11/2016 14:55:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_Sala](
	[Tn_IdSala] [int] IDENTITY(1,1) NOT NULL,
	[Tt_NombreSala] [varchar](120) NOT NULL,
	[Tn_NumeroAsientos] [int] NOT NULL,
	[Tn_IdtipoSala] [int] NULL,
 CONSTRAINT [PK_T_Sala] PRIMARY KEY CLUSTERED 
(
	[Tn_IdSala] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_Reservacion]    Script Date: 10/11/2016 14:55:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_Reservacion](
	[Tn_IdReservacion] [int] IDENTITY(1,1) NOT NULL,
	[Tn_IdProyeccion] [int] NOT NULL,
	[Tn_IdUsuario] [int] NOT NULL,
	[Tn_IdEstadoReserva] [int] NOT NULL,
	[Tn_IdFactura] [int] NULL,
 CONSTRAINT [PK_T_Reservacion] PRIMARY KEY CLUSTERED 
(
	[Tn_IdReservacion] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_Proyeccion]    Script Date: 10/11/2016 14:55:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_Proyeccion](
	[Tn_IdProyeccion] [int] IDENTITY(1,1) NOT NULL,
	[Tn_IdPelicula] [int] NOT NULL,
	[Tn_IdSala] [int] NOT NULL,
	[Tn_FechaHora] [datetime] NOT NULL,
 CONSTRAINT [PK_T_Proyeccion] PRIMARY KEY CLUSTERED 
(
	[Tn_IdProyeccion] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_Silla]    Script Date: 10/11/2016 14:55:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_Silla](
	[Tn_IdSilla] [int] IDENTITY(1,1) NOT NULL,
	[Tn_Fila] [int] NOT NULL,
	[Tn_Numero] [int] NOT NULL,
	[Tn_IdSala] [int] NOT NULL,
 CONSTRAINT [PK_T_Silla] PRIMARY KEY CLUSTERED 
(
	[Tn_IdSilla] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_SillaReserva]    Script Date: 10/11/2016 14:55:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_SillaReserva](
	[Tn_IdSillaReserva] [int] IDENTITY(1,1) NOT NULL,
	[Tn_IdSilla] [int] NOT NULL,
	[Tn_IdReservacion] [int] NOT NULL,
	[Tn_IdProyeccion] [int] NOT NULL,
 CONSTRAINT [PK_T_SillaReserva] PRIMARY KEY CLUSTERED 
(
	[Tn_IdSillaReserva] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  ForeignKey [FK_TPelicula_TGenero]    Script Date: 10/11/2016 14:55:32 ******/
ALTER TABLE [dbo].[TPelicula]  WITH CHECK ADD  CONSTRAINT [FK_TPelicula_TGenero] FOREIGN KEY([Tn_IdGenero])
REFERENCES [dbo].[TGenero] ([Tn_IdGenero])
GO
ALTER TABLE [dbo].[TPelicula] CHECK CONSTRAINT [FK_TPelicula_TGenero]
GO
/****** Object:  ForeignKey [FK_T_Usuario_T_TipoUsuario]    Script Date: 10/11/2016 14:55:32 ******/
ALTER TABLE [dbo].[T_Usuario]  WITH CHECK ADD  CONSTRAINT [FK_T_Usuario_T_TipoUsuario] FOREIGN KEY([Tn_IdTipoUsuario])
REFERENCES [dbo].[T_TipoUsuario] ([Tn_IdTipoUsuario])
GO
ALTER TABLE [dbo].[T_Usuario] CHECK CONSTRAINT [FK_T_Usuario_T_TipoUsuario]
GO
/****** Object:  ForeignKey [FK_T_Sala_T_SalaTipo]    Script Date: 10/11/2016 14:55:32 ******/
ALTER TABLE [dbo].[T_Sala]  WITH CHECK ADD  CONSTRAINT [FK_T_Sala_T_SalaTipo] FOREIGN KEY([Tn_IdtipoSala])
REFERENCES [dbo].[T_SalaTipo] ([Tn_IdTipoSala])
GO
ALTER TABLE [dbo].[T_Sala] CHECK CONSTRAINT [FK_T_Sala_T_SalaTipo]
GO
/****** Object:  ForeignKey [FK_T_Reservacion_T_Factura]    Script Date: 10/11/2016 14:55:32 ******/
ALTER TABLE [dbo].[T_Reservacion]  WITH CHECK ADD  CONSTRAINT [FK_T_Reservacion_T_Factura] FOREIGN KEY([Tn_IdFactura])
REFERENCES [dbo].[T_Factura] ([Tn_IdFactura])
GO
ALTER TABLE [dbo].[T_Reservacion] CHECK CONSTRAINT [FK_T_Reservacion_T_Factura]
GO
/****** Object:  ForeignKey [FK_T_Reservacion_T_TipoEstadoReservacion]    Script Date: 10/11/2016 14:55:32 ******/
ALTER TABLE [dbo].[T_Reservacion]  WITH CHECK ADD  CONSTRAINT [FK_T_Reservacion_T_TipoEstadoReservacion] FOREIGN KEY([Tn_IdEstadoReserva])
REFERENCES [dbo].[T_TipoEstadoReservacion] ([Tn_IdEstadoReserva])
GO
ALTER TABLE [dbo].[T_Reservacion] CHECK CONSTRAINT [FK_T_Reservacion_T_TipoEstadoReservacion]
GO
/****** Object:  ForeignKey [FK_T_Reservacion_T_Usuario]    Script Date: 10/11/2016 14:55:32 ******/
ALTER TABLE [dbo].[T_Reservacion]  WITH CHECK ADD  CONSTRAINT [FK_T_Reservacion_T_Usuario] FOREIGN KEY([Tn_IdUsuario])
REFERENCES [dbo].[T_Usuario] ([Tn_IdUsuario])
GO
ALTER TABLE [dbo].[T_Reservacion] CHECK CONSTRAINT [FK_T_Reservacion_T_Usuario]
GO
/****** Object:  ForeignKey [FK_T_Proyeccion_T_Sala]    Script Date: 10/11/2016 14:55:32 ******/
ALTER TABLE [dbo].[T_Proyeccion]  WITH CHECK ADD  CONSTRAINT [FK_T_Proyeccion_T_Sala] FOREIGN KEY([Tn_IdSala])
REFERENCES [dbo].[T_Sala] ([Tn_IdSala])
GO
ALTER TABLE [dbo].[T_Proyeccion] CHECK CONSTRAINT [FK_T_Proyeccion_T_Sala]
GO
/****** Object:  ForeignKey [FK_T_Proyeccion_TPelicula]    Script Date: 10/11/2016 14:55:32 ******/
ALTER TABLE [dbo].[T_Proyeccion]  WITH CHECK ADD  CONSTRAINT [FK_T_Proyeccion_TPelicula] FOREIGN KEY([Tn_IdPelicula])
REFERENCES [dbo].[TPelicula] ([Tn_IdPelicula])
GO
ALTER TABLE [dbo].[T_Proyeccion] CHECK CONSTRAINT [FK_T_Proyeccion_TPelicula]
GO
/****** Object:  ForeignKey [FK_T_Silla_T_Sala]    Script Date: 10/11/2016 14:55:32 ******/
ALTER TABLE [dbo].[T_Silla]  WITH CHECK ADD  CONSTRAINT [FK_T_Silla_T_Sala] FOREIGN KEY([Tn_IdSala])
REFERENCES [dbo].[T_Sala] ([Tn_IdSala])
GO
ALTER TABLE [dbo].[T_Silla] CHECK CONSTRAINT [FK_T_Silla_T_Sala]
GO
/****** Object:  ForeignKey [FK_T_SillaReserva_T_Proyeccion]    Script Date: 10/11/2016 14:55:32 ******/
ALTER TABLE [dbo].[T_SillaReserva]  WITH CHECK ADD  CONSTRAINT [FK_T_SillaReserva_T_Proyeccion] FOREIGN KEY([Tn_IdProyeccion])
REFERENCES [dbo].[T_Proyeccion] ([Tn_IdProyeccion])
GO
ALTER TABLE [dbo].[T_SillaReserva] CHECK CONSTRAINT [FK_T_SillaReserva_T_Proyeccion]
GO
/****** Object:  ForeignKey [FK_T_SillaReserva_T_Reservacion]    Script Date: 10/11/2016 14:55:32 ******/
ALTER TABLE [dbo].[T_SillaReserva]  WITH CHECK ADD  CONSTRAINT [FK_T_SillaReserva_T_Reservacion] FOREIGN KEY([Tn_IdReservacion])
REFERENCES [dbo].[T_Reservacion] ([Tn_IdReservacion])
GO
ALTER TABLE [dbo].[T_SillaReserva] CHECK CONSTRAINT [FK_T_SillaReserva_T_Reservacion]
GO
/****** Object:  ForeignKey [FK_T_SillaReserva_T_Silla]    Script Date: 10/11/2016 14:55:32 ******/
ALTER TABLE [dbo].[T_SillaReserva]  WITH CHECK ADD  CONSTRAINT [FK_T_SillaReserva_T_Silla] FOREIGN KEY([Tn_IdSilla])
REFERENCES [dbo].[T_Silla] ([Tn_IdSilla])
GO
ALTER TABLE [dbo].[T_SillaReserva] CHECK CONSTRAINT [FK_T_SillaReserva_T_Silla]
GO
