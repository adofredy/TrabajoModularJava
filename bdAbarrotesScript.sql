USE [master]
GO
/****** Object:  Database [bdAbarrotes]    Script Date: 5/09/2022 10:06:57 ******/
CREATE DATABASE [bdAbarrotes]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'bdAbarrotes', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\bdAbarrotes.mdf' , SIZE = 4288KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'bdAbarrotes_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\bdAbarrotes_log.ldf' , SIZE = 1072KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [bdAbarrotes] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [bdAbarrotes].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [bdAbarrotes] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [bdAbarrotes] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [bdAbarrotes] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [bdAbarrotes] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [bdAbarrotes] SET ARITHABORT OFF 
GO
ALTER DATABASE [bdAbarrotes] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [bdAbarrotes] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [bdAbarrotes] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [bdAbarrotes] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [bdAbarrotes] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [bdAbarrotes] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [bdAbarrotes] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [bdAbarrotes] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [bdAbarrotes] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [bdAbarrotes] SET  ENABLE_BROKER 
GO
ALTER DATABASE [bdAbarrotes] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [bdAbarrotes] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [bdAbarrotes] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [bdAbarrotes] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [bdAbarrotes] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [bdAbarrotes] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [bdAbarrotes] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [bdAbarrotes] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [bdAbarrotes] SET  MULTI_USER 
GO
ALTER DATABASE [bdAbarrotes] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [bdAbarrotes] SET DB_CHAINING OFF 
GO
ALTER DATABASE [bdAbarrotes] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [bdAbarrotes] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [bdAbarrotes] SET DELAYED_DURABILITY = DISABLED 
GO
USE [bdAbarrotes]
GO
/****** Object:  Table [dbo].[productos]    Script Date: 5/09/2022 10:06:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[productos](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[codigo] [varchar](12) NULL,
	[nombre] [varchar](50) NULL,
	[precio_compra] [float] NULL,
	[precio_venta] [float] NULL,
	[cantidad_bodega] [int] NULL,
	[minima_requerida] [int] NULL,
	[maxima_permitida] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[usuarios]    Script Date: 5/09/2022 10:06:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[usuarios](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[usuario] [varchar](30) NULL,
	[clave] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[productos] ON 

INSERT [dbo].[productos] ([id], [codigo], [nombre], [precio_compra], [precio_venta], [cantidad_bodega], [minima_requerida], [maxima_permitida]) VALUES (1, N'Pru3', N'huevos', 501, 1001, 5, 1, 100)
INSERT [dbo].[productos] ([id], [codigo], [nombre], [precio_compra], [precio_venta], [cantidad_bodega], [minima_requerida], [maxima_permitida]) VALUES (3, N'PI1234', N'GR654', 20, 30, 10, 20, 200)
INSERT [dbo].[productos] ([id], [codigo], [nombre], [precio_compra], [precio_venta], [cantidad_bodega], [minima_requerida], [maxima_permitida]) VALUES (4, N'DF1234', N'patatas', 4.5, 6, 123, 100, 2000)
INSERT [dbo].[productos] ([id], [codigo], [nombre], [precio_compra], [precio_venta], [cantidad_bodega], [minima_requerida], [maxima_permitida]) VALUES (5, N'X123', N'zanahorias', 201, 109, 5, 2, 200)
SET IDENTITY_INSERT [dbo].[productos] OFF
SET IDENTITY_INSERT [dbo].[usuarios] ON 

INSERT [dbo].[usuarios] ([id], [usuario], [clave]) VALUES (1, N'soporte', N'123')
INSERT [dbo].[usuarios] ([id], [usuario], [clave]) VALUES (2, N'admin', N'admin')
SET IDENTITY_INSERT [dbo].[usuarios] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__producto__40F9A2068CA4480D]    Script Date: 5/09/2022 10:06:57 ******/
ALTER TABLE [dbo].[productos] ADD UNIQUE NONCLUSTERED 
(
	[codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__usuarios__71DCA3DBEF67065C]    Script Date: 5/09/2022 10:06:57 ******/
ALTER TABLE [dbo].[usuarios] ADD UNIQUE NONCLUSTERED 
(
	[clave] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__usuarios__9AFF8FC6F50B50D3]    Script Date: 5/09/2022 10:06:57 ******/
ALTER TABLE [dbo].[usuarios] ADD UNIQUE NONCLUSTERED 
(
	[usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [bdAbarrotes] SET  READ_WRITE 
GO
