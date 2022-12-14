USE [master]
GO
/****** Object:  Database [EShop]    Script Date: 18-10-2022 17:58:41 ******/
CREATE DATABASE [EShop]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'EShop', FILENAME = N'C:\Users\Administrator\EShop.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'EShop_log', FILENAME = N'C:\Users\Administrator\EShop_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [EShop] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [EShop].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [EShop] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [EShop] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [EShop] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [EShop] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [EShop] SET ARITHABORT OFF 
GO
ALTER DATABASE [EShop] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [EShop] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [EShop] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [EShop] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [EShop] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [EShop] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [EShop] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [EShop] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [EShop] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [EShop] SET  DISABLE_BROKER 
GO
ALTER DATABASE [EShop] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [EShop] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [EShop] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [EShop] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [EShop] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [EShop] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [EShop] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [EShop] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [EShop] SET  MULTI_USER 
GO
ALTER DATABASE [EShop] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [EShop] SET DB_CHAINING OFF 
GO
ALTER DATABASE [EShop] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [EShop] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [EShop] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [EShop] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [EShop] SET QUERY_STORE = OFF
GO
USE [EShop]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 18-10-2022 17:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Id] [int] IDENTITY(1001,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Cost] [money] NULL,
	[CategoryID] [smallint] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[VW_PRODUCT]    Script Date: 18-10-2022 17:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VW_PRODUCT] AS
(Select Name, Cost from Product)
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 18-10-2022 17:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[Email] [nvarchar](150) NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 18-10-2022 17:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[OrderId] [bigint] IDENTITY(55555,1) NOT NULL,
	[Status] [nchar](50) NULL,
	[OrderDate] [datetime] NULL,
	[ProductId] [int] NULL,
	[CustomerId] [int] NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductCategory]    Script Date: 18-10-2022 17:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductCategory](
	[Id] [smallint] IDENTITY(10,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_ProductCategory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Customer] ON 

INSERT [dbo].[Customer] ([Id], [Name], [Email]) VALUES (1, N'Eena', N'eena@gmail.com')
INSERT [dbo].[Customer] ([Id], [Name], [Email]) VALUES (2, N'Meena', N'meena@gmail.com')
INSERT [dbo].[Customer] ([Id], [Name], [Email]) VALUES (3, N'Teena', N'Teena@gmail.com')
INSERT [dbo].[Customer] ([Id], [Name], [Email]) VALUES (4, N'tom', N'tom@gmail.com')
INSERT [dbo].[Customer] ([Id], [Name], [Email]) VALUES (5, N'jhon', N'jhon@gmail.com')
INSERT [dbo].[Customer] ([Id], [Name], [Email]) VALUES (6, N'arun', N'arun@gmail.com ')
INSERT [dbo].[Customer] ([Id], [Name], [Email]) VALUES (7, N'varun', N'varun@gmail.com')
SET IDENTITY_INSERT [dbo].[Customer] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([OrderId], [Status], [OrderDate], [ProductId], [CustomerId]) VALUES (55555, N'completed                                         ', CAST(N'2022-10-18T00:00:00.000' AS DateTime), 1008, 1)
INSERT [dbo].[Orders] ([OrderId], [Status], [OrderDate], [ProductId], [CustomerId]) VALUES (55556, N'completed                                         ', CAST(N'2022-11-22T00:00:00.000' AS DateTime), 1007, 1)
INSERT [dbo].[Orders] ([OrderId], [Status], [OrderDate], [ProductId], [CustomerId]) VALUES (55557, N'In-progress                                       ', CAST(N'2022-11-10T00:00:00.000' AS DateTime), 1006, 2)
INSERT [dbo].[Orders] ([OrderId], [Status], [OrderDate], [ProductId], [CustomerId]) VALUES (55558, N'in-progress                                       ', CAST(N'2022-10-15T00:00:00.000' AS DateTime), 1005, 3)
INSERT [dbo].[Orders] ([OrderId], [Status], [OrderDate], [ProductId], [CustomerId]) VALUES (55559, N'cancelled                                         ', CAST(N'2022-10-01T00:00:00.000' AS DateTime), 1010, 3)
INSERT [dbo].[Orders] ([OrderId], [Status], [OrderDate], [ProductId], [CustomerId]) VALUES (55560, N'cancelled                                         ', CAST(N'2022-09-20T00:00:00.000' AS DateTime), 1003, 2)
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([Id], [Name], [Cost], [CategoryID]) VALUES (1001, N'T-Shirt', 900.0000, 10)
INSERT [dbo].[Product] ([Id], [Name], [Cost], [CategoryID]) VALUES (1002, N'Kurti', 1499.0000, 10)
INSERT [dbo].[Product] ([Id], [Name], [Cost], [CategoryID]) VALUES (1003, N'Lehenga', 5000.0000, 10)
INSERT [dbo].[Product] ([Id], [Name], [Cost], [CategoryID]) VALUES (1004, N'Kurthas', 3000.0000, 10)
INSERT [dbo].[Product] ([Id], [Name], [Cost], [CategoryID]) VALUES (1005, N'iphone 14', 80000.0000, 12)
INSERT [dbo].[Product] ([Id], [Name], [Cost], [CategoryID]) VALUES (1006, N'Google Pixel 6A', 45000.0000, 12)
INSERT [dbo].[Product] ([Id], [Name], [Cost], [CategoryID]) VALUES (1007, N'fairy light', 2000.0000, 11)
INSERT [dbo].[Product] ([Id], [Name], [Cost], [CategoryID]) VALUES (1008, N'Diyas pack', 200.0000, 11)
INSERT [dbo].[Product] ([Id], [Name], [Cost], [CategoryID]) VALUES (1009, N'Apple', 233.0000, 13)
INSERT [dbo].[Product] ([Id], [Name], [Cost], [CategoryID]) VALUES (1010, N'oranges', 300.0000, 13)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductCategory] ON 

INSERT [dbo].[ProductCategory] ([Id], [Name]) VALUES (10, N'apparels')
INSERT [dbo].[ProductCategory] ([Id], [Name]) VALUES (11, N'Lights')
INSERT [dbo].[ProductCategory] ([Id], [Name]) VALUES (12, N'Electronics')
INSERT [dbo].[ProductCategory] ([Id], [Name]) VALUES (13, N'fruits')
INSERT [dbo].[ProductCategory] ([Id], [Name]) VALUES (14, N'sweets')
INSERT [dbo].[ProductCategory] ([Id], [Name]) VALUES (15, N'cosmetics')
SET IDENTITY_INSERT [dbo].[ProductCategory] OFF
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Customer] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customer] ([Id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Customer]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Product] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Product]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_ProductCategory] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[ProductCategory] ([Id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_ProductCategory]
GO
USE [master]
GO
ALTER DATABASE [EShop] SET  READ_WRITE 
GO
