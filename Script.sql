USE [master]
GO
/****** Object:  Database [WebsiteBanHang]    Script Date: 01/04/2024 10:26:37 PM ******/
CREATE DATABASE [WebsiteBanHang]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'WebsiteBanHang', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQL\MSSQL\DATA\WebsiteBanHang.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'WebsiteBanHang_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQL\MSSQL\DATA\WebsiteBanHang_log.ldf' , SIZE = 2624KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [WebsiteBanHang] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [WebsiteBanHang].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [WebsiteBanHang] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [WebsiteBanHang] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [WebsiteBanHang] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [WebsiteBanHang] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [WebsiteBanHang] SET ARITHABORT OFF 
GO
ALTER DATABASE [WebsiteBanHang] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [WebsiteBanHang] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [WebsiteBanHang] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [WebsiteBanHang] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [WebsiteBanHang] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [WebsiteBanHang] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [WebsiteBanHang] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [WebsiteBanHang] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [WebsiteBanHang] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [WebsiteBanHang] SET  DISABLE_BROKER 
GO
ALTER DATABASE [WebsiteBanHang] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [WebsiteBanHang] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [WebsiteBanHang] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [WebsiteBanHang] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [WebsiteBanHang] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [WebsiteBanHang] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [WebsiteBanHang] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [WebsiteBanHang] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [WebsiteBanHang] SET  MULTI_USER 
GO
ALTER DATABASE [WebsiteBanHang] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [WebsiteBanHang] SET DB_CHAINING OFF 
GO
ALTER DATABASE [WebsiteBanHang] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [WebsiteBanHang] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [WebsiteBanHang] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [WebsiteBanHang] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [WebsiteBanHang] SET QUERY_STORE = OFF
GO
USE [WebsiteBanHang]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 01/04/2024 10:26:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BLOG]    Script Date: 01/04/2024 10:26:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BLOG](
	[ID_BLOG] [int] IDENTITY(1,1) NOT NULL,
	[TITLE] [nvarchar](50) NULL,
	[DESCRIPTION] [nvarchar](255) NULL,
	[IMG] [varchar](255) NULL,
	[DETAIL] [ntext] NULL,
	[DATEBEGIN] [smalldatetime] NULL,
	[ORDER] [int] NULL,
	[LINK] [nvarchar](255) NULL,
	[HIDE] [int] NULL,
	[ID_USERS] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_BLOG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CART]    Script Date: 01/04/2024 10:26:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CART](
	[ID_CART] [int] IDENTITY(1,1) NOT NULL,
	[DATEBEGIN] [smalldatetime] NULL,
	[HIDE] [int] NULL,
	[ID_USERS] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_CART] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CART_DETAIL]    Script Date: 01/04/2024 10:26:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CART_DETAIL](
	[ID_CD] [int] IDENTITY(1,1) NOT NULL,
	[SOLD_NUM] [int] NULL,
	[HIDE] [int] NULL,
	[ID_CART] [int] NULL,
	[ID_PRO] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_CD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CATOLOGY]    Script Date: 01/04/2024 10:26:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CATOLOGY](
	[ID_CAT] [int] IDENTITY(1,1) NOT NULL,
	[NAME_CAT] [nvarchar](50) NULL,
	[ORDER] [int] NULL,
	[LINK] [nvarchar](255) NULL,
	[HIDE] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_CAT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MENU]    Script Date: 01/04/2024 10:26:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MENU](
	[ID_MENU] [int] IDENTITY(1,1) NOT NULL,
	[TITLE] [nvarchar](50) NULL,
	[ORDER] [int] NULL,
	[LINK] [nvarchar](255) NULL,
	[HIDE] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_MENU] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PRODUCTS]    Script Date: 01/04/2024 10:26:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PRODUCTS](
	[ID_PRO] [int] IDENTITY(1,1) NOT NULL,
	[NAME_PRO] [nvarchar](50) NULL,
	[NUMS] [int] NULL,
	[PRICE] [decimal](18, 0) NULL,
	[DETAIL] [ntext] NULL,
	[IMG1] [varchar](255) NULL,
	[IMG2] [varchar](255) NULL,
	[IMG3] [varchar](255) NULL,
	[ORDER] [int] NULL,
	[LINK] [nvarchar](255) NULL,
	[HIDE] [int] NULL,
	[ID_CAT] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_PRO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SLIDER]    Script Date: 01/04/2024 10:26:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SLIDER](
	[ID_SLIDE] [int] IDENTITY(1,1) NOT NULL,
	[TITLE] [nvarchar](50) NULL,
	[IMG] [varchar](255) NULL,
	[ORDER] [int] NULL,
	[LINK] [nvarchar](255) NULL,
	[HIDE] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_SLIDE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[USERS]    Script Date: 01/04/2024 10:26:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[USERS](
	[ID_USERS] [int] IDENTITY(1,1) NOT NULL,
	[USERNAME] [varchar](30) NULL,
	[PASSWORD] [varchar](20) NULL,
	[NAME] [nvarchar](50) NULL,
	[ADDRESS] [nvarchar](50) NULL,
	[EMAIL] [varchar](50) NULL,
	[PHONE] [varchar](12) NULL,
	[PERMISSION] [int] NULL,
	[HIDE] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_USERS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[BLOG] ON 

INSERT [dbo].[BLOG] ([ID_BLOG], [TITLE], [DESCRIPTION], [IMG], [DETAIL], [DATEBEGIN], [ORDER], [LINK], [HIDE], [ID_USERS]) VALUES (1, N'Cách tim sách', N'Làm sao để tìm được sách hay hãy xem bài viết này', N'blog.jpg', N'Làm sao để tìm được sách hay hãy xem bài viết này', NULL, 1, N'cach-tim-sach', 0, NULL)
INSERT [dbo].[BLOG] ([ID_BLOG], [TITLE], [DESCRIPTION], [IMG], [DETAIL], [DATEBEGIN], [ORDER], [LINK], [HIDE], [ID_USERS]) VALUES (2, N'Cách đọc sách hiệu quả', N'Làm sao để đọc sách một cách hiệu quả nhất bài viết này sẽ giúp bạn', N'blog.jpg', N'Làm sao để đọc sách một cách hiệu quả nhất bài viết này sẽ giúp bạn', NULL, 2, N'cach-djoc-sach-hieu-qua', 0, NULL)
INSERT [dbo].[BLOG] ([ID_BLOG], [TITLE], [DESCRIPTION], [IMG], [DETAIL], [DATEBEGIN], [ORDER], [LINK], [HIDE], [ID_USERS]) VALUES (7, N'Sách và kỹ niệm', N'Những cuốn sách là những kỷ niệm vô giá', N'blog.jpg', N'Những cuốn sách là những kỷ niệm vô giá', NULL, 3, N'sach-va-ky-niem', 0, NULL)
INSERT [dbo].[BLOG] ([ID_BLOG], [TITLE], [DESCRIPTION], [IMG], [DETAIL], [DATEBEGIN], [ORDER], [LINK], [HIDE], [ID_USERS]) VALUES (8, N'Sách là tri thức', N'Sách mang đến tri thức cho nhân loại', N'blog.jpg', N'Sách mang đến tri thức cho nhân loại', NULL, 4, N'sach-la-tri-thuc', 0, NULL)
SET IDENTITY_INSERT [dbo].[BLOG] OFF
GO
SET IDENTITY_INSERT [dbo].[CATOLOGY] ON 

INSERT [dbo].[CATOLOGY] ([ID_CAT], [NAME_CAT], [ORDER], [LINK], [HIDE]) VALUES (1, N'Sản phẩm 1', 1, N'san-pham-1', 0)
INSERT [dbo].[CATOLOGY] ([ID_CAT], [NAME_CAT], [ORDER], [LINK], [HIDE]) VALUES (2, N'Sản phẩm 2', 2, N'san-pham-2', 0)
INSERT [dbo].[CATOLOGY] ([ID_CAT], [NAME_CAT], [ORDER], [LINK], [HIDE]) VALUES (3, N'Spa & lam dep', 3, N'spa-va-lam-dep', 1)
SET IDENTITY_INSERT [dbo].[CATOLOGY] OFF
GO
SET IDENTITY_INSERT [dbo].[MENU] ON 

INSERT [dbo].[MENU] ([ID_MENU], [TITLE], [ORDER], [LINK], [HIDE]) VALUES (1, N'Trang chủ', 1, N'trang-chu', 0)
INSERT [dbo].[MENU] ([ID_MENU], [TITLE], [ORDER], [LINK], [HIDE]) VALUES (2, N'Sản phẩm', 2, N'san-pham', 0)
INSERT [dbo].[MENU] ([ID_MENU], [TITLE], [ORDER], [LINK], [HIDE]) VALUES (3, N'Bài viết', 3, N'bai-viet', 0)
INSERT [dbo].[MENU] ([ID_MENU], [TITLE], [ORDER], [LINK], [HIDE]) VALUES (4, N'Liên hệ', 4, N'lien-he', 0)
INSERT [dbo].[MENU] ([ID_MENU], [TITLE], [ORDER], [LINK], [HIDE]) VALUES (5, N'Menu ẩn', 5, N'menu-an', 1)
SET IDENTITY_INSERT [dbo].[MENU] OFF
GO
SET IDENTITY_INSERT [dbo].[PRODUCTS] ON 

INSERT [dbo].[PRODUCTS] ([ID_PRO], [NAME_PRO], [NUMS], [PRICE], [DETAIL], [IMG1], [IMG2], [IMG3], [ORDER], [LINK], [HIDE], [ID_CAT]) VALUES (1, N'Chuyện Kể Cho Tương Lai', 100, CAST(450000 AS Decimal(18, 0)), N'Chuyện Kể Cho Tương Lai', N'book1.jpg', N'book1.jpg', N'book1.jpg', 1, N'san-pham-1', 0, 1)
INSERT [dbo].[PRODUCTS] ([ID_PRO], [NAME_PRO], [NUMS], [PRICE], [DETAIL], [IMG1], [IMG2], [IMG3], [ORDER], [LINK], [HIDE], [ID_CAT]) VALUES (2, N'Cẩm Nang Sinh Viên', 100, CAST(450000 AS Decimal(18, 0)), N'Cẩm Nang Sinh Viên', N'book2.jpg', N'book2.jpg', N'book2.jpg', 2, N'san-pham-2', 0, 1)
INSERT [dbo].[PRODUCTS] ([ID_PRO], [NAME_PRO], [NUMS], [PRICE], [DETAIL], [IMG1], [IMG2], [IMG3], [ORDER], [LINK], [HIDE], [ID_CAT]) VALUES (3, N'Trốn Lên Mái Nhà Để Khóc', 100, CAST(450000 AS Decimal(18, 0)), N'Trốn Lên Mái Nhà Để Khóc', N'book3.jpg', N'book3.jpg', N'book3.jpg', 3, N'san-pham-3', 0, 1)
INSERT [dbo].[PRODUCTS] ([ID_PRO], [NAME_PRO], [NUMS], [PRICE], [DETAIL], [IMG1], [IMG2], [IMG3], [ORDER], [LINK], [HIDE], [ID_CAT]) VALUES (4, N'Conan: Hồ Sơ Tuyệt Mật-Haibara', 100, CAST(450000 AS Decimal(18, 0)), N'Conan: Hồ Sơ Tuyệt Mật-Haibara', N'book4.jpg', N'book4.jpg', N'book4.jpg', 4, N'san-pham-4', 0, 2)
INSERT [dbo].[PRODUCTS] ([ID_PRO], [NAME_PRO], [NUMS], [PRICE], [DETAIL], [IMG1], [IMG2], [IMG3], [ORDER], [LINK], [HIDE], [ID_CAT]) VALUES (5, N'BKTT Pokémon Sun&Moon-Tập 2', 100, CAST(450000 AS Decimal(18, 0)), N'BKTT Pokémon Sun&Moon-Tập 2', N'book5.jpg', N'book5.jpg', N'book5.jpg', 5, N'san-pham-5', 0, 2)
INSERT [dbo].[PRODUCTS] ([ID_PRO], [NAME_PRO], [NUMS], [PRICE], [DETAIL], [IMG1], [IMG2], [IMG3], [ORDER], [LINK], [HIDE], [ID_CAT]) VALUES (6, N'Dám nghĩ lại', 100, CAST(450000 AS Decimal(18, 0)), N'Dám nghĩ lại', N'book6.jpg', N'book6.jpg', N'book6.jpg', 6, N'san-pham-6', 0, 2)
SET IDENTITY_INSERT [dbo].[PRODUCTS] OFF
GO
SET IDENTITY_INSERT [dbo].[SLIDER] ON 

INSERT [dbo].[SLIDER] ([ID_SLIDE], [TITLE], [IMG], [ORDER], [LINK], [HIDE]) VALUES (1, N'Chương trình khuyến mãi tháng 03/2024', N'banner01.png', 1, N'chuong-trinh-khuyen-mai-thang-032024', 0)
INSERT [dbo].[SLIDER] ([ID_SLIDE], [TITLE], [IMG], [ORDER], [LINK], [HIDE]) VALUES (2, N'Tri ân khách hàng thân thiết, giảm giá 10%', N'banner02.png', 2, N'tri-an-khach-hang-than-thiet-giam-gia-10', 0)
INSERT [dbo].[SLIDER] ([ID_SLIDE], [TITLE], [IMG], [ORDER], [LINK], [HIDE]) VALUES (3, N'Mua hàng thả ga', N'banner03.png', 3, N'mua-hang-tha-ga', 0)
INSERT [dbo].[SLIDER] ([ID_SLIDE], [TITLE], [IMG], [ORDER], [LINK], [HIDE]) VALUES (4, N'Chào mừng ngày Quốc tế Phụ nữ, sale sập sàn', N'banner04.png', 4, N'chao-mung-ngay-quoc-te-phu-nu-sale-sap-san', 0)
SET IDENTITY_INSERT [dbo].[SLIDER] OFF
GO
ALTER TABLE [dbo].[BLOG]  WITH CHECK ADD FOREIGN KEY([ID_USERS])
REFERENCES [dbo].[USERS] ([ID_USERS])
GO
ALTER TABLE [dbo].[CART]  WITH CHECK ADD FOREIGN KEY([ID_USERS])
REFERENCES [dbo].[USERS] ([ID_USERS])
GO
ALTER TABLE [dbo].[CART_DETAIL]  WITH CHECK ADD FOREIGN KEY([ID_CART])
REFERENCES [dbo].[CART] ([ID_CART])
GO
ALTER TABLE [dbo].[CART_DETAIL]  WITH CHECK ADD FOREIGN KEY([ID_PRO])
REFERENCES [dbo].[PRODUCTS] ([ID_PRO])
GO
ALTER TABLE [dbo].[PRODUCTS]  WITH CHECK ADD FOREIGN KEY([ID_CAT])
REFERENCES [dbo].[CATOLOGY] ([ID_CAT])
GO
USE [master]
GO
ALTER DATABASE [WebsiteBanHang] SET  READ_WRITE 
GO
