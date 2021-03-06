USE [master]
GO
/****** Object:  Database [DigitalStore]    Script Date: 14/04/2022 8:10:17 CH ******/
CREATE DATABASE [DigitalStore]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DigitalStore', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLSERVER\MSSQL\DATA\DigitalStore.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'DigitalStore_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLSERVER\MSSQL\DATA\DigitalStore_log.ldf' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [DigitalStore] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DigitalStore].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DigitalStore] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DigitalStore] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DigitalStore] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DigitalStore] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DigitalStore] SET ARITHABORT OFF 
GO
ALTER DATABASE [DigitalStore] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [DigitalStore] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DigitalStore] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DigitalStore] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DigitalStore] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DigitalStore] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DigitalStore] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DigitalStore] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DigitalStore] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DigitalStore] SET  ENABLE_BROKER 
GO
ALTER DATABASE [DigitalStore] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DigitalStore] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DigitalStore] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DigitalStore] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DigitalStore] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DigitalStore] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DigitalStore] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DigitalStore] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DigitalStore] SET  MULTI_USER 
GO
ALTER DATABASE [DigitalStore] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DigitalStore] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DigitalStore] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DigitalStore] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [DigitalStore] SET DELAYED_DURABILITY = DISABLED 
GO
USE [DigitalStore]
GO
/****** Object:  Table [dbo].[CHITIETTACVU]    Script Date: 14/04/2022 8:10:17 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHITIETTACVU](
	[MACTTACVU] [int] IDENTITY(1,1) NOT NULL,
	[MAQUYEN] [int] NULL,
	[MATACVU] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MACTTACVU] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CT_HOADON]    Script Date: 14/04/2022 8:10:17 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_HOADON](
	[MACTHOADON] [int] IDENTITY(1,1) NOT NULL,
	[SOLUONG] [int] NULL,
	[MAHD] [int] NULL,
	[MASANPHAM] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MACTHOADON] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CT_PHIEUMUA]    Script Date: 14/04/2022 8:10:17 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_PHIEUMUA](
	[MACTPHIEUMUA] [int] IDENTITY(1,1) NOT NULL,
	[MAPHIEUMUA] [int] NULL,
	[MASANPHAM] [int] NULL,
	[SOLUONG] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MACTPHIEUMUA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HOADON]    Script Date: 14/04/2022 8:10:17 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HOADON](
	[MAHD] [int] IDENTITY(1,1) NOT NULL,
	[NGAYDATHANG] [datetime] NULL,
	[NGAYGIAO] [datetime] NULL,
	[DIACHINHANHANG] [nvarchar](50) NULL,
	[SDTNHANHANG] [varchar](10) NULL,
	[GMAIL] [varchar](30) NULL,
	[YEUCAU] [nvarchar](50) NULL,
	[TONGTIEN] [float] NULL,
	[TRANGTHAI] [int] NULL,
	[MAPHIEUMUA] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MAHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LOAIMAY]    Script Date: 14/04/2022 8:10:17 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOAIMAY](
	[MALOAI] [int] IDENTITY(1,1) NOT NULL,
	[TENLOAI] [nvarchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[MALOAI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NGUOIDUNG]    Script Date: 14/04/2022 8:10:17 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NGUOIDUNG](
	[USERNAME] [varchar](50) NOT NULL,
	[PASS] [varchar](50) NULL,
	[HOVATEN] [nvarchar](30) NOT NULL,
	[GIOITINH] [int] NULL,
	[NAMSINH] [date] NULL,
	[SDT] [varchar](10) NOT NULL,
	[GMAIL] [varchar](50) NULL,
	[DIACHI] [nvarchar](50) NULL,
	[MAQUYEN] [int] NULL,
	[NGAYDANGKY] [date] NULL,
	[TRANGTHAI] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[USERNAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NHACUNGCAP]    Script Date: 14/04/2022 8:10:17 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHACUNGCAP](
	[MANCC] [int] IDENTITY(1,1) NOT NULL,
	[TENNCCC] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MANCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PHIEUMUA]    Script Date: 14/04/2022 8:10:17 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PHIEUMUA](
	[MAPHIEUMUA] [int] IDENTITY(1,1) NOT NULL,
	[DIACHIGIAOHANG] [nvarchar](50) NULL,
	[NGAYDAT] [datetime] NULL,
	[USERNAME] [varchar](50) NULL,
	[TRANGTHAI] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MAPHIEUMUA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[QUYEN]    Script Date: 14/04/2022 8:10:17 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QUYEN](
	[MAQUYEN] [int] NOT NULL,
	[TENQUYEN] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MAQUYEN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SANPHAM]    Script Date: 14/04/2022 8:10:17 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SANPHAM](
	[MASANPHAM] [int] IDENTITY(1,1) NOT NULL,
	[TENSANPHAM] [nvarchar](30) NULL,
	[GIABAN] [decimal](18, 0) NULL,
	[GIAGIAM] [float] NULL,
	[THONGSOKYTHUAT] [nvarchar](max) NULL,
	[BAOHANH] [int] NULL,
	[HINH] [varchar](50) NULL,
	[NGAYCAPNHAT] [datetime] NULL,
	[SOLUONGTON] [int] NULL,
	[TRANGTHAI] [int] NULL,
	[MALOAI] [int] NULL,
	[MANCC] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MASANPHAM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TACVU]    Script Date: 14/04/2022 8:10:17 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TACVU](
	[MATACVU] [int] IDENTITY(1,1) NOT NULL,
	[TENTACVU] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MATACVU] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[CHITIETTACVU] ON 

INSERT [dbo].[CHITIETTACVU] ([MACTTACVU], [MAQUYEN], [MATACVU]) VALUES (1, 1, 1)
INSERT [dbo].[CHITIETTACVU] ([MACTTACVU], [MAQUYEN], [MATACVU]) VALUES (2, 1, 2)
INSERT [dbo].[CHITIETTACVU] ([MACTTACVU], [MAQUYEN], [MATACVU]) VALUES (3, 1, 3)
INSERT [dbo].[CHITIETTACVU] ([MACTTACVU], [MAQUYEN], [MATACVU]) VALUES (4, 1, 4)
INSERT [dbo].[CHITIETTACVU] ([MACTTACVU], [MAQUYEN], [MATACVU]) VALUES (5, 1, 5)
INSERT [dbo].[CHITIETTACVU] ([MACTTACVU], [MAQUYEN], [MATACVU]) VALUES (6, 1, 6)
INSERT [dbo].[CHITIETTACVU] ([MACTTACVU], [MAQUYEN], [MATACVU]) VALUES (7, 1, 7)
INSERT [dbo].[CHITIETTACVU] ([MACTTACVU], [MAQUYEN], [MATACVU]) VALUES (8, 1, 8)
INSERT [dbo].[CHITIETTACVU] ([MACTTACVU], [MAQUYEN], [MATACVU]) VALUES (9, 1, 9)
INSERT [dbo].[CHITIETTACVU] ([MACTTACVU], [MAQUYEN], [MATACVU]) VALUES (10, 1, 10)
INSERT [dbo].[CHITIETTACVU] ([MACTTACVU], [MAQUYEN], [MATACVU]) VALUES (11, 1, 11)
INSERT [dbo].[CHITIETTACVU] ([MACTTACVU], [MAQUYEN], [MATACVU]) VALUES (12, 1, 12)
INSERT [dbo].[CHITIETTACVU] ([MACTTACVU], [MAQUYEN], [MATACVU]) VALUES (13, 1, 13)
INSERT [dbo].[CHITIETTACVU] ([MACTTACVU], [MAQUYEN], [MATACVU]) VALUES (14, 1, 14)
INSERT [dbo].[CHITIETTACVU] ([MACTTACVU], [MAQUYEN], [MATACVU]) VALUES (15, 1, 15)
SET IDENTITY_INSERT [dbo].[CHITIETTACVU] OFF
SET IDENTITY_INSERT [dbo].[CT_PHIEUMUA] ON 

INSERT [dbo].[CT_PHIEUMUA] ([MACTPHIEUMUA], [MAPHIEUMUA], [MASANPHAM], [SOLUONG]) VALUES (1, 1, 1, 1)
INSERT [dbo].[CT_PHIEUMUA] ([MACTPHIEUMUA], [MAPHIEUMUA], [MASANPHAM], [SOLUONG]) VALUES (2, 4, 1, 1)
INSERT [dbo].[CT_PHIEUMUA] ([MACTPHIEUMUA], [MAPHIEUMUA], [MASANPHAM], [SOLUONG]) VALUES (3, NULL, 1, 1)
INSERT [dbo].[CT_PHIEUMUA] ([MACTPHIEUMUA], [MAPHIEUMUA], [MASANPHAM], [SOLUONG]) VALUES (4, 6, 14, 2)
INSERT [dbo].[CT_PHIEUMUA] ([MACTPHIEUMUA], [MAPHIEUMUA], [MASANPHAM], [SOLUONG]) VALUES (5, 7, 1, 1)
INSERT [dbo].[CT_PHIEUMUA] ([MACTPHIEUMUA], [MAPHIEUMUA], [MASANPHAM], [SOLUONG]) VALUES (6, 8, 16, 1)
SET IDENTITY_INSERT [dbo].[CT_PHIEUMUA] OFF
SET IDENTITY_INSERT [dbo].[HOADON] ON 

INSERT [dbo].[HOADON] ([MAHD], [NGAYDATHANG], [NGAYGIAO], [DIACHINHANHANG], [SDTNHANHANG], [GMAIL], [YEUCAU], [TONGTIEN], [TRANGTHAI], [MAPHIEUMUA]) VALUES (1, NULL, NULL, NULL, NULL, NULL, NULL, 11111, NULL, NULL)
SET IDENTITY_INSERT [dbo].[HOADON] OFF
SET IDENTITY_INSERT [dbo].[LOAIMAY] ON 

INSERT [dbo].[LOAIMAY] ([MALOAI], [TENLOAI]) VALUES (1, N'DSLR')
INSERT [dbo].[LOAIMAY] ([MALOAI], [TENLOAI]) VALUES (2, N'Mirrorless')
INSERT [dbo].[LOAIMAY] ([MALOAI], [TENLOAI]) VALUES (3, N'Lens')
SET IDENTITY_INSERT [dbo].[LOAIMAY] OFF
INSERT [dbo].[NGUOIDUNG] ([USERNAME], [PASS], [HOVATEN], [GIOITINH], [NAMSINH], [SDT], [GMAIL], [DIACHI], [MAQUYEN], [NGAYDANGKY], [TRANGTHAI]) VALUES (N'admin', N'123', N'ADMIN', 1, CAST(N'2001-11-26' AS Date), N'0918938481', N'nguyenxuantam2611@gmail.com', N'Quảng Trị', 1, NULL, 1)
INSERT [dbo].[NGUOIDUNG] ([USERNAME], [PASS], [HOVATEN], [GIOITINH], [NAMSINH], [SDT], [GMAIL], [DIACHI], [MAQUYEN], [NGAYDANGKY], [TRANGTHAI]) VALUES (N'haunguyenaa6@gmail.com', N'123123', N'Nguyễn Trung Hậu', 1, CAST(N'2022-04-14' AS Date), N'0327333115', N'haunguyenaa6@gmail.com', N'daklak', 0, CAST(N'2022-04-13' AS Date), 1)
INSERT [dbo].[NGUOIDUNG] ([USERNAME], [PASS], [HOVATEN], [GIOITINH], [NAMSINH], [SDT], [GMAIL], [DIACHI], [MAQUYEN], [NGAYDANGKY], [TRANGTHAI]) VALUES (N'user', N'123', N'Nguyễn Xuân Tâm', 1, CAST(N'2000-03-14' AS Date), N'0985707405', N'269mrlee@gmail.com', N'Quảng Trị', 0, CAST(N'2022-04-10' AS Date), 1)
SET IDENTITY_INSERT [dbo].[NHACUNGCAP] ON 

INSERT [dbo].[NHACUNGCAP] ([MANCC], [TENNCCC]) VALUES (1, N'Canon')
INSERT [dbo].[NHACUNGCAP] ([MANCC], [TENNCCC]) VALUES (2, N'Nikon')
INSERT [dbo].[NHACUNGCAP] ([MANCC], [TENNCCC]) VALUES (3, N'Sony')
INSERT [dbo].[NHACUNGCAP] ([MANCC], [TENNCCC]) VALUES (4, N'Fujifilm')
INSERT [dbo].[NHACUNGCAP] ([MANCC], [TENNCCC]) VALUES (5, N'Pentax')
SET IDENTITY_INSERT [dbo].[NHACUNGCAP] OFF
SET IDENTITY_INSERT [dbo].[PHIEUMUA] ON 

INSERT [dbo].[PHIEUMUA] ([MAPHIEUMUA], [DIACHIGIAOHANG], [NGAYDAT], [USERNAME], [TRANGTHAI]) VALUES (1, N'TEST', CAST(N'2022-04-11 00:00:00.000' AS DateTime), N'user', 1)
INSERT [dbo].[PHIEUMUA] ([MAPHIEUMUA], [DIACHIGIAOHANG], [NGAYDAT], [USERNAME], [TRANGTHAI]) VALUES (2, NULL, CAST(N'2022-04-12 18:52:15.217' AS DateTime), N'haunguyenaa6@gmail.com', 0)
INSERT [dbo].[PHIEUMUA] ([MAPHIEUMUA], [DIACHIGIAOHANG], [NGAYDAT], [USERNAME], [TRANGTHAI]) VALUES (3, NULL, CAST(N'2022-04-12 18:52:25.717' AS DateTime), N'haunguyenaa6@gmail.com', 0)
INSERT [dbo].[PHIEUMUA] ([MAPHIEUMUA], [DIACHIGIAOHANG], [NGAYDAT], [USERNAME], [TRANGTHAI]) VALUES (4, NULL, CAST(N'2022-04-13 09:02:07.403' AS DateTime), N'haunguyenaa6@gmail.com', 0)
INSERT [dbo].[PHIEUMUA] ([MAPHIEUMUA], [DIACHIGIAOHANG], [NGAYDAT], [USERNAME], [TRANGTHAI]) VALUES (5, N'daklak', CAST(N'2022-04-13 09:03:42.440' AS DateTime), N'haunguyenaa6@gmail.com', 0)
INSERT [dbo].[PHIEUMUA] ([MAPHIEUMUA], [DIACHIGIAOHANG], [NGAYDAT], [USERNAME], [TRANGTHAI]) VALUES (6, NULL, CAST(N'2022-04-13 12:55:10.857' AS DateTime), N'haunguyenaa6@gmail.com', NULL)
INSERT [dbo].[PHIEUMUA] ([MAPHIEUMUA], [DIACHIGIAOHANG], [NGAYDAT], [USERNAME], [TRANGTHAI]) VALUES (7, NULL, CAST(N'2022-04-14 16:57:38.700' AS DateTime), N'user', NULL)
INSERT [dbo].[PHIEUMUA] ([MAPHIEUMUA], [DIACHIGIAOHANG], [NGAYDAT], [USERNAME], [TRANGTHAI]) VALUES (8, NULL, CAST(N'2022-04-14 17:05:55.027' AS DateTime), N'user', NULL)
SET IDENTITY_INSERT [dbo].[PHIEUMUA] OFF
INSERT [dbo].[QUYEN] ([MAQUYEN], [TENQUYEN]) VALUES (0, N'User')
INSERT [dbo].[QUYEN] ([MAQUYEN], [TENQUYEN]) VALUES (1, N'Admin')
SET IDENTITY_INSERT [dbo].[SANPHAM] ON 

INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [GIABAN], [GIAGIAM], [THONGSOKYTHUAT], [BAOHANH], [HINH], [NGAYCAPNHAT], [SOLUONGTON], [TRANGTHAI], [MALOAI], [MANCC]) VALUES (1, N'EOS 6D Mark II (Body)', CAST(1199000 AS Decimal(18, 0)), NULL, N'- Cảm biến CMOS 20MP full frame
- Chip xử lý hình ảnh DIGIC X
- Quay video 4K60p và FHD 120p 10bit trong máy
- Ổn định hình ảnh sensor-shift 5 trục
- Chụp liên tiếp 12 fps (màn trập cơ) , 20 fps (màn trập điện tử)
- Màn hình LCD 3.15 inch, 2.1 triệu điểm
- EVF OLED 5.76 triệu điểm, phóng đại 0.76x
- Kết nối Wi-Fi 5Ghz và 2.4Ghz, Bluetooth, có tùy chọn Bộ phát WFT-R10
- 2 Khay thẻ nhớ SD UHS-II
- Pin LP-E6NH; sạc USB qua bộ sạc PD-E1
- Kích thước : 138 x 97.5 x 88.4 mm
- Trọng lượng : 680Gram', 24, N'/Content/images/EOS 6D Mark II (Body).png', CAST(N'2022-04-03 00:00:00.000' AS DateTime), 5, 1, 1, 1)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [GIABAN], [GIAGIAM], [THONGSOKYTHUAT], [BAOHANH], [HINH], [NGAYCAPNHAT], [SOLUONGTON], [TRANGTHAI], [MALOAI], [MANCC]) VALUES (14, N'Canon 200d', CAST(2990000 AS Decimal(18, 0)), NULL, N'- Cảm biến CMOS 20MP full frame
- Chip xử lý hình ảnh DIGIC X
- Quay video 4K60p và FHD 120p 10bit trong máy
- Ổn định hình ảnh sensor-shift 5 trục
- Chụp liên tiếp 12 fps (màn trập cơ) , 20 fps (màn trập điện tử)
- Màn hình LCD 3.15 inch, 2.1 triệu điểm
- EVF OLED 5.76 triệu điểm, phóng đại 0.76x
- Kết nối Wi-Fi 5Ghz và 2.4Ghz, Bluetooth, có tùy chọn Bộ phát WFT-R10
- 2 Khay thẻ nhớ SD UHS-II
- Pin LP-E6NH; sạc USB qua bộ sạc PD-E1
- Kích thước : 138 x 97.5 x 88.4 mm
- Trọng lượng : 680Gram', NULL, N'/Content/images/EOS 90D (Body Only).png', CAST(N'2022-04-03 00:00:00.000' AS DateTime), 21, 1, 2, 1)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [GIABAN], [GIAGIAM], [THONGSOKYTHUAT], [BAOHANH], [HINH], [NGAYCAPNHAT], [SOLUONGTON], [TRANGTHAI], [MALOAI], [MANCC]) VALUES (15, N'Canon Lens', CAST(20000 AS Decimal(18, 0)), NULL, N'- Cảm biến CMOS 20MP full frame
- Chip xử lý hình ảnh DIGIC X
- Quay video 4K60p và FHD 120p 10bit trong máy
- Ổn định hình ảnh sensor-shift 5 trục
- Chụp liên tiếp 12 fps (màn trập cơ) , 20 fps (màn trập điện tử)
- Màn hình LCD 3.15 inch, 2.1 triệu điểm
- EVF OLED 5.76 triệu điểm, phóng đại 0.76x
- Kết nối Wi-Fi 5Ghz và 2.4Ghz, Bluetooth, có tùy chọn Bộ phát WFT-R10
- 2 Khay thẻ nhớ SD UHS-II
- Pin LP-E6NH; sạc USB qua bộ sạc PD-E1
- Kích thước : 138 x 97.5 x 88.4 mm
- Trọng lượng : 680Gram', NULL, N'/Content/images/PowerShot SX430 IS.png', CAST(N'2022-04-03 00:00:00.000' AS DateTime), 23, 1, 3, 1)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [GIABAN], [GIAGIAM], [THONGSOKYTHUAT], [BAOHANH], [HINH], [NGAYCAPNHAT], [SOLUONGTON], [TRANGTHAI], [MALOAI], [MANCC]) VALUES (16, N'Canon 3000d', CAST(12000 AS Decimal(18, 0)), NULL, N'- Cảm biến CMOS 20MP full frame
- Chip xử lý hình ảnh DIGIC X
- Quay video 4K60p và FHD 120p 10bit trong máy
- Ổn định hình ảnh sensor-shift 5 trục
- Chụp liên tiếp 12 fps (màn trập cơ) , 20 fps (màn trập điện tử)
- Màn hình LCD 3.15 inch, 2.1 triệu điểm
- EVF OLED 5.76 triệu điểm, phóng đại 0.76x
- Kết nối Wi-Fi 5Ghz và 2.4Ghz, Bluetooth, có tùy chọn Bộ phát WFT-R10
- 2 Khay thẻ nhớ SD UHS-II
- Pin LP-E6NH; sạc USB qua bộ sạc PD-E1
- Kích thước : 138 x 97.5 x 88.4 mm
- Trọng lượng : 680Gram', NULL, N'/Content/images/IXUS 175.png', CAST(N'2022-04-03 00:00:00.000' AS DateTime), 22, 1, 1, 1)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [GIABAN], [GIAGIAM], [THONGSOKYTHUAT], [BAOHANH], [HINH], [NGAYCAPNHAT], [SOLUONGTON], [TRANGTHAI], [MALOAI], [MANCC]) VALUES (17, N'Canon 77D_kit 18-55mm', CAST(23000 AS Decimal(18, 0)), NULL, N'- Cảm biến CMOS 20MP full frame
- Chip xử lý hình ảnh DIGIC X
- Quay video 4K60p và FHD 120p 10bit trong máy
- Ổn định hình ảnh sensor-shift 5 trục
- Chụp liên tiếp 12 fps (màn trập cơ) , 20 fps (màn trập điện tử)
- Màn hình LCD 3.15 inch, 2.1 triệu điểm
- EVF OLED 5.76 triệu điểm, phóng đại 0.76x
- Kết nối Wi-Fi 5Ghz và 2.4Ghz, Bluetooth, có tùy chọn Bộ phát WFT-R10
- 2 Khay thẻ nhớ SD UHS-II
- Pin LP-E6NH; sạc USB qua bộ sạc PD-E1
- Kích thước : 138 x 97.5 x 88.4 mm
- Trọng lượng : 680Gram', NULL, N'/Content/images/IXUS 175.png', CAST(N'2022-04-03 00:00:00.000' AS DateTime), 23, 1, 2, 1)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [GIABAN], [GIAGIAM], [THONGSOKYTHUAT], [BAOHANH], [HINH], [NGAYCAPNHAT], [SOLUONGTON], [TRANGTHAI], [MALOAI], [MANCC]) VALUES (18, N'Canon Lens', CAST(2990000 AS Decimal(18, 0)), NULL, N'- Cảm biến CMOS 20MP full frame
- Chip xử lý hình ảnh DIGIC X
- Quay video 4K60p và FHD 120p 10bit trong máy
- Ổn định hình ảnh sensor-shift 5 trục
- Chụp liên tiếp 12 fps (màn trập cơ) , 20 fps (màn trập điện tử)
- Màn hình LCD 3.15 inch, 2.1 triệu điểm
- EVF OLED 5.76 triệu điểm, phóng đại 0.76x
- Kết nối Wi-Fi 5Ghz và 2.4Ghz, Bluetooth, có tùy chọn Bộ phát WFT-R10
- 2 Khay thẻ nhớ SD UHS-II
- Pin LP-E6NH; sạc USB qua bộ sạc PD-E1
- Kích thước : 138 x 97.5 x 88.4 mm
- Trọng lượng : 680Gram', NULL, N'/Content/images/PowerShot SX430 IS.png', CAST(N'2022-04-03 00:00:00.000' AS DateTime), 23, 1, 3, 1)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [GIABAN], [GIAGIAM], [THONGSOKYTHUAT], [BAOHANH], [HINH], [NGAYCAPNHAT], [SOLUONGTON], [TRANGTHAI], [MALOAI], [MANCC]) VALUES (19, N'Canon 5D_mark4', CAST(20000 AS Decimal(18, 0)), NULL, N'- Cảm biến CMOS 20MP full frame
- Chip xử lý hình ảnh DIGIC X
- Quay video 4K60p và FHD 120p 10bit trong máy
- Ổn định hình ảnh sensor-shift 5 trục
- Chụp liên tiếp 12 fps (màn trập cơ) , 20 fps (màn trập điện tử)
- Màn hình LCD 3.15 inch, 2.1 triệu điểm
- EVF OLED 5.76 triệu điểm, phóng đại 0.76x
- Kết nối Wi-Fi 5Ghz và 2.4Ghz, Bluetooth, có tùy chọn Bộ phát WFT-R10
- 2 Khay thẻ nhớ SD UHS-II
- Pin LP-E6NH; sạc USB qua bộ sạc PD-E1
- Kích thước : 138 x 97.5 x 88.4 mm
- Trọng lượng : 680Gram', NULL, N'/Content/images/IXUS 175.png', CAST(N'2022-04-03 00:00:00.000' AS DateTime), 23, 1, 1, 1)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [GIABAN], [GIAGIAM], [THONGSOKYTHUAT], [BAOHANH], [HINH], [NGAYCAPNHAT], [SOLUONGTON], [TRANGTHAI], [MALOAI], [MANCC]) VALUES (25, N'Nikon D300A', CAST(123450 AS Decimal(18, 0)), NULL, N'- Cảm biến CMOS 20MP full frame
- Chip xử lý hình ảnh DIGIC X
- Quay video 4K60p và FHD 120p 10bit trong máy
- Ổn định hình ảnh sensor-shift 5 trục
- Chụp liên tiếp 12 fps (màn trập cơ) , 20 fps (màn trập điện tử)
- Màn hình LCD 3.15 inch, 2.1 triệu điểm
- EVF OLED 5.76 triệu điểm, phóng đại 0.76x
- Kết nối Wi-Fi 5Ghz và 2.4Ghz, Bluetooth, có tùy chọn Bộ phát WFT-R10
- 2 Khay thẻ nhớ SD UHS-II
- Pin LP-E6NH; sạc USB qua bộ sạc PD-E1
- Kích thước : 138 x 97.5 x 88.4 mm
- Trọng lượng : 680Gram', NULL, N'/Content/images/EOS 90D (Body Only).png', CAST(N'2022-04-03 00:00:00.000' AS DateTime), 23, 1, 1, 2)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [GIABAN], [GIAGIAM], [THONGSOKYTHUAT], [BAOHANH], [HINH], [NGAYCAPNHAT], [SOLUONGTON], [TRANGTHAI], [MALOAI], [MANCC]) VALUES (26, N'Nikon D600', CAST(1230000 AS Decimal(18, 0)), NULL, N'- Cảm biến CMOS 20MP full frame
- Chip xử lý hình ảnh DIGIC X
- Quay video 4K60p và FHD 120p 10bit trong máy
- Ổn định hình ảnh sensor-shift 5 trục
- Chụp liên tiếp 12 fps (màn trập cơ) , 20 fps (màn trập điện tử)
- Màn hình LCD 3.15 inch, 2.1 triệu điểm
- EVF OLED 5.76 triệu điểm, phóng đại 0.76x
- Kết nối Wi-Fi 5Ghz và 2.4Ghz, Bluetooth, có tùy chọn Bộ phát WFT-R10
- 2 Khay thẻ nhớ SD UHS-II
- Pin LP-E6NH; sạc USB qua bộ sạc PD-E1
- Kích thước : 138 x 97.5 x 88.4 mm
- Trọng lượng : 680Gram', NULL, N'/Content/images/IXUS 175.png', CAST(N'2022-04-03 00:00:00.000' AS DateTime), 23, 1, 2, 2)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [GIABAN], [GIAGIAM], [THONGSOKYTHUAT], [BAOHANH], [HINH], [NGAYCAPNHAT], [SOLUONGTON], [TRANGTHAI], [MALOAI], [MANCC]) VALUES (27, N'Nikon Lens 17-55mm', CAST(1230000 AS Decimal(18, 0)), NULL, N'- Cảm biến CMOS 20MP full frame
- Chip xử lý hình ảnh DIGIC X
- Quay video 4K60p và FHD 120p 10bit trong máy
- Ổn định hình ảnh sensor-shift 5 trục
- Chụp liên tiếp 12 fps (màn trập cơ) , 20 fps (màn trập điện tử)
- Màn hình LCD 3.15 inch, 2.1 triệu điểm
- EVF OLED 5.76 triệu điểm, phóng đại 0.76x
- Kết nối Wi-Fi 5Ghz và 2.4Ghz, Bluetooth, có tùy chọn Bộ phát WFT-R10
- 2 Khay thẻ nhớ SD UHS-II
- Pin LP-E6NH; sạc USB qua bộ sạc PD-E1
- Kích thước : 138 x 97.5 x 88.4 mm
- Trọng lượng : 680Gram', NULL, N'/Content/images/IXUS 175.png', CAST(N'2022-04-03 00:00:00.000' AS DateTime), 23, 1, 3, 2)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [GIABAN], [GIAGIAM], [THONGSOKYTHUAT], [BAOHANH], [HINH], [NGAYCAPNHAT], [SOLUONGTON], [TRANGTHAI], [MALOAI], [MANCC]) VALUES (28, N'Nikon D750', CAST(123450 AS Decimal(18, 0)), NULL, N'- Cảm biến CMOS 20MP full frame
- Chip xử lý hình ảnh DIGIC X
- Quay video 4K60p và FHD 120p 10bit trong máy
- Ổn định hình ảnh sensor-shift 5 trục
- Chụp liên tiếp 12 fps (màn trập cơ) , 20 fps (màn trập điện tử)
- Màn hình LCD 3.15 inch, 2.1 triệu điểm
- EVF OLED 5.76 triệu điểm, phóng đại 0.76x
- Kết nối Wi-Fi 5Ghz và 2.4Ghz, Bluetooth, có tùy chọn Bộ phát WFT-R10
- 2 Khay thẻ nhớ SD UHS-II
- Pin LP-E6NH; sạc USB qua bộ sạc PD-E1
- Kích thước : 138 x 97.5 x 88.4 mm
- Trọng lượng : 680Gram', NULL, N'/Content/images/IXUS 175.png', CAST(N'2022-04-03 00:00:00.000' AS DateTime), 23, 1, 1, 2)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [GIABAN], [GIAGIAM], [THONGSOKYTHUAT], [BAOHANH], [HINH], [NGAYCAPNHAT], [SOLUONGTON], [TRANGTHAI], [MALOAI], [MANCC]) VALUES (29, N'Nikon d5100d', CAST(1230000 AS Decimal(18, 0)), NULL, N'- Cảm biến CMOS 20MP full frame
- Chip xử lý hình ảnh DIGIC X
- Quay video 4K60p và FHD 120p 10bit trong máy
- Ổn định hình ảnh sensor-shift 5 trục
- Chụp liên tiếp 12 fps (màn trập cơ) , 20 fps (màn trập điện tử)
- Màn hình LCD 3.15 inch, 2.1 triệu điểm
- EVF OLED 5.76 triệu điểm, phóng đại 0.76x
- Kết nối Wi-Fi 5Ghz và 2.4Ghz, Bluetooth, có tùy chọn Bộ phát WFT-R10
- 2 Khay thẻ nhớ SD UHS-II
- Pin LP-E6NH; sạc USB qua bộ sạc PD-E1
- Kích thước : 138 x 97.5 x 88.4 mm
- Trọng lượng : 680Gram', NULL, N'/Content/images/EOS 6D Mark II (Body).png', CAST(N'2022-04-03 00:00:00.000' AS DateTime), 23, 1, 2, 2)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [GIABAN], [GIAGIAM], [THONGSOKYTHUAT], [BAOHANH], [HINH], [NGAYCAPNHAT], [SOLUONGTON], [TRANGTHAI], [MALOAI], [MANCC]) VALUES (30, N'Nikon Lens 50mm', CAST(3400000 AS Decimal(18, 0)), NULL, N'- Cảm biến CMOS 20MP full frame
- Chip xử lý hình ảnh DIGIC X
- Quay video 4K60p và FHD 120p 10bit trong máy
- Ổn định hình ảnh sensor-shift 5 trục
- Chụp liên tiếp 12 fps (màn trập cơ) , 20 fps (màn trập điện tử)
- Màn hình LCD 3.15 inch, 2.1 triệu điểm
- EVF OLED 5.76 triệu điểm, phóng đại 0.76x
- Kết nối Wi-Fi 5Ghz và 2.4Ghz, Bluetooth, có tùy chọn Bộ phát WFT-R10
- 2 Khay thẻ nhớ SD UHS-II
- Pin LP-E6NH; sạc USB qua bộ sạc PD-E1
- Kích thước : 138 x 97.5 x 88.4 mm
- Trọng lượng : 680Gram', NULL, N'/Content/images/EOS 90D (Body Only).png', CAST(N'2022-04-03 00:00:00.000' AS DateTime), 23, 1, 3, 2)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [GIABAN], [GIAGIAM], [THONGSOKYTHUAT], [BAOHANH], [HINH], [NGAYCAPNHAT], [SOLUONGTON], [TRANGTHAI], [MALOAI], [MANCC]) VALUES (31, N'Nikon d7500', CAST(123450 AS Decimal(18, 0)), NULL, N'- Cảm biến CMOS 20MP full frame
- Chip xử lý hình ảnh DIGIC X
- Quay video 4K60p và FHD 120p 10bit trong máy
- Ổn định hình ảnh sensor-shift 5 trục
- Chụp liên tiếp 12 fps (màn trập cơ) , 20 fps (màn trập điện tử)
- Màn hình LCD 3.15 inch, 2.1 triệu điểm
- EVF OLED 5.76 triệu điểm, phóng đại 0.76x
- Kết nối Wi-Fi 5Ghz và 2.4Ghz, Bluetooth, có tùy chọn Bộ phát WFT-R10
- 2 Khay thẻ nhớ SD UHS-II
- Pin LP-E6NH; sạc USB qua bộ sạc PD-E1
- Kích thước : 138 x 97.5 x 88.4 mm
- Trọng lượng : 680Gram', NULL, N'/Content/images/EOS 6D Mark II (Body).png', CAST(N'2022-04-03 00:00:00.000' AS DateTime), 23, 1, 1, 2)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [GIABAN], [GIAGIAM], [THONGSOKYTHUAT], [BAOHANH], [HINH], [NGAYCAPNHAT], [SOLUONGTON], [TRANGTHAI], [MALOAI], [MANCC]) VALUES (32, N'Nikon d610', CAST(7990000 AS Decimal(18, 0)), NULL, N'- Cảm biến CMOS 20MP full frame
- Chip xử lý hình ảnh DIGIC X
- Quay video 4K60p và FHD 120p 10bit trong máy
- Ổn định hình ảnh sensor-shift 5 trục
- Chụp liên tiếp 12 fps (màn trập cơ) , 20 fps (màn trập điện tử)
- Màn hình LCD 3.15 inch, 2.1 triệu điểm
- EVF OLED 5.76 triệu điểm, phóng đại 0.76x
- Kết nối Wi-Fi 5Ghz và 2.4Ghz, Bluetooth, có tùy chọn Bộ phát WFT-R10
- 2 Khay thẻ nhớ SD UHS-II
- Pin LP-E6NH; sạc USB qua bộ sạc PD-E1
- Kích thước : 138 x 97.5 x 88.4 mm
- Trọng lượng : 680Gram', NULL, N'/Content/images/IXUS 175.png', CAST(N'2022-04-03 00:00:00.000' AS DateTime), 23, 1, 2, 2)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [GIABAN], [GIAGIAM], [THONGSOKYTHUAT], [BAOHANH], [HINH], [NGAYCAPNHAT], [SOLUONGTON], [TRANGTHAI], [MALOAI], [MANCC]) VALUES (33, N'Nikon Lens 70-300mm', CAST(1230000 AS Decimal(18, 0)), NULL, N'- Cảm biến CMOS 20MP full frame
- Chip xử lý hình ảnh DIGIC X
- Quay video 4K60p và FHD 120p 10bit trong máy
- Ổn định hình ảnh sensor-shift 5 trục
- Chụp liên tiếp 12 fps (màn trập cơ) , 20 fps (màn trập điện tử)
- Màn hình LCD 3.15 inch, 2.1 triệu điểm
- EVF OLED 5.76 triệu điểm, phóng đại 0.76x
- Kết nối Wi-Fi 5Ghz và 2.4Ghz, Bluetooth, có tùy chọn Bộ phát WFT-R10
- 2 Khay thẻ nhớ SD UHS-II
- Pin LP-E6NH; sạc USB qua bộ sạc PD-E1
- Kích thước : 138 x 97.5 x 88.4 mm
- Trọng lượng : 680Gram', NULL, N'/Content/images/IXUS 175.png', CAST(N'2022-04-03 00:00:00.000' AS DateTime), 23, 1, 3, 2)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [GIABAN], [GIAGIAM], [THONGSOKYTHUAT], [BAOHANH], [HINH], [NGAYCAPNHAT], [SOLUONGTON], [TRANGTHAI], [MALOAI], [MANCC]) VALUES (34, N'Nikon d800e', CAST(3400000 AS Decimal(18, 0)), NULL, N'- Cảm biến CMOS 20MP full frame
- Chip xử lý hình ảnh DIGIC X
- Quay video 4K60p và FHD 120p 10bit trong máy
- Ổn định hình ảnh sensor-shift 5 trục
- Chụp liên tiếp 12 fps (màn trập cơ) , 20 fps (màn trập điện tử)
- Màn hình LCD 3.15 inch, 2.1 triệu điểm
- EVF OLED 5.76 triệu điểm, phóng đại 0.76x
- Kết nối Wi-Fi 5Ghz và 2.4Ghz, Bluetooth, có tùy chọn Bộ phát WFT-R10
- 2 Khay thẻ nhớ SD UHS-II
- Pin LP-E6NH; sạc USB qua bộ sạc PD-E1
- Kích thước : 138 x 97.5 x 88.4 mm
- Trọng lượng : 680Gram', NULL, N'/Content/images/EOS 90D (Body Only).png', CAST(N'2022-04-03 00:00:00.000' AS DateTime), 23, 1, 1, 2)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [GIABAN], [GIAGIAM], [THONGSOKYTHUAT], [BAOHANH], [HINH], [NGAYCAPNHAT], [SOLUONGTON], [TRANGTHAI], [MALOAI], [MANCC]) VALUES (35, N'Nikon d5600', CAST(123450 AS Decimal(18, 0)), NULL, N'- Cảm biến CMOS 20MP full frame
- Chip xử lý hình ảnh DIGIC X
- Quay video 4K60p và FHD 120p 10bit trong máy
- Ổn định hình ảnh sensor-shift 5 trục
- Chụp liên tiếp 12 fps (màn trập cơ) , 20 fps (màn trập điện tử)
- Màn hình LCD 3.15 inch, 2.1 triệu điểm
- EVF OLED 5.76 triệu điểm, phóng đại 0.76x
- Kết nối Wi-Fi 5Ghz và 2.4Ghz, Bluetooth, có tùy chọn Bộ phát WFT-R10
- 2 Khay thẻ nhớ SD UHS-II
- Pin LP-E6NH; sạc USB qua bộ sạc PD-E1
- Kích thước : 138 x 97.5 x 88.4 mm
- Trọng lượng : 680Gram', NULL, N'/Content/images/IXUS 175.png', CAST(N'2022-04-03 00:00:00.000' AS DateTime), 23, 1, 2, 2)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [GIABAN], [GIAGIAM], [THONGSOKYTHUAT], [BAOHANH], [HINH], [NGAYCAPNHAT], [SOLUONGTON], [TRANGTHAI], [MALOAI], [MANCC]) VALUES (36, N'Nikon Lens', CAST(7990000 AS Decimal(18, 0)), NULL, N'- Cảm biến CMOS 20MP full frame
- Chip xử lý hình ảnh DIGIC X
- Quay video 4K60p và FHD 120p 10bit trong máy
- Ổn định hình ảnh sensor-shift 5 trục
- Chụp liên tiếp 12 fps (màn trập cơ) , 20 fps (màn trập điện tử)
- Màn hình LCD 3.15 inch, 2.1 triệu điểm
- EVF OLED 5.76 triệu điểm, phóng đại 0.76x
- Kết nối Wi-Fi 5Ghz và 2.4Ghz, Bluetooth, có tùy chọn Bộ phát WFT-R10
- 2 Khay thẻ nhớ SD UHS-II
- Pin LP-E6NH; sạc USB qua bộ sạc PD-E1
- Kích thước : 138 x 97.5 x 88.4 mm
- Trọng lượng : 680Gram', NULL, N'/Content/images/IXUS 175.png', CAST(N'2022-04-03 00:00:00.000' AS DateTime), 23, 1, 3, 2)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [GIABAN], [GIAGIAM], [THONGSOKYTHUAT], [BAOHANH], [HINH], [NGAYCAPNHAT], [SOLUONGTON], [TRANGTHAI], [MALOAI], [MANCC]) VALUES (37, N'Sony a6000', CAST(1230000 AS Decimal(18, 0)), NULL, N'- Cảm biến CMOS 20MP full frame
- Chip xử lý hình ảnh DIGIC X
- Quay video 4K60p và FHD 120p 10bit trong máy
- Ổn định hình ảnh sensor-shift 5 trục
- Chụp liên tiếp 12 fps (màn trập cơ) , 20 fps (màn trập điện tử)
- Màn hình LCD 3.15 inch, 2.1 triệu điểm
- EVF OLED 5.76 triệu điểm, phóng đại 0.76x
- Kết nối Wi-Fi 5Ghz và 2.4Ghz, Bluetooth, có tùy chọn Bộ phát WFT-R10
- 2 Khay thẻ nhớ SD UHS-II
- Pin LP-E6NH; sạc USB qua bộ sạc PD-E1
- Kích thước : 138 x 97.5 x 88.4 mm
- Trọng lượng : 680Gram', NULL, N'/Content/images/canon/iNSPiC [C] CV-123A.png', CAST(N'2022-04-03 00:00:00.000' AS DateTime), 23, 1, 1, 3)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [GIABAN], [GIAGIAM], [THONGSOKYTHUAT], [BAOHANH], [HINH], [NGAYCAPNHAT], [SOLUONGTON], [TRANGTHAI], [MALOAI], [MANCC]) VALUES (38, N'Sony a6300a', CAST(3400000 AS Decimal(18, 0)), NULL, N'- Cảm biến CMOS 20MP full frame
- Chip xử lý hình ảnh DIGIC X
- Quay video 4K60p và FHD 120p 10bit trong máy
- Ổn định hình ảnh sensor-shift 5 trục
- Chụp liên tiếp 12 fps (màn trập cơ) , 20 fps (màn trập điện tử)
- Màn hình LCD 3.15 inch, 2.1 triệu điểm
- EVF OLED 5.76 triệu điểm, phóng đại 0.76x
- Kết nối Wi-Fi 5Ghz và 2.4Ghz, Bluetooth, có tùy chọn Bộ phát WFT-R10
- 2 Khay thẻ nhớ SD UHS-II
- Pin LP-E6NH; sạc USB qua bộ sạc PD-E1
- Kích thước : 138 x 97.5 x 88.4 mm
- Trọng lượng : 680Gram', NULL, N'/Content/images/EOS 6D Mark II (Body).png', CAST(N'2022-04-03 00:00:00.000' AS DateTime), 23, 1, 2, 3)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [GIABAN], [GIAGIAM], [THONGSOKYTHUAT], [BAOHANH], [HINH], [NGAYCAPNHAT], [SOLUONGTON], [TRANGTHAI], [MALOAI], [MANCC]) VALUES (39, N'Sony Lens 35-70a', CAST(123450 AS Decimal(18, 0)), NULL, N'- Cảm biến CMOS 20MP full frame
- Chip xử lý hình ảnh DIGIC X
- Quay video 4K60p và FHD 120p 10bit trong máy
- Ổn định hình ảnh sensor-shift 5 trục
- Chụp liên tiếp 12 fps (màn trập cơ) , 20 fps (màn trập điện tử)
- Màn hình LCD 3.15 inch, 2.1 triệu điểm
- EVF OLED 5.76 triệu điểm, phóng đại 0.76x
- Kết nối Wi-Fi 5Ghz và 2.4Ghz, Bluetooth, có tùy chọn Bộ phát WFT-R10
- 2 Khay thẻ nhớ SD UHS-II
- Pin LP-E6NH; sạc USB qua bộ sạc PD-E1
- Kích thước : 138 x 97.5 x 88.4 mm
- Trọng lượng : 680Gram', NULL, N'/Content/images/canon/iNSPiC [C] CV-123A.png', CAST(N'2022-04-03 00:00:00.000' AS DateTime), 23, 1, 3, 3)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [GIABAN], [GIAGIAM], [THONGSOKYTHUAT], [BAOHANH], [HINH], [NGAYCAPNHAT], [SOLUONGTON], [TRANGTHAI], [MALOAI], [MANCC]) VALUES (40, N'Sony sony-rx10m3-2', CAST(1230000 AS Decimal(18, 0)), NULL, N'- Cảm biến CMOS 20MP full frame
- Chip xử lý hình ảnh DIGIC X
- Quay video 4K60p và FHD 120p 10bit trong máy
- Ổn định hình ảnh sensor-shift 5 trục
- Chụp liên tiếp 12 fps (màn trập cơ) , 20 fps (màn trập điện tử)
- Màn hình LCD 3.15 inch, 2.1 triệu điểm
- EVF OLED 5.76 triệu điểm, phóng đại 0.76x
- Kết nối Wi-Fi 5Ghz và 2.4Ghz, Bluetooth, có tùy chọn Bộ phát WFT-R10
- 2 Khay thẻ nhớ SD UHS-II
- Pin LP-E6NH; sạc USB qua bộ sạc PD-E1
- Kích thước : 138 x 97.5 x 88.4 mm
- Trọng lượng : 680Gram', NULL, N'/Content/images/EOS 90D (Body Only).png', CAST(N'2022-04-03 00:00:00.000' AS DateTime), 23, 1, 1, 3)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [GIABAN], [GIAGIAM], [THONGSOKYTHUAT], [BAOHANH], [HINH], [NGAYCAPNHAT], [SOLUONGTON], [TRANGTHAI], [MALOAI], [MANCC]) VALUES (41, N'Sony a7r3', CAST(123450 AS Decimal(18, 0)), NULL, N'- Cảm biến CMOS 20MP full frame
- Chip xử lý hình ảnh DIGIC X
- Quay video 4K60p và FHD 120p 10bit trong máy
- Ổn định hình ảnh sensor-shift 5 trục
- Chụp liên tiếp 12 fps (màn trập cơ) , 20 fps (màn trập điện tử)
- Màn hình LCD 3.15 inch, 2.1 triệu điểm
- EVF OLED 5.76 triệu điểm, phóng đại 0.76x
- Kết nối Wi-Fi 5Ghz và 2.4Ghz, Bluetooth, có tùy chọn Bộ phát WFT-R10
- 2 Khay thẻ nhớ SD UHS-II
- Pin LP-E6NH; sạc USB qua bộ sạc PD-E1
- Kích thước : 138 x 97.5 x 88.4 mm
- Trọng lượng : 680Gram', NULL, N'/Content/images/canon/iNSPiC [C] CV-123A.png', CAST(N'2022-04-03 00:00:00.000' AS DateTime), 23, 1, 2, 3)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [GIABAN], [GIAGIAM], [THONGSOKYTHUAT], [BAOHANH], [HINH], [NGAYCAPNHAT], [SOLUONGTON], [TRANGTHAI], [MALOAI], [MANCC]) VALUES (42, N'Sony Lens 100mm-cya', CAST(7990000 AS Decimal(18, 0)), NULL, N'- Cảm biến CMOS 20MP full frame
- Chip xử lý hình ảnh DIGIC X
- Quay video 4K60p và FHD 120p 10bit trong máy
- Ổn định hình ảnh sensor-shift 5 trục
- Chụp liên tiếp 12 fps (màn trập cơ) , 20 fps (màn trập điện tử)
- Màn hình LCD 3.15 inch, 2.1 triệu điểm
- EVF OLED 5.76 triệu điểm, phóng đại 0.76x
- Kết nối Wi-Fi 5Ghz và 2.4Ghz, Bluetooth, có tùy chọn Bộ phát WFT-R10
- 2 Khay thẻ nhớ SD UHS-II
- Pin LP-E6NH; sạc USB qua bộ sạc PD-E1
- Kích thước : 138 x 97.5 x 88.4 mm
- Trọng lượng : 680Gram', NULL, N'/Content/images/EOS 6D Mark II (Body).png', CAST(N'2022-04-03 00:00:00.000' AS DateTime), 23, 1, 3, 3)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [GIABAN], [GIAGIAM], [THONGSOKYTHUAT], [BAOHANH], [HINH], [NGAYCAPNHAT], [SOLUONGTON], [TRANGTHAI], [MALOAI], [MANCC]) VALUES (43, N'Sony a6300e', CAST(123450 AS Decimal(18, 0)), NULL, N'- Cảm biến CMOS 20MP full frame
- Chip xử lý hình ảnh DIGIC X
- Quay video 4K60p và FHD 120p 10bit trong máy
- Ổn định hình ảnh sensor-shift 5 trục
- Chụp liên tiếp 12 fps (màn trập cơ) , 20 fps (màn trập điện tử)
- Màn hình LCD 3.15 inch, 2.1 triệu điểm
- EVF OLED 5.76 triệu điểm, phóng đại 0.76x
- Kết nối Wi-Fi 5Ghz và 2.4Ghz, Bluetooth, có tùy chọn Bộ phát WFT-R10
- 2 Khay thẻ nhớ SD UHS-II
- Pin LP-E6NH; sạc USB qua bộ sạc PD-E1
- Kích thước : 138 x 97.5 x 88.4 mm
- Trọng lượng : 680Gram', NULL, N'/Content/images/canon/iNSPiC [C] CV-123A.png', CAST(N'2022-04-03 00:00:00.000' AS DateTime), 23, 1, 1, 3)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [GIABAN], [GIAGIAM], [THONGSOKYTHUAT], [BAOHANH], [HINH], [NGAYCAPNHAT], [SOLUONGTON], [TRANGTHAI], [MALOAI], [MANCC]) VALUES (44, N'Sony artboard-2-100-14', CAST(3400000 AS Decimal(18, 0)), NULL, N'- Cảm biến CMOS 20MP full frame
- Chip xử lý hình ảnh DIGIC X
- Quay video 4K60p và FHD 120p 10bit trong máy
- Ổn định hình ảnh sensor-shift 5 trục
- Chụp liên tiếp 12 fps (màn trập cơ) , 20 fps (màn trập điện tử)
- Màn hình LCD 3.15 inch, 2.1 triệu điểm
- EVF OLED 5.76 triệu điểm, phóng đại 0.76x
- Kết nối Wi-Fi 5Ghz và 2.4Ghz, Bluetooth, có tùy chọn Bộ phát WFT-R10
- 2 Khay thẻ nhớ SD UHS-II
- Pin LP-E6NH; sạc USB qua bộ sạc PD-E1
- Kích thước : 138 x 97.5 x 88.4 mm
- Trọng lượng : 680Gram', NULL, N'/Content/images/EOS 90D (Body Only).png', CAST(N'2022-04-03 00:00:00.000' AS DateTime), 23, 1, 2, 3)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [GIABAN], [GIAGIAM], [THONGSOKYTHUAT], [BAOHANH], [HINH], [NGAYCAPNHAT], [SOLUONGTON], [TRANGTHAI], [MALOAI], [MANCC]) VALUES (45, N'Sony Lens 10mm-f56-e-mount', CAST(123450 AS Decimal(18, 0)), NULL, N'- Cảm biến CMOS 20MP full frame
- Chip xử lý hình ảnh DIGIC X
- Quay video 4K60p và FHD 120p 10bit trong máy
- Ổn định hình ảnh sensor-shift 5 trục
- Chụp liên tiếp 12 fps (màn trập cơ) , 20 fps (màn trập điện tử)
- Màn hình LCD 3.15 inch, 2.1 triệu điểm
- EVF OLED 5.76 triệu điểm, phóng đại 0.76x
- Kết nối Wi-Fi 5Ghz và 2.4Ghz, Bluetooth, có tùy chọn Bộ phát WFT-R10
- 2 Khay thẻ nhớ SD UHS-II
- Pin LP-E6NH; sạc USB qua bộ sạc PD-E1
- Kích thước : 138 x 97.5 x 88.4 mm
- Trọng lượng : 680Gram', NULL, N'/Content/images/EOS 90D (Body Only).png', CAST(N'2022-04-03 00:00:00.000' AS DateTime), 23, 1, 3, 3)
SET IDENTITY_INSERT [dbo].[SANPHAM] OFF
SET IDENTITY_INSERT [dbo].[TACVU] ON 

INSERT [dbo].[TACVU] ([MATACVU], [TENTACVU]) VALUES (1, N'Xem danh mục')
INSERT [dbo].[TACVU] ([MATACVU], [TENTACVU]) VALUES (2, N'Thêm danh mục')
INSERT [dbo].[TACVU] ([MATACVU], [TENTACVU]) VALUES (3, N'Sửa danh mục')
INSERT [dbo].[TACVU] ([MATACVU], [TENTACVU]) VALUES (4, N'Xóa danh mục')
INSERT [dbo].[TACVU] ([MATACVU], [TENTACVU]) VALUES (5, N'Xem danh sách footer')
INSERT [dbo].[TACVU] ([MATACVU], [TENTACVU]) VALUES (6, N'Thêm Footer')
INSERT [dbo].[TACVU] ([MATACVU], [TENTACVU]) VALUES (7, N'Sửa Footer')
INSERT [dbo].[TACVU] ([MATACVU], [TENTACVU]) VALUES (8, N'Xóa Footer')
INSERT [dbo].[TACVU] ([MATACVU], [TENTACVU]) VALUES (9, N'Xem danh sách sản phẩm')
INSERT [dbo].[TACVU] ([MATACVU], [TENTACVU]) VALUES (10, N'Thêm sản phẩm')
INSERT [dbo].[TACVU] ([MATACVU], [TENTACVU]) VALUES (11, N'Sửa sản phẩm')
INSERT [dbo].[TACVU] ([MATACVU], [TENTACVU]) VALUES (12, N'Xóa sản phẩm')
INSERT [dbo].[TACVU] ([MATACVU], [TENTACVU]) VALUES (13, N'Xem danh sách Roles')
INSERT [dbo].[TACVU] ([MATACVU], [TENTACVU]) VALUES (14, N'Thêm Roles')
INSERT [dbo].[TACVU] ([MATACVU], [TENTACVU]) VALUES (15, N'Sửa Roles')
INSERT [dbo].[TACVU] ([MATACVU], [TENTACVU]) VALUES (16, N'Xóa Roles')
INSERT [dbo].[TACVU] ([MATACVU], [TENTACVU]) VALUES (17, N'Xóa Role Actions')
INSERT [dbo].[TACVU] ([MATACVU], [TENTACVU]) VALUES (18, N'Thêm Role Actions')
INSERT [dbo].[TACVU] ([MATACVU], [TENTACVU]) VALUES (19, N'Xem danh sách Slider')
INSERT [dbo].[TACVU] ([MATACVU], [TENTACVU]) VALUES (20, N'Thêm Slider')
INSERT [dbo].[TACVU] ([MATACVU], [TENTACVU]) VALUES (21, N'Sửa Slider')
INSERT [dbo].[TACVU] ([MATACVU], [TENTACVU]) VALUES (22, N'Xóa Slider')
INSERT [dbo].[TACVU] ([MATACVU], [TENTACVU]) VALUES (23, N'Xem danh sách User')
INSERT [dbo].[TACVU] ([MATACVU], [TENTACVU]) VALUES (24, N'Thêm User')
INSERT [dbo].[TACVU] ([MATACVU], [TENTACVU]) VALUES (25, N'Sửa User')
INSERT [dbo].[TACVU] ([MATACVU], [TENTACVU]) VALUES (26, N'Xóa User')
INSERT [dbo].[TACVU] ([MATACVU], [TENTACVU]) VALUES (27, N'Xem danh sách trang giới thiệu')
INSERT [dbo].[TACVU] ([MATACVU], [TENTACVU]) VALUES (28, N'Thêm giới thiệu')
INSERT [dbo].[TACVU] ([MATACVU], [TENTACVU]) VALUES (29, N'Sửa giới thiệu')
INSERT [dbo].[TACVU] ([MATACVU], [TENTACVU]) VALUES (30, N'Xóa giới thiệu')
INSERT [dbo].[TACVU] ([MATACVU], [TENTACVU]) VALUES (31, N'Xem danh sách trang tin tức')
INSERT [dbo].[TACVU] ([MATACVU], [TENTACVU]) VALUES (32, N'Thêm tin tức')
INSERT [dbo].[TACVU] ([MATACVU], [TENTACVU]) VALUES (33, N'Sửa tin tức')
INSERT [dbo].[TACVU] ([MATACVU], [TENTACVU]) VALUES (34, N'Xóa tin tức')
INSERT [dbo].[TACVU] ([MATACVU], [TENTACVU]) VALUES (35, N'Xem đơn hàng')
INSERT [dbo].[TACVU] ([MATACVU], [TENTACVU]) VALUES (36, N'Cật nhật đơn hàng')
INSERT [dbo].[TACVU] ([MATACVU], [TENTACVU]) VALUES (37, N'Xem danh sách Banner')
INSERT [dbo].[TACVU] ([MATACVU], [TENTACVU]) VALUES (38, N'Thêm banner')
INSERT [dbo].[TACVU] ([MATACVU], [TENTACVU]) VALUES (39, N'Sửa Banner')
INSERT [dbo].[TACVU] ([MATACVU], [TENTACVU]) VALUES (40, N'Xóa Banner')
INSERT [dbo].[TACVU] ([MATACVU], [TENTACVU]) VALUES (41, N'Chi Tết Sản Phẩm')
INSERT [dbo].[TACVU] ([MATACVU], [TENTACVU]) VALUES (42, N'Xem danh sách dự án')
INSERT [dbo].[TACVU] ([MATACVU], [TENTACVU]) VALUES (43, N'Thêm dự án')
INSERT [dbo].[TACVU] ([MATACVU], [TENTACVU]) VALUES (44, N'Sửa dự án')
INSERT [dbo].[TACVU] ([MATACVU], [TENTACVU]) VALUES (45, N'Xóa dự án')
INSERT [dbo].[TACVU] ([MATACVU], [TENTACVU]) VALUES (46, N'Xem danh sách Báo giá')
INSERT [dbo].[TACVU] ([MATACVU], [TENTACVU]) VALUES (47, N'Sửa Danh Sách Báo giá')
INSERT [dbo].[TACVU] ([MATACVU], [TENTACVU]) VALUES (48, N'Xóa danh sách báo giá')
SET IDENTITY_INSERT [dbo].[TACVU] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__NGUOIDUN__730B099396DF095B]    Script Date: 14/04/2022 8:10:17 CH ******/
ALTER TABLE [dbo].[NGUOIDUNG] ADD UNIQUE NONCLUSTERED 
(
	[GMAIL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CHITIETTACVU]  WITH CHECK ADD FOREIGN KEY([MAQUYEN])
REFERENCES [dbo].[QUYEN] ([MAQUYEN])
GO
ALTER TABLE [dbo].[CHITIETTACVU]  WITH CHECK ADD FOREIGN KEY([MATACVU])
REFERENCES [dbo].[TACVU] ([MATACVU])
GO
ALTER TABLE [dbo].[CT_HOADON]  WITH CHECK ADD FOREIGN KEY([MAHD])
REFERENCES [dbo].[HOADON] ([MAHD])
GO
ALTER TABLE [dbo].[CT_HOADON]  WITH CHECK ADD FOREIGN KEY([MASANPHAM])
REFERENCES [dbo].[SANPHAM] ([MASANPHAM])
GO
ALTER TABLE [dbo].[CT_PHIEUMUA]  WITH CHECK ADD FOREIGN KEY([MAPHIEUMUA])
REFERENCES [dbo].[PHIEUMUA] ([MAPHIEUMUA])
GO
ALTER TABLE [dbo].[CT_PHIEUMUA]  WITH CHECK ADD FOREIGN KEY([MASANPHAM])
REFERENCES [dbo].[SANPHAM] ([MASANPHAM])
GO
ALTER TABLE [dbo].[HOADON]  WITH CHECK ADD FOREIGN KEY([MAPHIEUMUA])
REFERENCES [dbo].[PHIEUMUA] ([MAPHIEUMUA])
GO
ALTER TABLE [dbo].[NGUOIDUNG]  WITH CHECK ADD FOREIGN KEY([MAQUYEN])
REFERENCES [dbo].[QUYEN] ([MAQUYEN])
GO
ALTER TABLE [dbo].[PHIEUMUA]  WITH CHECK ADD FOREIGN KEY([USERNAME])
REFERENCES [dbo].[NGUOIDUNG] ([USERNAME])
GO
ALTER TABLE [dbo].[SANPHAM]  WITH CHECK ADD FOREIGN KEY([MALOAI])
REFERENCES [dbo].[LOAIMAY] ([MALOAI])
GO
ALTER TABLE [dbo].[SANPHAM]  WITH CHECK ADD FOREIGN KEY([MANCC])
REFERENCES [dbo].[NHACUNGCAP] ([MANCC])
GO
ALTER TABLE [dbo].[SANPHAM]  WITH CHECK ADD CHECK  (([GIABAN]>=(0)))
GO
USE [master]
GO
ALTER DATABASE [DigitalStore] SET  READ_WRITE 
GO
