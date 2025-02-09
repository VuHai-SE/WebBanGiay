USE [master]
GO
/****** Object:  Database [WEB_BAN_GIAY]    Script Date: 09/02/25 18:55:00 ******/
CREATE DATABASE [WEB_BAN_GIAY]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'WEB_BAN_GIAY', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.VUHAI\MSSQL\DATA\WEB_BAN_GIAY.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'WEB_BAN_GIAY_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.VUHAI\MSSQL\DATA\WEB_BAN_GIAY_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [WEB_BAN_GIAY] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [WEB_BAN_GIAY].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [WEB_BAN_GIAY] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [WEB_BAN_GIAY] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [WEB_BAN_GIAY] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [WEB_BAN_GIAY] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [WEB_BAN_GIAY] SET ARITHABORT OFF 
GO
ALTER DATABASE [WEB_BAN_GIAY] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [WEB_BAN_GIAY] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [WEB_BAN_GIAY] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [WEB_BAN_GIAY] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [WEB_BAN_GIAY] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [WEB_BAN_GIAY] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [WEB_BAN_GIAY] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [WEB_BAN_GIAY] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [WEB_BAN_GIAY] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [WEB_BAN_GIAY] SET  ENABLE_BROKER 
GO
ALTER DATABASE [WEB_BAN_GIAY] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [WEB_BAN_GIAY] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [WEB_BAN_GIAY] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [WEB_BAN_GIAY] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [WEB_BAN_GIAY] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [WEB_BAN_GIAY] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [WEB_BAN_GIAY] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [WEB_BAN_GIAY] SET RECOVERY FULL 
GO
ALTER DATABASE [WEB_BAN_GIAY] SET  MULTI_USER 
GO
ALTER DATABASE [WEB_BAN_GIAY] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [WEB_BAN_GIAY] SET DB_CHAINING OFF 
GO
ALTER DATABASE [WEB_BAN_GIAY] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [WEB_BAN_GIAY] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [WEB_BAN_GIAY] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [WEB_BAN_GIAY] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [WEB_BAN_GIAY] SET QUERY_STORE = OFF
GO
USE [WEB_BAN_GIAY]
GO
/****** Object:  Table [dbo].[chat_lieu]    Script Date: 09/02/25 18:55:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chat_lieu](
	[id_chat_lieu] [uniqueidentifier] NOT NULL,
	[ma] [varchar](50) NULL,
	[ten_chat_lieu] [nvarchar](255) NOT NULL,
	[ngay_tao] [date] NULL,
	[ngay_cap_nhat] [date] NULL,
	[mo_ta] [nvarchar](255) NULL,
	[trang_thai] [int] NULL,
 CONSTRAINT [PK__chat_lie__B66D25F390F59602] PRIMARY KEY CLUSTERED 
(
	[id_chat_lieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[chi_tiet_san_pham]    Script Date: 09/02/25 18:55:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chi_tiet_san_pham](
	[id_chi_tiet_san_pham] [uniqueidentifier] NOT NULL,
	[ma_chi_tiet_san_pham] [nvarchar](20) NOT NULL,
	[san_pham_id] [uniqueidentifier] NOT NULL,
	[kich_thuoc_id] [uniqueidentifier] NOT NULL,
	[mau_sac_id] [uniqueidentifier] NOT NULL,
	[chat_lieu_id] [uniqueidentifier] NOT NULL,
	[ngay_tao] [date] NULL,
	[ngay_cap_nhat] [date] NULL,
	[so_luong_ton] [int] NULL,
	[don_gia] [decimal](10, 2) NULL,
	[trang_thai] [int] NULL,
	[mo_ta] [nvarchar](255) NULL,
	[hinh_anh_id] [uniqueidentifier] NULL,
	[is_delete] [int] NULL,
 CONSTRAINT [PK__chi_tiet__F5455242EB8CB334] PRIMARY KEY CLUSTERED 
(
	[id_chi_tiet_san_pham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[chuc_vu]    Script Date: 09/02/25 18:55:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chuc_vu](
	[id_chuc_vu] [uniqueidentifier] NOT NULL,
	[ma] [varchar](50) NULL,
	[ten_chuc_vu] [nvarchar](255) NOT NULL,
	[ngay_tao] [date] NULL,
	[ngay_cap_nhat] [date] NULL,
	[mo_ta] [nvarchar](255) NULL,
	[trang_thai] [int] NULL,
 CONSTRAINT [PK__chuc_vu__C3C6BB2D414C6F05] PRIMARY KEY CLUSTERED 
(
	[id_chuc_vu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[danh_gia]    Script Date: 09/02/25 18:55:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[danh_gia](
	[id_danh_gia] [uniqueidentifier] NOT NULL,
	[ma] [varchar](50) NULL,
	[chi_tiet_san_pham_id] [uniqueidentifier] NULL,
	[khach_hang_id] [uniqueidentifier] NULL,
	[ghi_chu] [nvarchar](50) NULL,
 CONSTRAINT [PK__danh_gia__8C55D6B34CC350D5] PRIMARY KEY CLUSTERED 
(
	[id_danh_gia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dia_chi]    Script Date: 09/02/25 18:55:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dia_chi](
	[id_dia_chi] [uniqueidentifier] NOT NULL,
	[ma] [varchar](50) NULL,
	[dia_chi_chi_tiet] [nvarchar](50) NULL,
	[quan_huyen] [nvarchar](max) NULL,
	[phuong_xa] [nvarchar](50) NULL,
	[thanh_pho] [nvarchar](50) NULL,
	[khach_hang_id] [uniqueidentifier] NULL,
	[ngay_tao] [date] NULL,
	[ngay_cap_nhat] [date] NULL,
	[trang_thai] [int] NULL,
 CONSTRAINT [PK__dia_chi__9484151DC35012B8] PRIMARY KEY CLUSTERED 
(
	[id_dia_chi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[gio_hang_chi_tiet]    Script Date: 09/02/25 18:55:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gio_hang_chi_tiet](
	[id_gio_hang_chi_tiet] [uniqueidentifier] NOT NULL,
	[id_chi_tiet_san_pham] [uniqueidentifier] NULL,
	[so_luong] [int] NULL,
	[don_gia] [decimal](10, 2) NULL,
	[trang_thai] [int] NULL,
	[id_khach_hang] [uniqueidentifier] NULL,
 CONSTRAINT [PK__gio_hang__67D9D8DB43C11199] PRIMARY KEY CLUSTERED 
(
	[id_gio_hang_chi_tiet] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hinh_anh]    Script Date: 09/02/25 18:55:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hinh_anh](
	[id_hinh_anh] [uniqueidentifier] NOT NULL,
	[ma] [varchar](50) NULL,
	[ten_hinh_anh] [nvarchar](255) NOT NULL,
	[url_anh] [nvarchar](255) NOT NULL,
	[url_anh1] [nvarchar](255) NOT NULL,
	[url_anh2] [nvarchar](255) NOT NULL,
	[ngay_tao] [date] NULL,
	[ngay_cap_nhat] [date] NULL,
	[mo_ta] [nvarchar](255) NULL,
	[trang_thai] [int] NULL,
 CONSTRAINT [PK__hinh_anh__B62B4243FF3B7A7A] PRIMARY KEY CLUSTERED 
(
	[id_hinh_anh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hoa_don]    Script Date: 09/02/25 18:55:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hoa_don](
	[id_hoa_don] [uniqueidentifier] NOT NULL,
	[ma_hoa_don] [varchar](50) NULL,
	[ngay_tao] [datetime] NULL,
	[ngay_cap_nhat] [datetime] NULL,
	[nhan_vien_id] [uniqueidentifier] NULL,
	[khach_hang_id] [uniqueidentifier] NULL,
	[khuyen_mai_id] [uniqueidentifier] NULL,
	[ten_nguoi_nhan] [nvarchar](100) NULL,
	[sdt] [varchar](50) NULL,
	[dia_chi] [nvarchar](50) NULL,
	[tong_tien] [money] NULL,
	[phuong_thuc_thanh_toan] [int] NULL,
	[loai] [int] NULL,
	[ghi_chu] [nvarchar](max) NULL,
	[trang_thai] [int] NULL,
	[tien_mat] [money] NULL,
	[chuyen_khoan] [money] NULL,
	[tien_giam] [money] NULL,
	[tien_ship] [money] NULL,
 CONSTRAINT [PK__hoa_don__342B812A66836C5A] PRIMARY KEY CLUSTERED 
(
	[id_hoa_don] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hoa_don_chi_tiet]    Script Date: 09/02/25 18:55:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hoa_don_chi_tiet](
	[id_hoa_don_chi_tiet] [uniqueidentifier] NOT NULL,
	[hoa_don_id] [uniqueidentifier] NOT NULL,
	[chi_tiet_san_pham_id] [uniqueidentifier] NULL,
	[so_luong] [int] NOT NULL,
	[don_gia] [decimal](10, 2) NOT NULL,
	[trang_thai] [int] NULL,
 CONSTRAINT [PK__hoa_don___683F56944BFE0BE2] PRIMARY KEY CLUSTERED 
(
	[id_hoa_don_chi_tiet] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[khach_hang]    Script Date: 09/02/25 18:55:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[khach_hang](
	[id_khach_hang] [uniqueidentifier] NOT NULL,
	[ma] [varchar](50) NULL,
	[ten_khach_hang] [nvarchar](50) NOT NULL,
	[email] [varchar](255) NULL,
	[sdt] [varchar](255) NULL,
	[ngay_sinh] [date] NULL,
	[gioi_tinh] [bit] NULL,
	[ngay_tao] [date] NULL,
	[ngay_cap_nhat] [date] NULL,
	[trang_thai] [nvarchar](50) NULL,
	[tai_khoan] [nvarchar](50) NULL,
	[mat_khau] [nvarchar](32) NULL,
	[reset_code] [varchar](50) NULL,
 CONSTRAINT [PK__khach_ha__9B2CAEF3A03F8914] PRIMARY KEY CLUSTERED 
(
	[id_khach_hang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[khuyen_mai]    Script Date: 09/02/25 18:55:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[khuyen_mai](
	[id_khuyen_mai] [uniqueidentifier] NOT NULL,
	[ma] [varchar](50) NULL,
	[ten_khuyen_mai] [nvarchar](100) NOT NULL,
	[gia_tri_giam] [decimal](10, 2) NOT NULL,
	[loai_khuyen_mai] [int] NULL,
	[ngay_tao] [date] NULL,
	[ngay_cap_nhat] [date] NULL,
	[mo_ta] [nvarchar](255) NULL,
	[trang_thai] [int] NULL,
	[ngay_bat_dau] [bigint] NULL,
	[ngay_ket_thuc] [bigint] NULL,
	[dieu_kien_gia] [decimal](38, 0) NULL,
 CONSTRAINT [PK__khuyen_m__E5173E98F09D7DD3] PRIMARY KEY CLUSTERED 
(
	[id_khuyen_mai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[kich_thuoc]    Script Date: 09/02/25 18:55:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[kich_thuoc](
	[id_kich_thuoc] [uniqueidentifier] NOT NULL,
	[ma] [varchar](50) NULL,
	[ten_kich_thuoc] [nvarchar](255) NOT NULL,
	[ngay_tao] [date] NULL,
	[ngay_cap_nhat] [date] NULL,
	[mo_ta] [nvarchar](255) NULL,
	[trang_thai] [int] NULL,
 CONSTRAINT [PK__kich_thu__CA778371C373824E] PRIMARY KEY CLUSTERED 
(
	[id_kich_thuoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lich_su_trang_thai]    Script Date: 09/02/25 18:55:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lich_su_trang_thai](
	[id] [uniqueidentifier] NOT NULL,
	[ngay_tao] [datetime] NULL,
	[ngay_cap_nhat] [datetime] NULL,
	[trang_thai] [int] NULL,
	[hoa_don_id] [uniqueidentifier] NULL,
	[is_delete] [int] NULL,
 CONSTRAINT [lich_su_trang_thai_pk] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[loai]    Script Date: 09/02/25 18:55:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[loai](
	[id_loai] [uniqueidentifier] NOT NULL,
	[ma] [varchar](50) NULL,
	[ten_loai] [nvarchar](255) NOT NULL,
	[ngay_tao] [date] NULL,
	[ngay_cap_nhat] [date] NULL,
	[mo_ta] [nvarchar](255) NULL,
	[trang_thai] [int] NULL,
 CONSTRAINT [PK__loai__9A03AA7255AE0E46] PRIMARY KEY CLUSTERED 
(
	[id_loai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[mau_sac]    Script Date: 09/02/25 18:55:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mau_sac](
	[id_mau_sac] [uniqueidentifier] NOT NULL,
	[ma] [varchar](50) NULL,
	[ten_mau_sac] [nvarchar](255) NOT NULL,
	[ngay_tao] [date] NULL,
	[ngay_cap_nhat] [date] NULL,
	[mo_ta] [nvarchar](255) NULL,
	[trang_thai] [int] NULL,
 CONSTRAINT [PK__mau_sac__5D8EF426D174C13F] PRIMARY KEY CLUSTERED 
(
	[id_mau_sac] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[nhan_vien]    Script Date: 09/02/25 18:55:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nhan_vien](
	[id_nhan_vien] [uniqueidentifier] NOT NULL,
	[ma] [varchar](50) NULL,
	[ten_nhan_vien] [nvarchar](50) NOT NULL,
	[email] [varchar](255) NULL,
	[sdt] [int] NULL,
	[ngay_sinh] [date] NULL,
	[gioi_tinh] [bit] NULL,
	[dia_chi] [nvarchar](150) NULL,
	[cccd] [varchar](20) NULL,
	[hinh_anh] [nvarchar](255) NULL,
	[tai_khoan] [nvarchar](50) NULL,
	[mat_khau] [nvarchar](32) NULL,
	[ngay_tao] [date] NULL,
	[ngay_cap_nhat] [date] NULL,
	[trang_thai] [int] NULL,
	[chuc_vu_id] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK__nhan_vie__2BE021006972A3F3] PRIMARY KEY CLUSTERED 
(
	[id_nhan_vien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[san_pham]    Script Date: 09/02/25 18:55:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[san_pham](
	[id_san_pham] [uniqueidentifier] NOT NULL,
	[ma_san_pham] [nvarchar](20) NOT NULL,
	[ten_san_pham] [nvarchar](150) NOT NULL,
	[id_hinh_anh] [uniqueidentifier] NOT NULL,
	[id_loai] [uniqueidentifier] NULL,
	[id_thuong_hieu] [uniqueidentifier] NULL,
	[ngay_tao] [date] NULL,
	[ngay_cap_nhat] [date] NULL,
	[mo_ta] [nvarchar](255) NULL,
	[trang_thai] [int] NULL,
 CONSTRAINT [PK__san_pham__5776A5292C97CB24] PRIMARY KEY CLUSTERED 
(
	[id_san_pham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[thuong_hieu]    Script Date: 09/02/25 18:55:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[thuong_hieu](
	[id_thuong_hieu] [uniqueidentifier] NOT NULL,
	[ma] [varchar](50) NULL,
	[ten_thuong_hieu] [nvarchar](255) NOT NULL,
	[xuat_su] [nvarchar](50) NULL,
	[ngay_tao] [date] NULL,
	[ngay_cap_nhat] [date] NULL,
	[mo_ta] [nvarchar](255) NULL,
 CONSTRAINT [PK__thuong_h__37E13EF3118F64B7] PRIMARY KEY CLUSTERED 
(
	[id_thuong_hieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[chat_lieu] ([id_chat_lieu], [ma], [ten_chat_lieu], [ngay_tao], [ngay_cap_nhat], [mo_ta], [trang_thai]) VALUES (N'd47f4b8f-09ad-47f5-9cc8-55131e0df9fc', N'CL2', N'Da Nubuck ', CAST(N'2024-05-18' AS Date), NULL, N'Đẹp', 0)
INSERT [dbo].[chat_lieu] ([id_chat_lieu], [ma], [ten_chat_lieu], [ngay_tao], [ngay_cap_nhat], [mo_ta], [trang_thai]) VALUES (N'87c66e05-8894-43a0-9c27-6f7120f72b3b', N'CL1', N'Vải canvas', CAST(N'2024-05-18' AS Date), NULL, N'Đẹp', 0)
INSERT [dbo].[chat_lieu] ([id_chat_lieu], [ma], [ten_chat_lieu], [ngay_tao], [ngay_cap_nhat], [mo_ta], [trang_thai]) VALUES (N'adfe5513-7f15-433e-bb04-820bf0cc8151', N'CL3', N'Vải Denim', CAST(N'2024-05-18' AS Date), NULL, N'Đẹp', 0)
GO
INSERT [dbo].[chi_tiet_san_pham] ([id_chi_tiet_san_pham], [ma_chi_tiet_san_pham], [san_pham_id], [kich_thuoc_id], [mau_sac_id], [chat_lieu_id], [ngay_tao], [ngay_cap_nhat], [so_luong_ton], [don_gia], [trang_thai], [mo_ta], [hinh_anh_id], [is_delete]) VALUES (N'8b7ae793-c4d3-4c75-b972-02edc652d45c', N'CTSP48', N'badef8ca-3df8-4dd1-aa97-4fb22bbaa15c', N'c68e70fa-22e5-4421-9c37-f72df800bfc3', N'96286c3c-239d-4151-bf8b-ae65b141c2d9', N'adfe5513-7f15-433e-bb04-820bf0cc8151', CAST(N'2025-01-10' AS Date), NULL, 93, CAST(390000.00 AS Decimal(10, 2)), 1, N'Sản phẩm đẹp', N'8b921e65-2321-401b-9fd2-6bc3d7713188', 1)
INSERT [dbo].[chi_tiet_san_pham] ([id_chi_tiet_san_pham], [ma_chi_tiet_san_pham], [san_pham_id], [kich_thuoc_id], [mau_sac_id], [chat_lieu_id], [ngay_tao], [ngay_cap_nhat], [so_luong_ton], [don_gia], [trang_thai], [mo_ta], [hinh_anh_id], [is_delete]) VALUES (N'4cc07fba-6140-48c7-9e5b-032a7c290242', N'CTSP19', N'b85bb4da-ad83-4c24-be3f-8b937cc3c1f5', N'f3904392-1919-4b61-9125-ea0044820fcc', N'7bf12f2d-61f1-4aa0-af30-7d4a0ac5b032', N'adfe5513-7f15-433e-bb04-820bf0cc8151', CAST(N'2024-05-20' AS Date), NULL, 97, CAST(250000.00 AS Decimal(10, 2)), 1, N'Sản phẩm đẹp', N'87b25c7f-c5ca-4c7e-9b17-3555818d19e8', 1)
INSERT [dbo].[chi_tiet_san_pham] ([id_chi_tiet_san_pham], [ma_chi_tiet_san_pham], [san_pham_id], [kich_thuoc_id], [mau_sac_id], [chat_lieu_id], [ngay_tao], [ngay_cap_nhat], [so_luong_ton], [don_gia], [trang_thai], [mo_ta], [hinh_anh_id], [is_delete]) VALUES (N'ef89ad40-47e4-48cc-845b-159ddc14c81c', N'CTSP13', N'8cb9827b-38b1-4962-962b-7645a1febd8f', N'43075d6d-ef7c-46da-aef2-9758ca3e1cf9', N'0b9109e1-281e-42f2-a33f-457305a880ad', N'87c66e05-8894-43a0-9c27-6f7120f72b3b', CAST(N'2024-05-20' AS Date), NULL, 99, CAST(300000.00 AS Decimal(10, 2)), 1, N'Sản phẩm đẹp', N'2ecec9fd-6b29-4f0a-b930-a24a7696b27f', 1)
INSERT [dbo].[chi_tiet_san_pham] ([id_chi_tiet_san_pham], [ma_chi_tiet_san_pham], [san_pham_id], [kich_thuoc_id], [mau_sac_id], [chat_lieu_id], [ngay_tao], [ngay_cap_nhat], [so_luong_ton], [don_gia], [trang_thai], [mo_ta], [hinh_anh_id], [is_delete]) VALUES (N'38cbe0fb-ae45-410d-9052-16281b6eba26', N'CTSP35', N'badef8ca-3df8-4dd1-aa97-4fb22bbaa15c', N'c2426580-e5a6-4034-a7e4-1beb5e0aa561', N'7bf12f2d-61f1-4aa0-af30-7d4a0ac5b032', N'adfe5513-7f15-433e-bb04-820bf0cc8151', CAST(N'2025-01-10' AS Date), NULL, 98, CAST(400000.00 AS Decimal(10, 2)), 1, N'Sản phẩm đẹp', N'7f20c154-2b72-42e6-b22a-8bd2eede7d26', 1)
INSERT [dbo].[chi_tiet_san_pham] ([id_chi_tiet_san_pham], [ma_chi_tiet_san_pham], [san_pham_id], [kich_thuoc_id], [mau_sac_id], [chat_lieu_id], [ngay_tao], [ngay_cap_nhat], [so_luong_ton], [don_gia], [trang_thai], [mo_ta], [hinh_anh_id], [is_delete]) VALUES (N'cf571483-6f87-45bf-ba28-1e4c5c6263c2', N'CTSP25', N'117b9101-19a5-4ea6-b124-c4249268d171', N'43075d6d-ef7c-46da-aef2-9758ca3e1cf9', N'090cd8ca-7433-4b11-89d6-e3bdd7385883', N'd47f4b8f-09ad-47f5-9cc8-55131e0df9fc', CAST(N'2024-05-20' AS Date), NULL, 98, CAST(200000.00 AS Decimal(10, 2)), 1, N'Sản phẩm đẹp', N'e0bd0eff-45e1-4cb0-9aea-8523f8e2c1e3', 1)
INSERT [dbo].[chi_tiet_san_pham] ([id_chi_tiet_san_pham], [ma_chi_tiet_san_pham], [san_pham_id], [kich_thuoc_id], [mau_sac_id], [chat_lieu_id], [ngay_tao], [ngay_cap_nhat], [so_luong_ton], [don_gia], [trang_thai], [mo_ta], [hinh_anh_id], [is_delete]) VALUES (N'e93e95f8-425f-4b2c-94ef-2c8e8e1dc83a', N'CTSP31', N'664c44bb-7e2a-43d6-a6ea-e8d954721441', N'c68e70fa-22e5-4421-9c37-f72df800bfc3', N'0b9109e1-281e-42f2-a33f-457305a880ad', N'd47f4b8f-09ad-47f5-9cc8-55131e0df9fc', CAST(N'2024-05-20' AS Date), NULL, 100, CAST(500000.00 AS Decimal(10, 2)), 1, N'Sản phẩm đẹp', N'15a84d18-ef46-4401-96d1-4c273954e1ec', 1)
INSERT [dbo].[chi_tiet_san_pham] ([id_chi_tiet_san_pham], [ma_chi_tiet_san_pham], [san_pham_id], [kich_thuoc_id], [mau_sac_id], [chat_lieu_id], [ngay_tao], [ngay_cap_nhat], [so_luong_ton], [don_gia], [trang_thai], [mo_ta], [hinh_anh_id], [is_delete]) VALUES (N'b132497c-d283-41f7-9c20-35513f5826de', N'CTSP25', N'117b9101-19a5-4ea6-b124-c4249268d171', N'43075d6d-ef7c-46da-aef2-9758ca3e1cf9', N'0b9109e1-281e-42f2-a33f-457305a880ad', N'd47f4b8f-09ad-47f5-9cc8-55131e0df9fc', CAST(N'2024-05-20' AS Date), NULL, 100, CAST(200000.00 AS Decimal(10, 2)), 1, N'Sản phẩm đẹp', N'32dcca62-9dad-4490-80d7-8bcb0a98acbe', 1)
INSERT [dbo].[chi_tiet_san_pham] ([id_chi_tiet_san_pham], [ma_chi_tiet_san_pham], [san_pham_id], [kich_thuoc_id], [mau_sac_id], [chat_lieu_id], [ngay_tao], [ngay_cap_nhat], [so_luong_ton], [don_gia], [trang_thai], [mo_ta], [hinh_anh_id], [is_delete]) VALUES (N'cdc51911-43ce-4ed1-b5db-36aaef61b9b6', N'CTSP19', N'b85bb4da-ad83-4c24-be3f-8b937cc3c1f5', N'c68e70fa-22e5-4421-9c37-f72df800bfc3', N'090cd8ca-7433-4b11-89d6-e3bdd7385883', N'adfe5513-7f15-433e-bb04-820bf0cc8151', CAST(N'2024-05-20' AS Date), NULL, 100, CAST(250000.00 AS Decimal(10, 2)), 1, N'Sản phẩm đẹp', N'856e7c14-587c-4379-bb7c-e95b84d2bbed', 0)
INSERT [dbo].[chi_tiet_san_pham] ([id_chi_tiet_san_pham], [ma_chi_tiet_san_pham], [san_pham_id], [kich_thuoc_id], [mau_sac_id], [chat_lieu_id], [ngay_tao], [ngay_cap_nhat], [so_luong_ton], [don_gia], [trang_thai], [mo_ta], [hinh_anh_id], [is_delete]) VALUES (N'a1804509-0305-4ec9-a5ae-3a64ca92e6c7', N'CTSP1', N'badef8ca-3df8-4dd1-aa97-4fb22bbaa15c', N'f3904392-1919-4b61-9125-ea0044820fcc', N'7bf12f2d-61f1-4aa0-af30-7d4a0ac5b032', N'adfe5513-7f15-433e-bb04-820bf0cc8151', CAST(N'2025-01-10' AS Date), NULL, 100, CAST(400000.00 AS Decimal(10, 2)), 1, N'Sản phẩm đẹp', N'4e0ab518-fcc4-4ec1-9d95-eb36779841d5', 1)
INSERT [dbo].[chi_tiet_san_pham] ([id_chi_tiet_san_pham], [ma_chi_tiet_san_pham], [san_pham_id], [kich_thuoc_id], [mau_sac_id], [chat_lieu_id], [ngay_tao], [ngay_cap_nhat], [so_luong_ton], [don_gia], [trang_thai], [mo_ta], [hinh_anh_id], [is_delete]) VALUES (N'dcd8e0f9-5e36-494b-9c26-401eeb80236a', N'CTSP25', N'117b9101-19a5-4ea6-b124-c4249268d171', N'32927375-d276-4e16-af02-663eb05a4935', N'0b9109e1-281e-42f2-a33f-457305a880ad', N'd47f4b8f-09ad-47f5-9cc8-55131e0df9fc', CAST(N'2024-05-20' AS Date), NULL, 100, CAST(200000.00 AS Decimal(10, 2)), 1, N'Sản phẩm đẹp', N'9883cc41-694b-4272-bc86-d097c6dcfeb3', 1)
INSERT [dbo].[chi_tiet_san_pham] ([id_chi_tiet_san_pham], [ma_chi_tiet_san_pham], [san_pham_id], [kich_thuoc_id], [mau_sac_id], [chat_lieu_id], [ngay_tao], [ngay_cap_nhat], [so_luong_ton], [don_gia], [trang_thai], [mo_ta], [hinh_anh_id], [is_delete]) VALUES (N'8e9c9693-2865-4e7f-b011-44f0b65e56f3', N'CTSP40', N'9234209d-a2f1-4f08-8a43-a84406b22265', N'c9229c79-cd02-489a-ae4e-4c9889ad466c', N'0b9109e1-281e-42f2-a33f-457305a880ad', N'd47f4b8f-09ad-47f5-9cc8-55131e0df9fc', CAST(N'2024-05-20' AS Date), NULL, 100, CAST(450000.00 AS Decimal(10, 2)), 1, N'Sản phẩm đẹp', N'76e5cdab-4622-4442-ac01-3981ae759c5d', 0)
INSERT [dbo].[chi_tiet_san_pham] ([id_chi_tiet_san_pham], [ma_chi_tiet_san_pham], [san_pham_id], [kich_thuoc_id], [mau_sac_id], [chat_lieu_id], [ngay_tao], [ngay_cap_nhat], [so_luong_ton], [don_gia], [trang_thai], [mo_ta], [hinh_anh_id], [is_delete]) VALUES (N'2c61db6a-2da0-461c-9ff2-4916d1bc1278', N'CTSP1', N'badef8ca-3df8-4dd1-aa97-4fb22bbaa15c', N'c68e70fa-22e5-4421-9c37-f72df800bfc3', N'a5509730-ca25-4e0c-9fdb-9917f8c579dd', N'adfe5513-7f15-433e-bb04-820bf0cc8151', CAST(N'2025-01-10' AS Date), NULL, 100, CAST(400000.00 AS Decimal(10, 2)), 1, N'Sản phẩm đẹp', N'36342bd9-f109-4fe8-a26a-3de3b324c2ce', 1)
INSERT [dbo].[chi_tiet_san_pham] ([id_chi_tiet_san_pham], [ma_chi_tiet_san_pham], [san_pham_id], [kich_thuoc_id], [mau_sac_id], [chat_lieu_id], [ngay_tao], [ngay_cap_nhat], [so_luong_ton], [don_gia], [trang_thai], [mo_ta], [hinh_anh_id], [is_delete]) VALUES (N'2d6ab360-cb6c-45ef-a529-501bf3be35a3', N'CTSP1', N'badef8ca-3df8-4dd1-aa97-4fb22bbaa15c', N'f3904392-1919-4b61-9125-ea0044820fcc', N'a5509730-ca25-4e0c-9fdb-9917f8c579dd', N'adfe5513-7f15-433e-bb04-820bf0cc8151', CAST(N'2025-01-10' AS Date), NULL, 100, CAST(400000.00 AS Decimal(10, 2)), 1, N'Sản phẩm đẹp', N'ccaa76a0-ba74-4a72-a555-179a978efcc8', 1)
INSERT [dbo].[chi_tiet_san_pham] ([id_chi_tiet_san_pham], [ma_chi_tiet_san_pham], [san_pham_id], [kich_thuoc_id], [mau_sac_id], [chat_lieu_id], [ngay_tao], [ngay_cap_nhat], [so_luong_ton], [don_gia], [trang_thai], [mo_ta], [hinh_anh_id], [is_delete]) VALUES (N'90aa9dad-311a-4c06-aa1e-546bd45171da', N'CTSP49', N'f1f0e4d0-646e-43cd-8258-53d4a8780aa3', N'c68e70fa-22e5-4421-9c37-f72df800bfc3', N'7bf12f2d-61f1-4aa0-af30-7d4a0ac5b032', N'd47f4b8f-09ad-47f5-9cc8-55131e0df9fc', CAST(N'2024-05-21' AS Date), NULL, 25, CAST(200000.00 AS Decimal(10, 2)), 1, N'Sản phẩm đẹp', N'3f7a6e8e-b4e4-41cf-a1bc-c901873d8c56', 1)
INSERT [dbo].[chi_tiet_san_pham] ([id_chi_tiet_san_pham], [ma_chi_tiet_san_pham], [san_pham_id], [kich_thuoc_id], [mau_sac_id], [chat_lieu_id], [ngay_tao], [ngay_cap_nhat], [so_luong_ton], [don_gia], [trang_thai], [mo_ta], [hinh_anh_id], [is_delete]) VALUES (N'2733b202-2f89-4ee6-8d4c-579e5c0def4a', N'CTSP7', N'b80d4e83-9bee-4933-837d-a87c78353f47', N'32927375-d276-4e16-af02-663eb05a4935', N'96286c3c-239d-4151-bf8b-ae65b141c2d9', N'adfe5513-7f15-433e-bb04-820bf0cc8151', CAST(N'2024-05-20' AS Date), NULL, 100, CAST(350000.00 AS Decimal(10, 2)), 1, N'Sản phẩm đẹp', N'4db732d6-a3ae-414a-bc90-7b2c0e4afd2c', 0)
INSERT [dbo].[chi_tiet_san_pham] ([id_chi_tiet_san_pham], [ma_chi_tiet_san_pham], [san_pham_id], [kich_thuoc_id], [mau_sac_id], [chat_lieu_id], [ngay_tao], [ngay_cap_nhat], [so_luong_ton], [don_gia], [trang_thai], [mo_ta], [hinh_anh_id], [is_delete]) VALUES (N'f386f89f-a08b-4be9-a04f-5ca01ea770f1', N'CTSP35', N'badef8ca-3df8-4dd1-aa97-4fb22bbaa15c', N'c2426580-e5a6-4034-a7e4-1beb5e0aa561', N'0b9109e1-281e-42f2-a33f-457305a880ad', N'adfe5513-7f15-433e-bb04-820bf0cc8151', CAST(N'2025-01-10' AS Date), NULL, 100, CAST(400000.00 AS Decimal(10, 2)), 1, N'Sản phẩm đẹp', N'998d27a2-5732-41f6-9cdc-99fbd23f8188', 1)
INSERT [dbo].[chi_tiet_san_pham] ([id_chi_tiet_san_pham], [ma_chi_tiet_san_pham], [san_pham_id], [kich_thuoc_id], [mau_sac_id], [chat_lieu_id], [ngay_tao], [ngay_cap_nhat], [so_luong_ton], [don_gia], [trang_thai], [mo_ta], [hinh_anh_id], [is_delete]) VALUES (N'11d824a1-1b6d-440c-820b-5dab6453b088', N'CTSP7', N'b80d4e83-9bee-4933-837d-a87c78353f47', N'c2426580-e5a6-4034-a7e4-1beb5e0aa561', N'090cd8ca-7433-4b11-89d6-e3bdd7385883', N'adfe5513-7f15-433e-bb04-820bf0cc8151', CAST(N'2024-05-20' AS Date), NULL, 106, CAST(350000.00 AS Decimal(10, 2)), 1, N'Sản phẩm đẹp', N'7bde331d-7d59-4ad5-86a5-93678ce7d4fb', 1)
INSERT [dbo].[chi_tiet_san_pham] ([id_chi_tiet_san_pham], [ma_chi_tiet_san_pham], [san_pham_id], [kich_thuoc_id], [mau_sac_id], [chat_lieu_id], [ngay_tao], [ngay_cap_nhat], [so_luong_ton], [don_gia], [trang_thai], [mo_ta], [hinh_anh_id], [is_delete]) VALUES (N'e9c100b3-6ff0-4b91-a046-5e57415346a9', N'CTSP19', N'b85bb4da-ad83-4c24-be3f-8b937cc3c1f5', N'c68e70fa-22e5-4421-9c37-f72df800bfc3', N'7bf12f2d-61f1-4aa0-af30-7d4a0ac5b032', N'adfe5513-7f15-433e-bb04-820bf0cc8151', CAST(N'2024-05-20' AS Date), NULL, 100, CAST(250000.00 AS Decimal(10, 2)), 1, N'Sản phẩm đẹp', N'b0cd618e-c8f5-41af-a607-0eb41a8e69c4', 0)
INSERT [dbo].[chi_tiet_san_pham] ([id_chi_tiet_san_pham], [ma_chi_tiet_san_pham], [san_pham_id], [kich_thuoc_id], [mau_sac_id], [chat_lieu_id], [ngay_tao], [ngay_cap_nhat], [so_luong_ton], [don_gia], [trang_thai], [mo_ta], [hinh_anh_id], [is_delete]) VALUES (N'09ca21b6-aace-40cd-9044-72fca06a373e', N'CTSP7', N'b80d4e83-9bee-4933-837d-a87c78353f47', N'32927375-d276-4e16-af02-663eb05a4935', N'090cd8ca-7433-4b11-89d6-e3bdd7385883', N'adfe5513-7f15-433e-bb04-820bf0cc8151', CAST(N'2024-05-20' AS Date), NULL, 100, CAST(350000.00 AS Decimal(10, 2)), 1, N'Sản phẩm đẹp', N'fabe782e-1180-4267-8fbc-a12328bc0ef2', 0)
INSERT [dbo].[chi_tiet_san_pham] ([id_chi_tiet_san_pham], [ma_chi_tiet_san_pham], [san_pham_id], [kich_thuoc_id], [mau_sac_id], [chat_lieu_id], [ngay_tao], [ngay_cap_nhat], [so_luong_ton], [don_gia], [trang_thai], [mo_ta], [hinh_anh_id], [is_delete]) VALUES (N'99c0fada-e770-4c75-aad1-75cb4acc7dd6', N'CTSP49', N'f1f0e4d0-646e-43cd-8258-53d4a8780aa3', N'f3904392-1919-4b61-9125-ea0044820fcc', N'0b9109e1-281e-42f2-a33f-457305a880ad', N'd47f4b8f-09ad-47f5-9cc8-55131e0df9fc', CAST(N'2024-05-21' AS Date), NULL, 30, CAST(200000.00 AS Decimal(10, 2)), 1, N'Sản phẩm đẹp', N'30acff6c-5891-48cc-8b3d-d326ae63843e', 1)
INSERT [dbo].[chi_tiet_san_pham] ([id_chi_tiet_san_pham], [ma_chi_tiet_san_pham], [san_pham_id], [kich_thuoc_id], [mau_sac_id], [chat_lieu_id], [ngay_tao], [ngay_cap_nhat], [so_luong_ton], [don_gia], [trang_thai], [mo_ta], [hinh_anh_id], [is_delete]) VALUES (N'fd833d82-8da8-42ea-800b-77111e09f8c4', N'CTSP25', N'117b9101-19a5-4ea6-b124-c4249268d171', N'c9229c79-cd02-489a-ae4e-4c9889ad466c', N'090cd8ca-7433-4b11-89d6-e3bdd7385883', N'd47f4b8f-09ad-47f5-9cc8-55131e0df9fc', CAST(N'2024-05-20' AS Date), NULL, 100, CAST(200000.00 AS Decimal(10, 2)), 1, N'Sản phẩm đẹp', N'53d08386-5e26-476e-b9c9-c740357d8e1d', 1)
INSERT [dbo].[chi_tiet_san_pham] ([id_chi_tiet_san_pham], [ma_chi_tiet_san_pham], [san_pham_id], [kich_thuoc_id], [mau_sac_id], [chat_lieu_id], [ngay_tao], [ngay_cap_nhat], [so_luong_ton], [don_gia], [trang_thai], [mo_ta], [hinh_anh_id], [is_delete]) VALUES (N'b020a1a2-be7b-40a3-8548-7713cafb0492', N'CTSP40', N'9234209d-a2f1-4f08-8a43-a84406b22265', N'c9229c79-cd02-489a-ae4e-4c9889ad466c', N'090cd8ca-7433-4b11-89d6-e3bdd7385883', N'd47f4b8f-09ad-47f5-9cc8-55131e0df9fc', CAST(N'2024-05-20' AS Date), NULL, 100, CAST(450000.00 AS Decimal(10, 2)), 1, N'Sản phẩm đẹp', N'2a3290d8-84b1-4220-a284-b8bd489bd5d9', 0)
INSERT [dbo].[chi_tiet_san_pham] ([id_chi_tiet_san_pham], [ma_chi_tiet_san_pham], [san_pham_id], [kich_thuoc_id], [mau_sac_id], [chat_lieu_id], [ngay_tao], [ngay_cap_nhat], [so_luong_ton], [don_gia], [trang_thai], [mo_ta], [hinh_anh_id], [is_delete]) VALUES (N'28ce472a-c3db-4039-bcf2-7894c2552366', N'CTSP44', N'a48c72aa-824a-4234-a707-dc954c1d00e5', N'32927375-d276-4e16-af02-663eb05a4935', N'96286c3c-239d-4151-bf8b-ae65b141c2d9', N'adfe5513-7f15-433e-bb04-820bf0cc8151', CAST(N'2024-05-20' AS Date), NULL, 100, CAST(200000.00 AS Decimal(10, 2)), 1, N'Sản phẩm đẹp', N'399c0ff8-322c-4cc0-8108-5e1b1be6a428', 1)
INSERT [dbo].[chi_tiet_san_pham] ([id_chi_tiet_san_pham], [ma_chi_tiet_san_pham], [san_pham_id], [kich_thuoc_id], [mau_sac_id], [chat_lieu_id], [ngay_tao], [ngay_cap_nhat], [so_luong_ton], [don_gia], [trang_thai], [mo_ta], [hinh_anh_id], [is_delete]) VALUES (N'28843894-d11a-472c-9f30-80a4a978b008', N'CTSP40', N'9234209d-a2f1-4f08-8a43-a84406b22265', N'32927375-d276-4e16-af02-663eb05a4935', N'0b9109e1-281e-42f2-a33f-457305a880ad', N'd47f4b8f-09ad-47f5-9cc8-55131e0df9fc', CAST(N'2024-05-20' AS Date), NULL, 100, CAST(450000.00 AS Decimal(10, 2)), 1, N'Sản phẩm đẹp', N'7fdb57a9-5edb-4893-8665-e9e81b261dd0', 0)
INSERT [dbo].[chi_tiet_san_pham] ([id_chi_tiet_san_pham], [ma_chi_tiet_san_pham], [san_pham_id], [kich_thuoc_id], [mau_sac_id], [chat_lieu_id], [ngay_tao], [ngay_cap_nhat], [so_luong_ton], [don_gia], [trang_thai], [mo_ta], [hinh_anh_id], [is_delete]) VALUES (N'f6c68490-28cd-4f8b-99a9-8117619e5210', N'CTSP31', N'664c44bb-7e2a-43d6-a6ea-e8d954721441', N'c68e70fa-22e5-4421-9c37-f72df800bfc3', N'7bf12f2d-61f1-4aa0-af30-7d4a0ac5b032', N'd47f4b8f-09ad-47f5-9cc8-55131e0df9fc', CAST(N'2024-05-20' AS Date), NULL, 100, CAST(500000.00 AS Decimal(10, 2)), 1, N'Sản phẩm đẹp', N'ac2f936a-d7b3-43de-ad21-5cc2e5b639d4', 1)
INSERT [dbo].[chi_tiet_san_pham] ([id_chi_tiet_san_pham], [ma_chi_tiet_san_pham], [san_pham_id], [kich_thuoc_id], [mau_sac_id], [chat_lieu_id], [ngay_tao], [ngay_cap_nhat], [so_luong_ton], [don_gia], [trang_thai], [mo_ta], [hinh_anh_id], [is_delete]) VALUES (N'49b8afa6-e319-4f7b-a615-859a10951219', N'CTSP25', N'117b9101-19a5-4ea6-b124-c4249268d171', N'c9229c79-cd02-489a-ae4e-4c9889ad466c', N'0b9109e1-281e-42f2-a33f-457305a880ad', N'd47f4b8f-09ad-47f5-9cc8-55131e0df9fc', CAST(N'2024-05-20' AS Date), NULL, 100, CAST(200000.00 AS Decimal(10, 2)), 1, N'Sản phẩm đẹp', N'ab9f6780-6958-4662-a603-d882ef54551b', 1)
INSERT [dbo].[chi_tiet_san_pham] ([id_chi_tiet_san_pham], [ma_chi_tiet_san_pham], [san_pham_id], [kich_thuoc_id], [mau_sac_id], [chat_lieu_id], [ngay_tao], [ngay_cap_nhat], [so_luong_ton], [don_gia], [trang_thai], [mo_ta], [hinh_anh_id], [is_delete]) VALUES (N'0f398114-e028-4630-8575-87c29697c45f', N'CTSP49', N'f1f0e4d0-646e-43cd-8258-53d4a8780aa3', N'f3904392-1919-4b61-9125-ea0044820fcc', N'7bf12f2d-61f1-4aa0-af30-7d4a0ac5b032', N'd47f4b8f-09ad-47f5-9cc8-55131e0df9fc', CAST(N'2024-05-21' AS Date), NULL, 30, CAST(200000.00 AS Decimal(10, 2)), 1, N'Sản phẩm đẹp', N'ac0a9ba1-c509-4158-b22a-d086b22ff486', 1)
INSERT [dbo].[chi_tiet_san_pham] ([id_chi_tiet_san_pham], [ma_chi_tiet_san_pham], [san_pham_id], [kich_thuoc_id], [mau_sac_id], [chat_lieu_id], [ngay_tao], [ngay_cap_nhat], [so_luong_ton], [don_gia], [trang_thai], [mo_ta], [hinh_anh_id], [is_delete]) VALUES (N'dc48bcac-03b0-4aa0-8e5b-8874335a7e37', N'CTSP19', N'b85bb4da-ad83-4c24-be3f-8b937cc3c1f5', N'c2426580-e5a6-4034-a7e4-1beb5e0aa561', N'090cd8ca-7433-4b11-89d6-e3bdd7385883', N'adfe5513-7f15-433e-bb04-820bf0cc8151', CAST(N'2024-05-20' AS Date), NULL, 100, CAST(250000.00 AS Decimal(10, 2)), 1, N'Sản phẩm đẹp', N'9fb02139-de6d-4cd3-9179-7fca60384b83', 1)
INSERT [dbo].[chi_tiet_san_pham] ([id_chi_tiet_san_pham], [ma_chi_tiet_san_pham], [san_pham_id], [kich_thuoc_id], [mau_sac_id], [chat_lieu_id], [ngay_tao], [ngay_cap_nhat], [so_luong_ton], [don_gia], [trang_thai], [mo_ta], [hinh_anh_id], [is_delete]) VALUES (N'ff544f7e-82a6-41b8-bb58-8b8f316f45d9', N'CTSP36', N'a1c44f76-aaa1-4d24-b690-6d5808350e8e', N'43075d6d-ef7c-46da-aef2-9758ca3e1cf9', N'7bf12f2d-61f1-4aa0-af30-7d4a0ac5b032', N'd47f4b8f-09ad-47f5-9cc8-55131e0df9fc', CAST(N'2024-05-21' AS Date), NULL, 93, CAST(300000.00 AS Decimal(10, 2)), 1, N'Sản phẩm đẹp', N'e18afe21-1d05-4640-8b40-bad79e23ba00', 1)
INSERT [dbo].[chi_tiet_san_pham] ([id_chi_tiet_san_pham], [ma_chi_tiet_san_pham], [san_pham_id], [kich_thuoc_id], [mau_sac_id], [chat_lieu_id], [ngay_tao], [ngay_cap_nhat], [so_luong_ton], [don_gia], [trang_thai], [mo_ta], [hinh_anh_id], [is_delete]) VALUES (N'482a4c4d-b73d-4715-ab40-8d5402ae147d', N'CTSP7', N'b80d4e83-9bee-4933-837d-a87c78353f47', N'43075d6d-ef7c-46da-aef2-9758ca3e1cf9', N'090cd8ca-7433-4b11-89d6-e3bdd7385883', N'adfe5513-7f15-433e-bb04-820bf0cc8151', CAST(N'2024-05-20' AS Date), NULL, 100, CAST(350000.00 AS Decimal(10, 2)), 1, N'Sản phẩm đẹp', N'b1a14a3d-e667-4ee9-8ca1-4fde6ae02e8e', 1)
INSERT [dbo].[chi_tiet_san_pham] ([id_chi_tiet_san_pham], [ma_chi_tiet_san_pham], [san_pham_id], [kich_thuoc_id], [mau_sac_id], [chat_lieu_id], [ngay_tao], [ngay_cap_nhat], [so_luong_ton], [don_gia], [trang_thai], [mo_ta], [hinh_anh_id], [is_delete]) VALUES (N'2fd556f3-ff8d-40e5-893b-906a293526bb', N'CTSP36', N'a1c44f76-aaa1-4d24-b690-6d5808350e8e', N'43075d6d-ef7c-46da-aef2-9758ca3e1cf9', N'090cd8ca-7433-4b11-89d6-e3bdd7385883', N'd47f4b8f-09ad-47f5-9cc8-55131e0df9fc', CAST(N'2024-05-21' AS Date), NULL, 100, CAST(150000.00 AS Decimal(10, 2)), 1, N'Sản phẩm đẹp', N'1669d47f-1fa5-4349-96c6-12b95718b2d5', 1)
INSERT [dbo].[chi_tiet_san_pham] ([id_chi_tiet_san_pham], [ma_chi_tiet_san_pham], [san_pham_id], [kich_thuoc_id], [mau_sac_id], [chat_lieu_id], [ngay_tao], [ngay_cap_nhat], [so_luong_ton], [don_gia], [trang_thai], [mo_ta], [hinh_anh_id], [is_delete]) VALUES (N'51a2aa54-0021-4076-84ca-93f6eab17ae4', N'CTSP40', N'9234209d-a2f1-4f08-8a43-a84406b22265', N'32927375-d276-4e16-af02-663eb05a4935', N'090cd8ca-7433-4b11-89d6-e3bdd7385883', N'd47f4b8f-09ad-47f5-9cc8-55131e0df9fc', CAST(N'2024-05-20' AS Date), NULL, 100, CAST(450000.00 AS Decimal(10, 2)), 1, N'Sản phẩm đẹp', N'83d5f290-e60d-4882-a26a-b67794dccedf', 0)
INSERT [dbo].[chi_tiet_san_pham] ([id_chi_tiet_san_pham], [ma_chi_tiet_san_pham], [san_pham_id], [kich_thuoc_id], [mau_sac_id], [chat_lieu_id], [ngay_tao], [ngay_cap_nhat], [so_luong_ton], [don_gia], [trang_thai], [mo_ta], [hinh_anh_id], [is_delete]) VALUES (N'6080cde0-5a71-4737-b582-994ab781e584', N'CTSP7', N'b80d4e83-9bee-4933-837d-a87c78353f47', N'43075d6d-ef7c-46da-aef2-9758ca3e1cf9', N'96286c3c-239d-4151-bf8b-ae65b141c2d9', N'adfe5513-7f15-433e-bb04-820bf0cc8151', CAST(N'2024-05-20' AS Date), NULL, 100, CAST(350000.00 AS Decimal(10, 2)), 1, N'Sản phẩm đẹp', N'5833ea36-a36d-4d7e-a4ec-d84c06c1ddcd', 1)
INSERT [dbo].[chi_tiet_san_pham] ([id_chi_tiet_san_pham], [ma_chi_tiet_san_pham], [san_pham_id], [kich_thuoc_id], [mau_sac_id], [chat_lieu_id], [ngay_tao], [ngay_cap_nhat], [so_luong_ton], [don_gia], [trang_thai], [mo_ta], [hinh_anh_id], [is_delete]) VALUES (N'f5c3a6aa-784d-47b9-ad6c-9bc7df378850', N'CTSP13', N'8cb9827b-38b1-4962-962b-7645a1febd8f', N'32927375-d276-4e16-af02-663eb05a4935', N'090cd8ca-7433-4b11-89d6-e3bdd7385883', N'87c66e05-8894-43a0-9c27-6f7120f72b3b', CAST(N'2024-05-20' AS Date), NULL, 100, CAST(300000.00 AS Decimal(10, 2)), 1, N'Sản phẩm đẹp', N'b5098594-0eba-4ad3-8b85-886aa0cd2363', 1)
INSERT [dbo].[chi_tiet_san_pham] ([id_chi_tiet_san_pham], [ma_chi_tiet_san_pham], [san_pham_id], [kich_thuoc_id], [mau_sac_id], [chat_lieu_id], [ngay_tao], [ngay_cap_nhat], [so_luong_ton], [don_gia], [trang_thai], [mo_ta], [hinh_anh_id], [is_delete]) VALUES (N'd36e96de-21e1-46d1-9271-acd7b4563801', N'CTSP35', N'badef8ca-3df8-4dd1-aa97-4fb22bbaa15c', N'c2426580-e5a6-4034-a7e4-1beb5e0aa561', N'a5509730-ca25-4e0c-9fdb-9917f8c579dd', N'adfe5513-7f15-433e-bb04-820bf0cc8151', CAST(N'2025-01-10' AS Date), NULL, 100, CAST(400000.00 AS Decimal(10, 2)), 1, N'Sản phẩm đẹp', N'61735675-d370-41eb-8bff-524ac9a200d9', 1)
INSERT [dbo].[chi_tiet_san_pham] ([id_chi_tiet_san_pham], [ma_chi_tiet_san_pham], [san_pham_id], [kich_thuoc_id], [mau_sac_id], [chat_lieu_id], [ngay_tao], [ngay_cap_nhat], [so_luong_ton], [don_gia], [trang_thai], [mo_ta], [hinh_anh_id], [is_delete]) VALUES (N'330b2840-ec6f-4529-a8d3-af5a7bc5ead3', N'CTSP19', N'b85bb4da-ad83-4c24-be3f-8b937cc3c1f5', N'f3904392-1919-4b61-9125-ea0044820fcc', N'090cd8ca-7433-4b11-89d6-e3bdd7385883', N'adfe5513-7f15-433e-bb04-820bf0cc8151', CAST(N'2024-05-20' AS Date), NULL, 100, CAST(250000.00 AS Decimal(10, 2)), 1, N'Sản phẩm đẹp', N'37523241-7ffc-45d8-83cd-e718e5d48a6b', 1)
INSERT [dbo].[chi_tiet_san_pham] ([id_chi_tiet_san_pham], [ma_chi_tiet_san_pham], [san_pham_id], [kich_thuoc_id], [mau_sac_id], [chat_lieu_id], [ngay_tao], [ngay_cap_nhat], [so_luong_ton], [don_gia], [trang_thai], [mo_ta], [hinh_anh_id], [is_delete]) VALUES (N'464f1eb2-bc50-46bd-a1ce-b7d94dbb9e10', N'CTSP36', N'a1c44f76-aaa1-4d24-b690-6d5808350e8e', N'c2426580-e5a6-4034-a7e4-1beb5e0aa561', N'090cd8ca-7433-4b11-89d6-e3bdd7385883', N'd47f4b8f-09ad-47f5-9cc8-55131e0df9fc', CAST(N'2024-05-21' AS Date), NULL, 100, CAST(150000.00 AS Decimal(10, 2)), 1, N'Sản phẩm đẹp', N'f3c8cc53-7459-4aa3-9dc9-6c6d5dacc261', 1)
INSERT [dbo].[chi_tiet_san_pham] ([id_chi_tiet_san_pham], [ma_chi_tiet_san_pham], [san_pham_id], [kich_thuoc_id], [mau_sac_id], [chat_lieu_id], [ngay_tao], [ngay_cap_nhat], [so_luong_ton], [don_gia], [trang_thai], [mo_ta], [hinh_anh_id], [is_delete]) VALUES (N'9c91b6ab-1418-49f6-8d55-bdfa2d890a5b', N'CTSP1', N'badef8ca-3df8-4dd1-aa97-4fb22bbaa15c', N'c68e70fa-22e5-4421-9c37-f72df800bfc3', N'0b9109e1-281e-42f2-a33f-457305a880ad', N'adfe5513-7f15-433e-bb04-820bf0cc8151', CAST(N'2025-01-10' AS Date), NULL, 100, CAST(400000.00 AS Decimal(10, 2)), 1, N'Sản phẩm đẹp', N'e451dccf-a0f9-45fd-8dea-d736a0f6f64a', 1)
INSERT [dbo].[chi_tiet_san_pham] ([id_chi_tiet_san_pham], [ma_chi_tiet_san_pham], [san_pham_id], [kich_thuoc_id], [mau_sac_id], [chat_lieu_id], [ngay_tao], [ngay_cap_nhat], [so_luong_ton], [don_gia], [trang_thai], [mo_ta], [hinh_anh_id], [is_delete]) VALUES (N'dea832ca-2a0b-4a98-9d44-c2090124132d', N'CTSP1', N'badef8ca-3df8-4dd1-aa97-4fb22bbaa15c', N'f3904392-1919-4b61-9125-ea0044820fcc', N'0b9109e1-281e-42f2-a33f-457305a880ad', N'adfe5513-7f15-433e-bb04-820bf0cc8151', CAST(N'2025-01-10' AS Date), NULL, 100, CAST(400000.00 AS Decimal(10, 2)), 1, N'Sản phẩm đẹp', N'0321d816-984b-40fc-b13d-3942675c9374', 1)
INSERT [dbo].[chi_tiet_san_pham] ([id_chi_tiet_san_pham], [ma_chi_tiet_san_pham], [san_pham_id], [kich_thuoc_id], [mau_sac_id], [chat_lieu_id], [ngay_tao], [ngay_cap_nhat], [so_luong_ton], [don_gia], [trang_thai], [mo_ta], [hinh_anh_id], [is_delete]) VALUES (N'267e6fd6-cafd-45fa-9bd1-c902f9c32d42', N'CTSP13', N'8cb9827b-38b1-4962-962b-7645a1febd8f', N'43075d6d-ef7c-46da-aef2-9758ca3e1cf9', N'090cd8ca-7433-4b11-89d6-e3bdd7385883', N'87c66e05-8894-43a0-9c27-6f7120f72b3b', CAST(N'2024-05-20' AS Date), NULL, 100, CAST(300000.00 AS Decimal(10, 2)), 1, N'Sản phẩm đẹp', N'dd028ce8-9d9b-4e9e-a1aa-55960a4f944c', 1)
INSERT [dbo].[chi_tiet_san_pham] ([id_chi_tiet_san_pham], [ma_chi_tiet_san_pham], [san_pham_id], [kich_thuoc_id], [mau_sac_id], [chat_lieu_id], [ngay_tao], [ngay_cap_nhat], [so_luong_ton], [don_gia], [trang_thai], [mo_ta], [hinh_anh_id], [is_delete]) VALUES (N'afa799ba-f232-451f-91d5-cabb740bb475', N'CTSP13', N'8cb9827b-38b1-4962-962b-7645a1febd8f', N'32927375-d276-4e16-af02-663eb05a4935', N'0b9109e1-281e-42f2-a33f-457305a880ad', N'87c66e05-8894-43a0-9c27-6f7120f72b3b', CAST(N'2024-05-20' AS Date), NULL, 100, CAST(300000.00 AS Decimal(10, 2)), 1, N'Sản phẩm đẹp', N'69006aed-fda8-4914-b880-341b4be0d130', 1)
INSERT [dbo].[chi_tiet_san_pham] ([id_chi_tiet_san_pham], [ma_chi_tiet_san_pham], [san_pham_id], [kich_thuoc_id], [mau_sac_id], [chat_lieu_id], [ngay_tao], [ngay_cap_nhat], [so_luong_ton], [don_gia], [trang_thai], [mo_ta], [hinh_anh_id], [is_delete]) VALUES (N'076fcc23-b044-4c15-b3cc-d090f2fe57b6', N'CTSP44', N'a48c72aa-824a-4234-a707-dc954c1d00e5', N'43075d6d-ef7c-46da-aef2-9758ca3e1cf9', N'96286c3c-239d-4151-bf8b-ae65b141c2d9', N'adfe5513-7f15-433e-bb04-820bf0cc8151', CAST(N'2024-05-20' AS Date), NULL, 100, CAST(200000.00 AS Decimal(10, 2)), 1, N'Sản phẩm đẹp', N'cfc58da8-054c-4bc0-93b2-ee3e43219c2f', 1)
INSERT [dbo].[chi_tiet_san_pham] ([id_chi_tiet_san_pham], [ma_chi_tiet_san_pham], [san_pham_id], [kich_thuoc_id], [mau_sac_id], [chat_lieu_id], [ngay_tao], [ngay_cap_nhat], [so_luong_ton], [don_gia], [trang_thai], [mo_ta], [hinh_anh_id], [is_delete]) VALUES (N'0149723e-3244-43d3-9dbc-d1d42404c002', N'CTSP19', N'b85bb4da-ad83-4c24-be3f-8b937cc3c1f5', N'c2426580-e5a6-4034-a7e4-1beb5e0aa561', N'7bf12f2d-61f1-4aa0-af30-7d4a0ac5b032', N'adfe5513-7f15-433e-bb04-820bf0cc8151', CAST(N'2024-05-20' AS Date), NULL, 100, CAST(250000.00 AS Decimal(10, 2)), 1, N'Sản phẩm đẹp', N'bc16c3d2-474d-4ef5-a379-5ac03e7e382f', 1)
INSERT [dbo].[chi_tiet_san_pham] ([id_chi_tiet_san_pham], [ma_chi_tiet_san_pham], [san_pham_id], [kich_thuoc_id], [mau_sac_id], [chat_lieu_id], [ngay_tao], [ngay_cap_nhat], [so_luong_ton], [don_gia], [trang_thai], [mo_ta], [hinh_anh_id], [is_delete]) VALUES (N'be33272f-605e-48bc-9459-dddfe335dad9', N'CTSP25', N'117b9101-19a5-4ea6-b124-c4249268d171', N'32927375-d276-4e16-af02-663eb05a4935', N'090cd8ca-7433-4b11-89d6-e3bdd7385883', N'd47f4b8f-09ad-47f5-9cc8-55131e0df9fc', CAST(N'2024-05-20' AS Date), NULL, 100, CAST(200000.00 AS Decimal(10, 2)), 1, N'Sản phẩm đẹp', N'f99addb9-58d9-4924-b2b5-f3a086606de0', 1)
INSERT [dbo].[chi_tiet_san_pham] ([id_chi_tiet_san_pham], [ma_chi_tiet_san_pham], [san_pham_id], [kich_thuoc_id], [mau_sac_id], [chat_lieu_id], [ngay_tao], [ngay_cap_nhat], [so_luong_ton], [don_gia], [trang_thai], [mo_ta], [hinh_anh_id], [is_delete]) VALUES (N'cf917519-f014-4909-9e2e-e34227812f3e', N'CTSP44', N'a48c72aa-824a-4234-a707-dc954c1d00e5', N'32927375-d276-4e16-af02-663eb05a4935', N'090cd8ca-7433-4b11-89d6-e3bdd7385883', N'adfe5513-7f15-433e-bb04-820bf0cc8151', CAST(N'2024-05-20' AS Date), NULL, 100, CAST(200000.00 AS Decimal(10, 2)), 1, N'Sản phẩm đẹp', N'0525a8c2-1089-4c91-9439-81e196163edd', 1)
INSERT [dbo].[chi_tiet_san_pham] ([id_chi_tiet_san_pham], [ma_chi_tiet_san_pham], [san_pham_id], [kich_thuoc_id], [mau_sac_id], [chat_lieu_id], [ngay_tao], [ngay_cap_nhat], [so_luong_ton], [don_gia], [trang_thai], [mo_ta], [hinh_anh_id], [is_delete]) VALUES (N'9fbfb6b6-c051-4d9f-8202-e3855197b66c', N'CTSP44', N'a48c72aa-824a-4234-a707-dc954c1d00e5', N'43075d6d-ef7c-46da-aef2-9758ca3e1cf9', N'090cd8ca-7433-4b11-89d6-e3bdd7385883', N'adfe5513-7f15-433e-bb04-820bf0cc8151', CAST(N'2024-05-20' AS Date), NULL, 100, CAST(200000.00 AS Decimal(10, 2)), 1, N'Sản phẩm đẹp', N'cf655faf-308a-4478-9281-fe99ad271ce4', 1)
INSERT [dbo].[chi_tiet_san_pham] ([id_chi_tiet_san_pham], [ma_chi_tiet_san_pham], [san_pham_id], [kich_thuoc_id], [mau_sac_id], [chat_lieu_id], [ngay_tao], [ngay_cap_nhat], [so_luong_ton], [don_gia], [trang_thai], [mo_ta], [hinh_anh_id], [is_delete]) VALUES (N'dc5c759d-a169-4e9d-ac50-e43b9983b320', N'CTSP1', N'badef8ca-3df8-4dd1-aa97-4fb22bbaa15c', N'c68e70fa-22e5-4421-9c37-f72df800bfc3', N'7bf12f2d-61f1-4aa0-af30-7d4a0ac5b032', N'adfe5513-7f15-433e-bb04-820bf0cc8151', CAST(N'2025-01-10' AS Date), NULL, 98, CAST(400000.00 AS Decimal(10, 2)), 1, N'Sản phẩm đẹp', N'b6499d24-ca0f-45d6-a48b-199e3d9b486b', 1)
INSERT [dbo].[chi_tiet_san_pham] ([id_chi_tiet_san_pham], [ma_chi_tiet_san_pham], [san_pham_id], [kich_thuoc_id], [mau_sac_id], [chat_lieu_id], [ngay_tao], [ngay_cap_nhat], [so_luong_ton], [don_gia], [trang_thai], [mo_ta], [hinh_anh_id], [is_delete]) VALUES (N'4f8ec613-87fd-427d-9af7-f46b3f130212', N'CTSP31', N'664c44bb-7e2a-43d6-a6ea-e8d954721441', N'f3904392-1919-4b61-9125-ea0044820fcc', N'0b9109e1-281e-42f2-a33f-457305a880ad', N'd47f4b8f-09ad-47f5-9cc8-55131e0df9fc', CAST(N'2024-05-20' AS Date), NULL, 100, CAST(500000.00 AS Decimal(10, 2)), 1, N'Sản phẩm đẹp', N'34ac48e8-ee54-4964-b4f0-66de5d2d54ba', 1)
INSERT [dbo].[chi_tiet_san_pham] ([id_chi_tiet_san_pham], [ma_chi_tiet_san_pham], [san_pham_id], [kich_thuoc_id], [mau_sac_id], [chat_lieu_id], [ngay_tao], [ngay_cap_nhat], [so_luong_ton], [don_gia], [trang_thai], [mo_ta], [hinh_anh_id], [is_delete]) VALUES (N'1c2e6b17-14e8-4b03-8927-f9492be64461', N'CTSP36', N'a1c44f76-aaa1-4d24-b690-6d5808350e8e', N'c2426580-e5a6-4034-a7e4-1beb5e0aa561', N'7bf12f2d-61f1-4aa0-af30-7d4a0ac5b032', N'd47f4b8f-09ad-47f5-9cc8-55131e0df9fc', CAST(N'2024-05-21' AS Date), NULL, 100, CAST(150000.00 AS Decimal(10, 2)), 1, N'Sản phẩm đẹp', N'4a820ced-e383-4816-9ab6-65f64107bac4', 1)
INSERT [dbo].[chi_tiet_san_pham] ([id_chi_tiet_san_pham], [ma_chi_tiet_san_pham], [san_pham_id], [kich_thuoc_id], [mau_sac_id], [chat_lieu_id], [ngay_tao], [ngay_cap_nhat], [so_luong_ton], [don_gia], [trang_thai], [mo_ta], [hinh_anh_id], [is_delete]) VALUES (N'50f6f700-3cc4-4b22-ac05-fb67c1ad530c', N'CTSP7', N'b80d4e83-9bee-4933-837d-a87c78353f47', N'c2426580-e5a6-4034-a7e4-1beb5e0aa561', N'96286c3c-239d-4151-bf8b-ae65b141c2d9', N'adfe5513-7f15-433e-bb04-820bf0cc8151', CAST(N'2024-05-20' AS Date), NULL, 100, CAST(350000.00 AS Decimal(10, 2)), 1, N'Sản phẩm đẹp', N'1aebb033-1441-4b36-abf5-10d9f41709ab', 1)
INSERT [dbo].[chi_tiet_san_pham] ([id_chi_tiet_san_pham], [ma_chi_tiet_san_pham], [san_pham_id], [kich_thuoc_id], [mau_sac_id], [chat_lieu_id], [ngay_tao], [ngay_cap_nhat], [so_luong_ton], [don_gia], [trang_thai], [mo_ta], [hinh_anh_id], [is_delete]) VALUES (N'055bc749-df86-4396-b8c7-fb82dafd9a86', N'CTSP31', N'664c44bb-7e2a-43d6-a6ea-e8d954721441', N'f3904392-1919-4b61-9125-ea0044820fcc', N'7bf12f2d-61f1-4aa0-af30-7d4a0ac5b032', N'd47f4b8f-09ad-47f5-9cc8-55131e0df9fc', CAST(N'2024-05-20' AS Date), NULL, 100, CAST(500000.00 AS Decimal(10, 2)), 1, N'Sản phẩm đẹp', N'5a49b1e2-7f09-4225-a622-9bd750640d22', 1)
GO
INSERT [dbo].[chuc_vu] ([id_chuc_vu], [ma], [ten_chuc_vu], [ngay_tao], [ngay_cap_nhat], [mo_ta], [trang_thai]) VALUES (N'7c52b2df-5953-4fc1-8d2e-8d7e8316d002', N'AD001', N'admin', CAST(N'2024-05-08' AS Date), NULL, N'OK', 1)
INSERT [dbo].[chuc_vu] ([id_chuc_vu], [ma], [ten_chuc_vu], [ngay_tao], [ngay_cap_nhat], [mo_ta], [trang_thai]) VALUES (N'1de9b576-7dbc-46a1-8488-9b0f553350eb', N'ST001', N'staff', CAST(N'2025-01-03' AS Date), NULL, NULL, 1)
GO
INSERT [dbo].[gio_hang_chi_tiet] ([id_gio_hang_chi_tiet], [id_chi_tiet_san_pham], [so_luong], [don_gia], [trang_thai], [id_khach_hang]) VALUES (N'2a5268c9-380c-4c9e-abfd-3b339653ad2c', N'90aa9dad-311a-4c06-aa1e-546bd45171da', 1, NULL, 0, N'e520097e-6d74-4955-b164-88d4812c7dfb')
INSERT [dbo].[gio_hang_chi_tiet] ([id_gio_hang_chi_tiet], [id_chi_tiet_san_pham], [so_luong], [don_gia], [trang_thai], [id_khach_hang]) VALUES (N'5611ad19-cc92-401d-ac0b-5a69d37ed6db', N'90aa9dad-311a-4c06-aa1e-546bd45171da', 1, NULL, 0, NULL)
GO
INSERT [dbo].[hinh_anh] ([id_hinh_anh], [ma], [ten_hinh_anh], [url_anh], [url_anh1], [url_anh2], [ngay_tao], [ngay_cap_nhat], [mo_ta], [trang_thai]) VALUES (N'e70c2a38-fbba-45ec-a930-0169ae2a6dc8', NULL, N'Ảnh sản phẩm Mecom', N'cfda0028-8ae7-4e44-a347-3a19daf23165.jpg', N'651aa68a-8365-41fe-a347-0f4d5aac48a6.jpg', N'c3b81dfe-7d54-41b2-a11e-8d43fd6458dd.jpg', CAST(N'2024-05-18' AS Date), NULL, NULL, 0)
INSERT [dbo].[hinh_anh] ([id_hinh_anh], [ma], [ten_hinh_anh], [url_anh], [url_anh1], [url_anh2], [ngay_tao], [ngay_cap_nhat], [mo_ta], [trang_thai]) VALUES (N'00558bfe-9572-49ef-a51b-081de70d7ed1', NULL, N'Ảnh sản phẩm Air Jordan. Mã CTSP29', N'07292dd7-7cc5-4917-a429-a744206482db.jpg', N'd299d2bc-1839-4157-bb66-48dab314e13e.jpg', N'b33ced98-e067-4ea1-9b44-4018b8b196ff.jpg', CAST(N'2024-05-20' AS Date), NULL, NULL, 0)
INSERT [dbo].[hinh_anh] ([id_hinh_anh], [ma], [ten_hinh_anh], [url_anh], [url_anh1], [url_anh2], [ngay_tao], [ngay_cap_nhat], [mo_ta], [trang_thai]) VALUES (N'b01d1728-d5d5-48a9-985a-0dd360635e34', NULL, N'Ảnh sản phẩm Vaporfly. Mã CTSP15', N'61113016-344e-4c76-b9e7-d7956e08d1a7.jpg', N'f93b0d65-9d1f-4913-bc0b-20cf61827e72.jpg', N'25e60e74-a8e5-4328-82e2-ca08fdf2bcb2.jpg', CAST(N'2024-05-20' AS Date), NULL, NULL, 0)
INSERT [dbo].[hinh_anh] ([id_hinh_anh], [ma], [ten_hinh_anh], [url_anh], [url_anh1], [url_anh2], [ngay_tao], [ngay_cap_nhat], [mo_ta], [trang_thai]) VALUES (N'c85cec21-ef58-492c-b063-0e0de854b6a4', NULL, N'Ảnh sản phẩm Airzoom. Mã CTSP1', N'd5c4f67f-c2c9-432d-b135-021e6c8007af.jpg', N'a4c03817-ee43-46fe-9ec8-273100f3afe5.jpg', N'e12a8c17-8486-44d4-877e-38e9ef7b901b.jpg', CAST(N'2024-05-18' AS Date), NULL, NULL, 0)
INSERT [dbo].[hinh_anh] ([id_hinh_anh], [ma], [ten_hinh_anh], [url_anh], [url_anh1], [url_anh2], [ngay_tao], [ngay_cap_nhat], [mo_ta], [trang_thai]) VALUES (N'b0cd618e-c8f5-41af-a607-0eb41a8e69c4', NULL, N'Ảnh sản phẩm Air Jordan hight. Mã CTSP19', N'3d526811-f3b7-4dc4-95c8-4634354f653f.jpg', N'882c61f8-75ba-496a-811d-651b553bd3a1.jpg', N'642d3d92-670d-4900-99df-9be7ca0ce633.jpg', CAST(N'2024-05-20' AS Date), NULL, NULL, 0)
INSERT [dbo].[hinh_anh] ([id_hinh_anh], [ma], [ten_hinh_anh], [url_anh], [url_anh1], [url_anh2], [ngay_tao], [ngay_cap_nhat], [mo_ta], [trang_thai]) VALUES (N'1aebb033-1441-4b36-abf5-10d9f41709ab', NULL, N'Ảnh sản phẩm Vaporfly. Mã CTSP7', N'd9f45ce7-fd44-4613-9a31-34ff4e50e1a1.jpg', N'65cb8f2d-b533-4ac9-b6ac-d8a2576620df.jpg', N'b640f727-0d81-4000-bc8f-5042aa78e63c.jpg', CAST(N'2024-05-20' AS Date), NULL, NULL, 0)
INSERT [dbo].[hinh_anh] ([id_hinh_anh], [ma], [ten_hinh_anh], [url_anh], [url_anh1], [url_anh2], [ngay_tao], [ngay_cap_nhat], [mo_ta], [trang_thai]) VALUES (N'990665f6-d1c3-459f-8ff4-11e2b5dcbfb0', NULL, N'Ảnh sản phẩm Airzoom. Mã CTSP1', N'5a699957-1c93-418c-a320-135db66462ff.jpg', N'2c8e2503-df49-499d-a44d-aa356577d5b7.jpg', N'903b40f8-0f0c-4e37-9a0a-883b4ecaccdf.jpg', CAST(N'2024-05-18' AS Date), NULL, NULL, 0)
INSERT [dbo].[hinh_anh] ([id_hinh_anh], [ma], [ten_hinh_anh], [url_anh], [url_anh1], [url_anh2], [ngay_tao], [ngay_cap_nhat], [mo_ta], [trang_thai]) VALUES (N'1669d47f-1fa5-4349-96c6-12b95718b2d5', NULL, N'Ảnh sản phẩm Air Force 1. Mã CTSP36', N'fd4f0d9a-ba62-4bcb-8bfe-883df6673399.jpg', N'9092b037-e6ba-49b4-8ff9-b623fc252035.jpg', N'38c4d3e9-6352-4b6a-a433-f83929b6c432.jpg', CAST(N'2024-05-20' AS Date), NULL, NULL, 0)
INSERT [dbo].[hinh_anh] ([id_hinh_anh], [ma], [ten_hinh_anh], [url_anh], [url_anh1], [url_anh2], [ngay_tao], [ngay_cap_nhat], [mo_ta], [trang_thai]) VALUES (N'ccaa76a0-ba74-4a72-a555-179a978efcc8', NULL, N'Ảnh sản phẩm Mecom. Mã CTSP1', N'9d1431b3-61c7-4cd6-9fa3-61c9a59344e6.jpg', N'1dbce268-050f-44a2-ade2-b4593965896d.jpg', N'4da8e68c-b5b3-4b39-854b-c78ea2107b4e.jpg', CAST(N'2024-05-20' AS Date), NULL, NULL, 0)
INSERT [dbo].[hinh_anh] ([id_hinh_anh], [ma], [ten_hinh_anh], [url_anh], [url_anh1], [url_anh2], [ngay_tao], [ngay_cap_nhat], [mo_ta], [trang_thai]) VALUES (N'b6499d24-ca0f-45d6-a48b-199e3d9b486b', NULL, N'Ảnh sản phẩm Mecom. Mã CTSP1', N'4b995048-5b0c-47c7-b452-74f219e39265.jpg', N'7a3b561a-d482-4180-9a23-1a9374936fdb.jpg', N'07e8ac73-2462-4952-9889-3f0f1a2ac524.jpg', CAST(N'2024-05-20' AS Date), NULL, NULL, 0)
INSERT [dbo].[hinh_anh] ([id_hinh_anh], [ma], [ten_hinh_anh], [url_anh], [url_anh1], [url_anh2], [ngay_tao], [ngay_cap_nhat], [mo_ta], [trang_thai]) VALUES (N'cdc59aa4-5438-406b-94f3-19aba2d02484', NULL, N'Ảnh sản phẩm Mecom. Mã CTSP9', N'9591dbf4-decd-41ff-ad13-87165c937370.jpg', N'd1856df9-55a9-40e5-8513-7dca0390bbfe.jpg', N'393b76d5-d5cd-4ae8-aa76-f474b9b15d20.jpg', CAST(N'2024-05-18' AS Date), NULL, NULL, 0)
INSERT [dbo].[hinh_anh] ([id_hinh_anh], [ma], [ten_hinh_anh], [url_anh], [url_anh1], [url_anh2], [ngay_tao], [ngay_cap_nhat], [mo_ta], [trang_thai]) VALUES (N'c48dc533-8d2d-4e0d-9757-206413876901', NULL, N'Ảnh sản phẩm Air max', N'2b0e834e-0788-4298-a5e4-1d02b306a9ff.jpg', N'a8789590-56ca-4e30-9fba-e0c43286bca5.jpg', N'05632732-4a97-4fd5-9735-63d3bc553bf7.jpg', CAST(N'2024-05-20' AS Date), NULL, NULL, 0)
INSERT [dbo].[hinh_anh] ([id_hinh_anh], [ma], [ten_hinh_anh], [url_anh], [url_anh1], [url_anh2], [ngay_tao], [ngay_cap_nhat], [mo_ta], [trang_thai]) VALUES (N'b8e3c21d-5e2e-4e62-9b74-2a2965b8c6e5', NULL, N'Ảnh sản phẩm Zegama', N'deb457ad-ca24-496c-9660-ed074fd1dcbc.jpg', N'b1205647-1efb-413f-bd8a-791de54f02f7.jpg', N'c8702be0-6468-4697-be01-602fbd000d1f.jpg', CAST(N'2024-05-20' AS Date), NULL, NULL, 0)
INSERT [dbo].[hinh_anh] ([id_hinh_anh], [ma], [ten_hinh_anh], [url_anh], [url_anh1], [url_anh2], [ngay_tao], [ngay_cap_nhat], [mo_ta], [trang_thai]) VALUES (N'61299aca-9196-4ff3-8b59-2a5d1be1143f', NULL, N'Ảnh sản phẩm Zegama. Mã CTSP23', N'b1f418f1-8739-4a48-a1ac-e072382e721e.jpg', N'23081b86-12ef-40d3-8607-e1992330fe51.jpg', N'f9c349da-a17e-4202-b2ac-e86ec8be82e9.jpg', CAST(N'2024-05-20' AS Date), NULL, NULL, 0)
INSERT [dbo].[hinh_anh] ([id_hinh_anh], [ma], [ten_hinh_anh], [url_anh], [url_anh1], [url_anh2], [ngay_tao], [ngay_cap_nhat], [mo_ta], [trang_thai]) VALUES (N'4bc11789-7bc8-4fd0-8ea4-2cf43dc3248d', NULL, N'Ảnh sản phẩm Air Jordan. Mã CTSP29', N'850ffc8e-ca35-482a-a1d8-f1e54804863d.jpg', N'694c1bee-02c6-4198-8963-05debb7e63b7.jpg', N'e3cc476d-e11c-4dbe-b6dc-7fc640c20e98.jpg', CAST(N'2024-05-20' AS Date), NULL, NULL, 0)
INSERT [dbo].[hinh_anh] ([id_hinh_anh], [ma], [ten_hinh_anh], [url_anh], [url_anh1], [url_anh2], [ngay_tao], [ngay_cap_nhat], [mo_ta], [trang_thai]) VALUES (N'33a8a0e8-374f-4a4e-8670-3054ae3d44e1', NULL, N'Ảnh sản phẩm Zegama. Mã CTSP23', N'621f9c4e-4628-4506-8393-a07428f18aba.jpg', N'2e77df0e-aaf8-4e64-9588-3f25c00d4515.jpg', N'f75e9a77-c685-4045-a255-5db73b267052.jpg', CAST(N'2024-05-20' AS Date), NULL, NULL, 0)
INSERT [dbo].[hinh_anh] ([id_hinh_anh], [ma], [ten_hinh_anh], [url_anh], [url_anh1], [url_anh2], [ngay_tao], [ngay_cap_nhat], [mo_ta], [trang_thai]) VALUES (N'69006aed-fda8-4914-b880-341b4be0d130', NULL, N'Ảnh sản phẩm Zegama. Mã CTSP13', N'a60db801-40f0-4a61-89d1-4499532db1d2.jpg', N'6376005e-44e5-4587-aab2-279b916b63bd.jpg', N'9193e8ca-aef9-42cb-b13c-644f51267db8.jpg', CAST(N'2024-05-20' AS Date), NULL, NULL, 0)
INSERT [dbo].[hinh_anh] ([id_hinh_anh], [ma], [ten_hinh_anh], [url_anh], [url_anh1], [url_anh2], [ngay_tao], [ngay_cap_nhat], [mo_ta], [trang_thai]) VALUES (N'2c75e3c3-c9cc-499d-8a11-34f5927642f1', NULL, N'Ảnh sản phẩm Air Jordan. Mã CTSP29', N'fcd60db4-ba35-4a4a-90ef-9f79a76d3b09.jpg', N'3ecd1230-93b6-497e-afe4-411c34ca9684.jpg', N'ff3a6f6d-af27-41c7-bbfe-aad888de3c55.jpg', CAST(N'2024-05-20' AS Date), NULL, NULL, 0)
INSERT [dbo].[hinh_anh] ([id_hinh_anh], [ma], [ten_hinh_anh], [url_anh], [url_anh1], [url_anh2], [ngay_tao], [ngay_cap_nhat], [mo_ta], [trang_thai]) VALUES (N'87b25c7f-c5ca-4c7e-9b17-3555818d19e8', NULL, N'Ảnh sản phẩm Air Jordan hight. Mã CTSP19', N'837d1147-26bf-4e51-84a8-ec50671cb936.jpg', N'2ffac6e2-69bc-4067-8638-7d0f57c23444.jpg', N'776508dd-17ba-4ca2-8c68-37dedd67b47d.jpg', CAST(N'2024-05-20' AS Date), NULL, NULL, 0)
INSERT [dbo].[hinh_anh] ([id_hinh_anh], [ma], [ten_hinh_anh], [url_anh], [url_anh1], [url_anh2], [ngay_tao], [ngay_cap_nhat], [mo_ta], [trang_thai]) VALUES (N'0321d816-984b-40fc-b13d-3942675c9374', NULL, N'Ảnh sản phẩm Mecom. Mã CTSP1', N'8fc1c8ea-d822-4986-9da8-74b65034b304.jpg', N'e78dbc7b-6320-4e3d-8b3c-327534a0e9e1.jpg', N'96b07d39-4869-427b-ab53-6aff3e57803c.jpg', CAST(N'2024-05-20' AS Date), NULL, NULL, 0)
INSERT [dbo].[hinh_anh] ([id_hinh_anh], [ma], [ten_hinh_anh], [url_anh], [url_anh1], [url_anh2], [ngay_tao], [ngay_cap_nhat], [mo_ta], [trang_thai]) VALUES (N'76e5cdab-4622-4442-ac01-3981ae759c5d', NULL, N'Ảnh sản phẩm Nike duck low. Mã CTSP40', N'9d745dd0-564a-4c69-9bff-89f8ad23b508.jpg', N'a18bae6d-1272-4149-a833-4a8f3a06d8d2.jpg', N'1cd0f985-cc31-44b9-908f-74635037b6ad.jpg', CAST(N'2024-05-20' AS Date), NULL, NULL, 0)
INSERT [dbo].[hinh_anh] ([id_hinh_anh], [ma], [ten_hinh_anh], [url_anh], [url_anh1], [url_anh2], [ngay_tao], [ngay_cap_nhat], [mo_ta], [trang_thai]) VALUES (N'36342bd9-f109-4fe8-a26a-3de3b324c2ce', NULL, N'Ảnh sản phẩm Mecom. Mã CTSP1', N'597cfa84-ad29-4201-969b-f8a968d93689.jpg', N'd4e225ea-b500-4c58-98ec-0b999ce5ca6b.jpg', N'045ebc4d-c513-494f-a6a8-d13bc07f4859.jpg', CAST(N'2024-05-20' AS Date), NULL, NULL, 0)
INSERT [dbo].[hinh_anh] ([id_hinh_anh], [ma], [ten_hinh_anh], [url_anh], [url_anh1], [url_anh2], [ngay_tao], [ngay_cap_nhat], [mo_ta], [trang_thai]) VALUES (N'48a3375e-b609-46c2-9d95-48d37ec3bbc6', NULL, N'Ảnh sản phẩm Air Jordan. Mã CTSP29', N'2ac63dc5-7db4-49d7-9276-a0502684e89e.jpg', N'7793333a-6265-4e0e-83b5-053a1290256a.jpg', N'957b5f8d-99bb-42c3-94de-7cfdd4dfe14a.jpg', CAST(N'2024-05-20' AS Date), NULL, NULL, 0)
INSERT [dbo].[hinh_anh] ([id_hinh_anh], [ma], [ten_hinh_anh], [url_anh], [url_anh1], [url_anh2], [ngay_tao], [ngay_cap_nhat], [mo_ta], [trang_thai]) VALUES (N'5e0e738b-c8a1-41f9-94ce-4ac95d49e1d1', NULL, N'Ảnh sản phẩm Air Jordan hight. Mã CTSP34', N'd9dc201d-27bb-41a8-8320-05905b5f92c3.jpg', N'70c5f873-6e7a-4b1b-8d25-50d53f39ffb6.jpg', N'b4f9ebe0-cb6f-44c9-a6c3-2062b78ab709.jpg', CAST(N'2024-05-20' AS Date), NULL, NULL, 0)
INSERT [dbo].[hinh_anh] ([id_hinh_anh], [ma], [ten_hinh_anh], [url_anh], [url_anh1], [url_anh2], [ngay_tao], [ngay_cap_nhat], [mo_ta], [trang_thai]) VALUES (N'15a84d18-ef46-4401-96d1-4c273954e1ec', NULL, N'Ảnh sản phẩm Air max. Mã CTSP31', N'd1378ac9-3b09-4f2c-8f89-0893242309b5.jpg', N'cd14cd5b-9c30-405e-90fe-93f1d849d0cc.jpg', N'8269f512-2771-44a9-8625-81104d20b171.jpg', CAST(N'2024-05-20' AS Date), NULL, NULL, 0)
INSERT [dbo].[hinh_anh] ([id_hinh_anh], [ma], [ten_hinh_anh], [url_anh], [url_anh1], [url_anh2], [ngay_tao], [ngay_cap_nhat], [mo_ta], [trang_thai]) VALUES (N'b1a14a3d-e667-4ee9-8ca1-4fde6ae02e8e', NULL, N'Ảnh sản phẩm Vaporfly. Mã CTSP7', N'19e6d3d7-e48e-4f9d-a925-48b093141e5f.jpg', N'db0bcfdc-71a7-4835-b15a-3c9ea24b5712.jpg', N'551ad8ce-05f0-4cb1-9f0a-3c2fe4e73f37.jpg', CAST(N'2024-05-20' AS Date), NULL, NULL, 0)
INSERT [dbo].[hinh_anh] ([id_hinh_anh], [ma], [ten_hinh_anh], [url_anh], [url_anh1], [url_anh2], [ngay_tao], [ngay_cap_nhat], [mo_ta], [trang_thai]) VALUES (N'ab9b7c6d-630c-4b45-ae0c-5177c2df2919', NULL, N'Ảnh sản phẩm Airzoom. Mã CTSP1', N'a78b26f4-5859-489f-8413-443783faf632.jpg', N'03f9e3f2-b80d-467b-a712-76b25a6edde0.jpg', N'1fee2b27-04da-4a7a-a935-1d9395e6c656.jpg', CAST(N'2024-05-18' AS Date), NULL, NULL, 0)
INSERT [dbo].[hinh_anh] ([id_hinh_anh], [ma], [ten_hinh_anh], [url_anh], [url_anh1], [url_anh2], [ngay_tao], [ngay_cap_nhat], [mo_ta], [trang_thai]) VALUES (N'61735675-d370-41eb-8bff-524ac9a200d9', NULL, N'Ảnh sản phẩm Mecom. Mã CTSP35', N'b65252b6-5d2d-432a-86c0-0ce379d9b684.jpg', N'2a3fc11b-b909-463a-be72-8bbd64467e6a.jpg', N'6238b154-9cb0-4162-bd4b-ec2e9fd17de6.jpg', CAST(N'2024-05-20' AS Date), NULL, NULL, 0)
INSERT [dbo].[hinh_anh] ([id_hinh_anh], [ma], [ten_hinh_anh], [url_anh], [url_anh1], [url_anh2], [ngay_tao], [ngay_cap_nhat], [mo_ta], [trang_thai]) VALUES (N'dd028ce8-9d9b-4e9e-a1aa-55960a4f944c', NULL, N'Ảnh sản phẩm Zegama. Mã CTSP13', N'15e74aad-5abf-409e-b27b-3b35fe43ea68.jpg', N'7e2b07ee-d129-4988-9ee1-bb56aed91d69.jpg', N'd1c0f68b-758e-4e09-8abb-35e8c11f05e6.jpg', CAST(N'2024-05-20' AS Date), NULL, NULL, 0)
INSERT [dbo].[hinh_anh] ([id_hinh_anh], [ma], [ten_hinh_anh], [url_anh], [url_anh1], [url_anh2], [ngay_tao], [ngay_cap_nhat], [mo_ta], [trang_thai]) VALUES (N'bc16c3d2-474d-4ef5-a379-5ac03e7e382f', NULL, N'Ảnh sản phẩm Air Jordan hight. Mã CTSP19', N'0bbcb64b-5127-46d4-ba06-cc8a9e512efe.jpg', N'76868c66-ccb7-410b-b598-cd066720d1ae.jpg', N'c7b057c9-45a9-4c3b-a2f6-3a39155d6c7f.jpg', CAST(N'2024-05-20' AS Date), NULL, NULL, 0)
INSERT [dbo].[hinh_anh] ([id_hinh_anh], [ma], [ten_hinh_anh], [url_anh], [url_anh1], [url_anh2], [ngay_tao], [ngay_cap_nhat], [mo_ta], [trang_thai]) VALUES (N'490b80ad-38f1-4302-8fde-5b7f341c931c', NULL, N'Ảnh sản phẩm Vaporfly. Mã CTSP16', N'8d8e98a7-f70d-4c4c-9536-2111fa3f025d.jpg', N'59b8f764-4de5-4fc3-b9d7-c73ee0757ae5.jpg', N'2efaac40-5c4e-47c6-8f9d-ad74da38708b.jpg', CAST(N'2024-05-20' AS Date), NULL, NULL, 0)
INSERT [dbo].[hinh_anh] ([id_hinh_anh], [ma], [ten_hinh_anh], [url_anh], [url_anh1], [url_anh2], [ngay_tao], [ngay_cap_nhat], [mo_ta], [trang_thai]) VALUES (N'ac2f936a-d7b3-43de-ad21-5cc2e5b639d4', NULL, N'Ảnh sản phẩm Air max. Mã CTSP31', N'ab09d095-535f-4da4-a9bb-0d1ccc351189.jpg', N'537aa770-5a11-4818-a934-91d1d63b6e51.jpg', N'578f091f-e3b5-4e9a-a045-b3a7046aecf6.jpg', CAST(N'2024-05-20' AS Date), NULL, NULL, 0)
INSERT [dbo].[hinh_anh] ([id_hinh_anh], [ma], [ten_hinh_anh], [url_anh], [url_anh1], [url_anh2], [ngay_tao], [ngay_cap_nhat], [mo_ta], [trang_thai]) VALUES (N'399c0ff8-322c-4cc0-8108-5e1b1be6a428', NULL, N'Ảnh sản phẩm Airzoom. Mã CTSP44', N'35302340-6cdf-481d-9cda-b959da6f13a4.jpg', N'05cb22bd-c1ef-45d9-9c48-d210e42d31f7.jpg', N'754e6a07-ba58-4f01-9e5b-f227eda9fd21.jpg', CAST(N'2024-05-20' AS Date), NULL, NULL, 0)
INSERT [dbo].[hinh_anh] ([id_hinh_anh], [ma], [ten_hinh_anh], [url_anh], [url_anh1], [url_anh2], [ngay_tao], [ngay_cap_nhat], [mo_ta], [trang_thai]) VALUES (N'3d6807fb-0e7c-4a45-ac1b-5f549dbdc7db', NULL, N'Ảnh sản phẩm Air Jordan hight. Mã CTSP34', N'6563e91e-5d05-46b0-a838-40426acdf909.jpg', N'97487e25-896d-462e-98dc-aa14caf6d534.jpg', N'35391c02-93a1-4789-907e-7ddd27a6e059.jpg', CAST(N'2024-05-20' AS Date), NULL, NULL, 0)
INSERT [dbo].[hinh_anh] ([id_hinh_anh], [ma], [ten_hinh_anh], [url_anh], [url_anh1], [url_anh2], [ngay_tao], [ngay_cap_nhat], [mo_ta], [trang_thai]) VALUES (N'd07e5c3e-d3a9-41fc-9ebe-640308bdd908', NULL, N'Ảnh sản phẩm Airzoom. Mã CTSP1', N'872d1799-e722-42f9-b713-af22f45853b3.jpg', N'5f1820fe-9c83-469d-8cba-7c25f4845e95.jpg', N'767b8877-206c-4288-bf1a-8d900aa0a2a4.jpg', CAST(N'2024-05-18' AS Date), NULL, NULL, 0)
INSERT [dbo].[hinh_anh] ([id_hinh_anh], [ma], [ten_hinh_anh], [url_anh], [url_anh1], [url_anh2], [ngay_tao], [ngay_cap_nhat], [mo_ta], [trang_thai]) VALUES (N'4a820ced-e383-4816-9ab6-65f64107bac4', NULL, N'Ảnh sản phẩm Air Force 1. Mã CTSP36', N'a7f4be57-5fb7-442c-afa4-7a3fc33f8a93.jpg', N'afd0e961-0228-4ca1-946c-177c402c1e5a.jpg', N'46f1fc73-f97b-4582-8d13-b856801554bc.jpg', CAST(N'2024-05-20' AS Date), NULL, NULL, 0)
INSERT [dbo].[hinh_anh] ([id_hinh_anh], [ma], [ten_hinh_anh], [url_anh], [url_anh1], [url_anh2], [ngay_tao], [ngay_cap_nhat], [mo_ta], [trang_thai]) VALUES (N'34ac48e8-ee54-4964-b4f0-66de5d2d54ba', NULL, N'Ảnh sản phẩm Air max. Mã CTSP31', N'88f82fc0-c63c-4afd-9f6f-994a92839693.jpg', N'1d49ba53-22aa-48d4-94af-369598b999e4.jpg', N'6a5b3271-6192-41c4-ad25-638f9bcf8727.jpg', CAST(N'2024-05-20' AS Date), NULL, NULL, 0)
INSERT [dbo].[hinh_anh] ([id_hinh_anh], [ma], [ten_hinh_anh], [url_anh], [url_anh1], [url_anh2], [ngay_tao], [ngay_cap_nhat], [mo_ta], [trang_thai]) VALUES (N'8b921e65-2321-401b-9fd2-6bc3d7713188', NULL, N'Ảnh sản phẩm Mecom. Mã CTSP48', N'ce558f45-f301-4ace-9eea-25959b687538.jpg', N'678d57d3-01a5-4f94-b357-6ec49ab1d183.jpg', N'1e0ad4f6-eef4-4bc1-ab8b-0f9f012c0f20.jpg', CAST(N'2024-05-20' AS Date), NULL, NULL, 0)
INSERT [dbo].[hinh_anh] ([id_hinh_anh], [ma], [ten_hinh_anh], [url_anh], [url_anh1], [url_anh2], [ngay_tao], [ngay_cap_nhat], [mo_ta], [trang_thai]) VALUES (N'f3c8cc53-7459-4aa3-9dc9-6c6d5dacc261', NULL, N'Ảnh sản phẩm Air Force 1. Mã CTSP36', N'53e0b924-4e56-43e9-be22-5a6e9cd09c21.jpg', N'546715cb-f10e-4e6e-a345-ea09bd69398c.jpg', N'3f519587-affb-4bef-a827-dfca806a02c4.jpg', CAST(N'2024-05-20' AS Date), NULL, NULL, 0)
INSERT [dbo].[hinh_anh] ([id_hinh_anh], [ma], [ten_hinh_anh], [url_anh], [url_anh1], [url_anh2], [ngay_tao], [ngay_cap_nhat], [mo_ta], [trang_thai]) VALUES (N'303c0072-8daa-4bea-a1db-6d681d285b79', NULL, N'Ảnh sản phẩm Zegama. Mã CTSP23', N'32b09799-37a4-4e0d-ac09-8bee4fc1bb4b.jpg', N'3495069b-b1c7-4a74-8848-b7e162d510f2.jpg', N'6d26d4b2-d8e2-4c29-94c2-419ca774fd26.jpg', CAST(N'2024-05-20' AS Date), NULL, NULL, 0)
INSERT [dbo].[hinh_anh] ([id_hinh_anh], [ma], [ten_hinh_anh], [url_anh], [url_anh1], [url_anh2], [ngay_tao], [ngay_cap_nhat], [mo_ta], [trang_thai]) VALUES (N'5bafe4df-6c5e-4f21-8c49-6e49cb48eedf', NULL, N'Ảnh sản phẩm Air Jordan hight. Mã CTSP34', N'df5446cc-f02a-4752-81ce-d43361e0b0d4.jpg', N'ccbf5d6b-9667-40a4-8ed4-fc47ca279173.jpg', N'8ab03877-52fe-492e-912f-d956c3d58245.jpg', CAST(N'2024-05-20' AS Date), NULL, NULL, 0)
INSERT [dbo].[hinh_anh] ([id_hinh_anh], [ma], [ten_hinh_anh], [url_anh], [url_anh1], [url_anh2], [ngay_tao], [ngay_cap_nhat], [mo_ta], [trang_thai]) VALUES (N'020dd2dc-a2dd-41ec-af86-6fe295c9fc03', NULL, N'Ảnh sản phẩm Airzoom. Mã CTSP1', N'968fd9e0-a48e-4ee1-acd4-914c1bd8431b.jpg', N'db1951fe-a3d9-4249-b5db-3f4a39926fd7.jpg', N'4af44735-7f3c-41dc-9232-2b4e034890da.jpg', CAST(N'2024-05-18' AS Date), NULL, NULL, 0)
INSERT [dbo].[hinh_anh] ([id_hinh_anh], [ma], [ten_hinh_anh], [url_anh], [url_anh1], [url_anh2], [ngay_tao], [ngay_cap_nhat], [mo_ta], [trang_thai]) VALUES (N'8762ce65-04aa-4c96-b589-715853293ec5', NULL, N'Ảnh sản phẩm Zegama. Mã CTSP13', N'bc220662-cfa2-4485-8bf0-cbb9db5d5bcc.jpg', N'7a7e58c4-aee6-43c5-b3dd-a5dfed9ef3e8.jpg', N'a7827ae3-96b2-4989-99e0-a49eded58b39.jpg', CAST(N'2024-05-20' AS Date), NULL, NULL, 0)
INSERT [dbo].[hinh_anh] ([id_hinh_anh], [ma], [ten_hinh_anh], [url_anh], [url_anh1], [url_anh2], [ngay_tao], [ngay_cap_nhat], [mo_ta], [trang_thai]) VALUES (N'608476eb-66dd-4594-b9be-729c9baf6e78', NULL, N'Ảnh sản phẩm abc', N'3c74b764-74ee-4635-b390-44eb35c9a0e5.jpg', N'268dde0c-cadc-49f2-b965-0951512e85a5.jpg', N'e4b5227a-0e28-471e-8ca0-fbc90b808ce1.jpg', CAST(N'2024-05-20' AS Date), NULL, NULL, 0)
INSERT [dbo].[hinh_anh] ([id_hinh_anh], [ma], [ten_hinh_anh], [url_anh], [url_anh1], [url_anh2], [ngay_tao], [ngay_cap_nhat], [mo_ta], [trang_thai]) VALUES (N'a3edfb8d-9269-4c20-91c0-7720837064ed', NULL, N'Ảnh sản phẩm Air Jordan hight. Mã CTSP34', N'd34c9987-7ae1-4772-a9b3-d6aa8a604694.jpg', N'b2af65b7-e2ad-441c-b089-0dcf591af6ee.jpg', N'5accf927-a0c9-48ba-926d-cfe4826a3749.jpg', CAST(N'2024-05-20' AS Date), NULL, NULL, 0)
INSERT [dbo].[hinh_anh] ([id_hinh_anh], [ma], [ten_hinh_anh], [url_anh], [url_anh1], [url_anh2], [ngay_tao], [ngay_cap_nhat], [mo_ta], [trang_thai]) VALUES (N'c01c2cab-14ee-44ab-9303-78162d34de74', NULL, N'Ảnh sản phẩm Giay the thao', N'd3a8bbcc-29c9-4de9-bd76-7ae6460c5fa1.jpg', N'62f7205b-9794-4fab-bfae-5b71c0977485.jpg', N'7c64db65-3687-4093-905e-cfb461859672.jpg', CAST(N'2024-05-21' AS Date), NULL, NULL, 0)
INSERT [dbo].[hinh_anh] ([id_hinh_anh], [ma], [ten_hinh_anh], [url_anh], [url_anh1], [url_anh2], [ngay_tao], [ngay_cap_nhat], [mo_ta], [trang_thai]) VALUES (N'5b8a88af-ca1d-468f-8a7c-7ad1a4c53ca0', NULL, N'Ảnh sản phẩm Zegama. Mã CTSP13', N'5b69d49c-cfd6-4c36-8cc0-20a343e5fa52.jpg', N'f3324ee5-89b5-479e-a1e6-cc0a8453d0f3.jpg', N'7c12db20-042e-49ae-9d1d-c7c71c3c0af5.jpg', CAST(N'2024-05-20' AS Date), NULL, NULL, 0)
INSERT [dbo].[hinh_anh] ([id_hinh_anh], [ma], [ten_hinh_anh], [url_anh], [url_anh1], [url_anh2], [ngay_tao], [ngay_cap_nhat], [mo_ta], [trang_thai]) VALUES (N'4db732d6-a3ae-414a-bc90-7b2c0e4afd2c', NULL, N'Ảnh sản phẩm Vaporfly. Mã CTSP7', N'4a6db0f8-f2c8-45cb-81f2-8f64562e3fa3.jpg', N'bfd0703a-078d-4f8f-b9cf-8c2e777ae859.jpg', N'58f555e7-7e0e-41b1-896a-0f8f3ab6a775.jpg', CAST(N'2024-05-20' AS Date), NULL, NULL, 0)
INSERT [dbo].[hinh_anh] ([id_hinh_anh], [ma], [ten_hinh_anh], [url_anh], [url_anh1], [url_anh2], [ngay_tao], [ngay_cap_nhat], [mo_ta], [trang_thai]) VALUES (N'9fb02139-de6d-4cd3-9179-7fca60384b83', NULL, N'Ảnh sản phẩm Air Jordan hight. Mã CTSP19', N'0a3c8166-e907-4d0d-9e34-ac5363ae69bc.jpg', N'91cf893f-30a0-48a8-9af1-33e6b9ca6c05.jpg', N'272cb4a9-6d49-4217-a904-34587681ab70.jpg', CAST(N'2024-05-20' AS Date), NULL, NULL, 0)
INSERT [dbo].[hinh_anh] ([id_hinh_anh], [ma], [ten_hinh_anh], [url_anh], [url_anh1], [url_anh2], [ngay_tao], [ngay_cap_nhat], [mo_ta], [trang_thai]) VALUES (N'd05ecb24-49b0-4337-8bd1-80034118b946', NULL, N'Ảnh sản phẩm Mecom. Mã CTSP9', N'909f1b97-640f-4fb2-bec5-e8e1e418ff88.jpg', N'47d4b95e-e0a0-4eed-abbf-bd9d3231038a.jpg', N'5061644b-6f9c-469c-8e44-026d0cbc2eb2.jpg', CAST(N'2024-05-18' AS Date), NULL, NULL, 0)
INSERT [dbo].[hinh_anh] ([id_hinh_anh], [ma], [ten_hinh_anh], [url_anh], [url_anh1], [url_anh2], [ngay_tao], [ngay_cap_nhat], [mo_ta], [trang_thai]) VALUES (N'8201030f-9fa5-4a62-bf25-80afc887d02d', NULL, N'Ảnh sản phẩm Vaporfly. Mã CTSP16', N'e2ae4166-99bb-442a-b0f5-7a18cb6a6f76.jpg', N'f0a6c87a-8f23-411f-814b-07bcf8b6acc5.jpg', N'69b4cde3-88aa-4f73-8911-f6d0460847e9.jpg', CAST(N'2024-05-20' AS Date), NULL, NULL, 0)
INSERT [dbo].[hinh_anh] ([id_hinh_anh], [ma], [ten_hinh_anh], [url_anh], [url_anh1], [url_anh2], [ngay_tao], [ngay_cap_nhat], [mo_ta], [trang_thai]) VALUES (N'0525a8c2-1089-4c91-9439-81e196163edd', NULL, N'Ảnh sản phẩm Airzoom. Mã CTSP44', N'aa2f8ed9-f864-4df2-89ac-5c871de585ad.jpg', N'40a1c2fb-0bcb-46fd-a9b1-733a9a9f498e.jpg', N'4a427f66-afa8-4155-a38c-4265f106f9d1.jpg', CAST(N'2024-05-20' AS Date), NULL, NULL, 0)
INSERT [dbo].[hinh_anh] ([id_hinh_anh], [ma], [ten_hinh_anh], [url_anh], [url_anh1], [url_anh2], [ngay_tao], [ngay_cap_nhat], [mo_ta], [trang_thai]) VALUES (N'e0bd0eff-45e1-4cb0-9aea-8523f8e2c1e3', NULL, N'Ảnh sản phẩm Air Jordan. Mã CTSP25', N'3b06a283-95b7-4868-8521-64ee047e572a.jpg', N'21094893-6985-4063-a559-21f17234f3a3.jpg', N'b7785d0d-254e-4585-80f0-9ab34824c6d5.jpg', CAST(N'2024-05-20' AS Date), NULL, NULL, 0)
INSERT [dbo].[hinh_anh] ([id_hinh_anh], [ma], [ten_hinh_anh], [url_anh], [url_anh1], [url_anh2], [ngay_tao], [ngay_cap_nhat], [mo_ta], [trang_thai]) VALUES (N'b5098594-0eba-4ad3-8b85-886aa0cd2363', NULL, N'Ảnh sản phẩm Zegama. Mã CTSP13', N'6342b4fe-d91f-4978-a70e-ada3a9e612a2.jpg', N'87671cd7-daea-49b9-8288-d8c231a63271.jpg', N'98c0bfe9-82d7-48d9-b901-b0728fd67cc0.jpg', CAST(N'2024-05-20' AS Date), NULL, NULL, 0)
INSERT [dbo].[hinh_anh] ([id_hinh_anh], [ma], [ten_hinh_anh], [url_anh], [url_anh1], [url_anh2], [ngay_tao], [ngay_cap_nhat], [mo_ta], [trang_thai]) VALUES (N'32dcca62-9dad-4490-80d7-8bcb0a98acbe', NULL, N'Ảnh sản phẩm Air Jordan. Mã CTSP25', N'624a777b-b113-402e-a10e-e938ad77d030.jpg', N'07292c0b-2e54-4958-a89a-ca4efe959c9c.jpg', N'1893b0e7-8d08-4b52-9c8c-545770d28596.jpg', CAST(N'2024-05-20' AS Date), NULL, NULL, 0)
INSERT [dbo].[hinh_anh] ([id_hinh_anh], [ma], [ten_hinh_anh], [url_anh], [url_anh1], [url_anh2], [ngay_tao], [ngay_cap_nhat], [mo_ta], [trang_thai]) VALUES (N'7f20c154-2b72-42e6-b22a-8bd2eede7d26', NULL, N'Ảnh sản phẩm Mecom. Mã CTSP35', N'e12445e6-2d4b-499d-adce-b581c987414b.jpg', N'3aa43ba1-1379-4564-9dc8-d597e11bf802.jpg', N'ec18e660-3673-4dba-adb3-fadddfdc215b.jpg', CAST(N'2024-05-20' AS Date), NULL, NULL, 0)
INSERT [dbo].[hinh_anh] ([id_hinh_anh], [ma], [ten_hinh_anh], [url_anh], [url_anh1], [url_anh2], [ngay_tao], [ngay_cap_nhat], [mo_ta], [trang_thai]) VALUES (N'f881f35b-2fe8-44ad-8efe-8e6aaad1e70b', NULL, N'Ảnh sản phẩm Zegama. Mã CTSP23', N'cf6488ed-bea9-4d6c-a941-6e486fd35dff.jpg', N'10e632c3-d855-4da7-b754-7246b05a03c7.jpg', N'c09d18e5-43c6-4916-83b2-d61487e2546d.jpg', CAST(N'2024-05-20' AS Date), NULL, NULL, 0)
INSERT [dbo].[hinh_anh] ([id_hinh_anh], [ma], [ten_hinh_anh], [url_anh], [url_anh1], [url_anh2], [ngay_tao], [ngay_cap_nhat], [mo_ta], [trang_thai]) VALUES (N'7bde331d-7d59-4ad5-86a5-93678ce7d4fb', NULL, N'Ảnh sản phẩm Vaporfly. Mã CTSP7', N'18ee75d3-c328-4f8d-9719-d4418d0e72df.jpg', N'6d7fc212-7f28-47ce-bca8-6ab210d20a7b.jpg', N'415e9329-dccd-421f-a382-3a7ef1247cb3.jpg', CAST(N'2024-05-20' AS Date), NULL, NULL, 0)
INSERT [dbo].[hinh_anh] ([id_hinh_anh], [ma], [ten_hinh_anh], [url_anh], [url_anh1], [url_anh2], [ngay_tao], [ngay_cap_nhat], [mo_ta], [trang_thai]) VALUES (N'e305f621-d420-46c9-88e6-946d41c6bc36', NULL, N'Ảnh sản phẩm Air Jordan hight. Mã CTSP34', N'a071939a-cdf2-4145-becf-2f9ff9fbe4f0.jpg', N'54e9d6f8-5519-49f4-8668-256e3801a4ff.jpg', N'88b8a8b1-3f17-4c2d-a944-040b79054cea.jpg', CAST(N'2024-05-20' AS Date), NULL, NULL, 0)
INSERT [dbo].[hinh_anh] ([id_hinh_anh], [ma], [ten_hinh_anh], [url_anh], [url_anh1], [url_anh2], [ngay_tao], [ngay_cap_nhat], [mo_ta], [trang_thai]) VALUES (N'87774b20-440d-45b1-beae-96b92ebbdda7', NULL, N'Ảnh sản phẩm Vaporfly. Mã CTSP16', N'2e23ef5a-3aa3-4cc2-a572-5f58d700a69e.jpg', N'3b69a07a-f375-4aff-b9cf-63a1e6a715af.jpg', N'5499f48a-28aa-40fb-b6b3-e9dda3d19c6f.jpg', CAST(N'2024-05-20' AS Date), NULL, NULL, 0)
INSERT [dbo].[hinh_anh] ([id_hinh_anh], [ma], [ten_hinh_anh], [url_anh], [url_anh1], [url_anh2], [ngay_tao], [ngay_cap_nhat], [mo_ta], [trang_thai]) VALUES (N'35aa8470-1690-4c58-8dff-970cd762f492', NULL, N'Ảnh sản phẩm Airzoom. Mã CTSP1', N'4db21fd6-2e4c-416c-b801-ba23183b4f33.jpg', N'854f0752-f0e6-4bb5-84b2-95877035957d.jpg', N'c69b3fba-d530-4f70-9991-39d9f2fc50b6.jpg', CAST(N'2024-05-18' AS Date), NULL, NULL, 0)
INSERT [dbo].[hinh_anh] ([id_hinh_anh], [ma], [ten_hinh_anh], [url_anh], [url_anh1], [url_anh2], [ngay_tao], [ngay_cap_nhat], [mo_ta], [trang_thai]) VALUES (N'998d27a2-5732-41f6-9cdc-99fbd23f8188', NULL, N'Ảnh sản phẩm Mecom. Mã CTSP35', N'6b0b92ba-a6b0-4f3d-80c3-5a6e2ef80b3f.jpg', N'415dad67-ec4e-4bb7-b4cb-44d5784a9a0c.jpg', N'8a8cdb65-b4af-44a4-9a76-00c8d91b7ce0.jpg', CAST(N'2024-05-20' AS Date), NULL, NULL, 0)
INSERT [dbo].[hinh_anh] ([id_hinh_anh], [ma], [ten_hinh_anh], [url_anh], [url_anh1], [url_anh2], [ngay_tao], [ngay_cap_nhat], [mo_ta], [trang_thai]) VALUES (N'ed625d2b-916c-4058-8c65-9a0a72c69bff', NULL, N'Ảnh sản phẩm Mecom. Mã CTSP39', N'8f4f958e-1ec6-4777-ad4b-a4313320196c.jpg', N'ab8e99de-2969-463b-8690-9b9238be69fc.jpg', N'2ae93f90-a1c3-4b53-902e-4a06b30a286f.jpg', CAST(N'2024-05-20' AS Date), NULL, NULL, 0)
INSERT [dbo].[hinh_anh] ([id_hinh_anh], [ma], [ten_hinh_anh], [url_anh], [url_anh1], [url_anh2], [ngay_tao], [ngay_cap_nhat], [mo_ta], [trang_thai]) VALUES (N'5a49b1e2-7f09-4225-a622-9bd750640d22', NULL, N'Ảnh sản phẩm Air max. Mã CTSP31', N'bb8d8321-3b96-462f-944e-0221834c5807.jpg', N'774865a7-0545-4c97-acde-70ac75c0b929.jpg', N'7a68a10f-ec11-4ba5-b881-c28e05884cb2.jpg', CAST(N'2024-05-20' AS Date), NULL, NULL, 0)
INSERT [dbo].[hinh_anh] ([id_hinh_anh], [ma], [ten_hinh_anh], [url_anh], [url_anh1], [url_anh2], [ngay_tao], [ngay_cap_nhat], [mo_ta], [trang_thai]) VALUES (N'7b18b5a4-60f6-4d03-8d55-a07d898ccf55', NULL, N'Ảnh sản phẩm Mecom. Mã CTSP9', N'66de77dc-3d78-4b8a-a0cc-20abdcca5305.jpg', N'0cb68d67-61b6-46cd-9890-d9c7b3453313.jpg', N'cb6417dd-46f5-4cfb-8e74-22ce78f88eb2.jpg', CAST(N'2024-05-18' AS Date), NULL, NULL, 0)
INSERT [dbo].[hinh_anh] ([id_hinh_anh], [ma], [ten_hinh_anh], [url_anh], [url_anh1], [url_anh2], [ngay_tao], [ngay_cap_nhat], [mo_ta], [trang_thai]) VALUES (N'fabe782e-1180-4267-8fbc-a12328bc0ef2', NULL, N'Ảnh sản phẩm Vaporfly. Mã CTSP7', N'40a7ac7b-15c4-469e-af67-b2176c4cdd32.jpg', N'868b0083-85ca-4013-b22a-de915662d074.jpg', N'320179e1-d8a0-4b25-af1f-12b19a200639.jpg', CAST(N'2024-05-20' AS Date), NULL, NULL, 0)
INSERT [dbo].[hinh_anh] ([id_hinh_anh], [ma], [ten_hinh_anh], [url_anh], [url_anh1], [url_anh2], [ngay_tao], [ngay_cap_nhat], [mo_ta], [trang_thai]) VALUES (N'2ecec9fd-6b29-4f0a-b930-a24a7696b27f', NULL, N'Ảnh sản phẩm Zegama. Mã CTSP13', N'9cef41a5-fae4-4e9c-86a7-c67cd165ee25.jpg', N'4ff853b4-b305-4523-a65d-da98a9f62b3e.jpg', N'9f92dd96-2cd8-4013-b0d8-39b8628af1fa.jpg', CAST(N'2024-05-20' AS Date), NULL, NULL, 0)
INSERT [dbo].[hinh_anh] ([id_hinh_anh], [ma], [ten_hinh_anh], [url_anh], [url_anh1], [url_anh2], [ngay_tao], [ngay_cap_nhat], [mo_ta], [trang_thai]) VALUES (N'a48efba2-012c-48b5-8bba-a31186be88dc', NULL, N'Ảnh sản phẩm Mecom. Mã CTSP9', N'34ec89e5-be8e-4e0f-9b71-ff5095539133.jpg', N'0b41ba71-db7a-48e5-8eb4-aaa460a0a7a7.jpg', N'c0bfd945-da5a-4aad-a4ad-0eeaa43a750d.jpg', CAST(N'2024-05-18' AS Date), NULL, NULL, 0)
INSERT [dbo].[hinh_anh] ([id_hinh_anh], [ma], [ten_hinh_anh], [url_anh], [url_anh1], [url_anh2], [ngay_tao], [ngay_cap_nhat], [mo_ta], [trang_thai]) VALUES (N'4fd42d78-310f-4d5e-88e3-a524816163a1', NULL, N'Ảnh sản phẩm Zegama. Mã CTSP23', N'42298b0a-a528-41af-88e6-f05176606787.jpg', N'de31c33d-b489-4469-a943-a881960ddb37.jpg', N'04cfd1eb-80b6-4f60-ab01-5b121d41b528.jpg', CAST(N'2024-05-20' AS Date), NULL, NULL, 0)
INSERT [dbo].[hinh_anh] ([id_hinh_anh], [ma], [ten_hinh_anh], [url_anh], [url_anh1], [url_anh2], [ngay_tao], [ngay_cap_nhat], [mo_ta], [trang_thai]) VALUES (N'9db222f1-f889-4928-9635-aafe880efd84', NULL, N'Ảnh sản phẩm Vaporfly. Mã CTSP16', N'5b639921-fe27-43f6-8688-30979df6e932.jpg', N'4a38d92e-d447-4838-9027-a43d3dd8b14a.jpg', N'cfebf2f2-f52d-4d2b-9e4e-6680f97dad02.jpg', CAST(N'2024-05-20' AS Date), NULL, NULL, 0)
INSERT [dbo].[hinh_anh] ([id_hinh_anh], [ma], [ten_hinh_anh], [url_anh], [url_anh1], [url_anh2], [ngay_tao], [ngay_cap_nhat], [mo_ta], [trang_thai]) VALUES (N'4eff1908-f13b-4af5-814f-ab9a5eb8333a', NULL, N'Ảnh sản phẩm Vaporfly. Mã CTSP16', N'da238f15-70f6-4d4b-ad3a-eef9b4fc798f.jpg', N'132d2591-b0b5-4a01-8dca-0cd776b94a7f.jpg', N'60cb9785-cb7a-4b88-99f5-1c0b616c42c0.jpg', CAST(N'2024-05-20' AS Date), NULL, NULL, 0)
INSERT [dbo].[hinh_anh] ([id_hinh_anh], [ma], [ten_hinh_anh], [url_anh], [url_anh1], [url_anh2], [ngay_tao], [ngay_cap_nhat], [mo_ta], [trang_thai]) VALUES (N'04bd484a-a418-4089-bf02-b0e9960a465b', NULL, N'Ảnh sản phẩm Airzoom. Mã CTSP1', N'9b2288af-8b2e-4741-a710-5110b9acd925.jpg', N'9757e709-e9f6-4581-b67a-c0bdd271c0e6.jpg', N'5a8678e6-dcfc-49b1-9089-107e41fe9030.jpg', CAST(N'2024-05-18' AS Date), NULL, NULL, 0)
INSERT [dbo].[hinh_anh] ([id_hinh_anh], [ma], [ten_hinh_anh], [url_anh], [url_anh1], [url_anh2], [ngay_tao], [ngay_cap_nhat], [mo_ta], [trang_thai]) VALUES (N'f230b9ea-ea5d-4584-80b8-b305a5995950', NULL, N'Ảnh sản phẩm Airzoom. Mã CTSP1', N'857f078b-2da7-4a44-ab4f-98812cc1ca81.jpg', N'f1bc18ce-86b3-4885-abd7-9c7679571011.jpg', N'c037a6fd-000e-4c05-97bf-cb127c8b1c72.jpg', CAST(N'2024-05-18' AS Date), NULL, NULL, 0)
INSERT [dbo].[hinh_anh] ([id_hinh_anh], [ma], [ten_hinh_anh], [url_anh], [url_anh1], [url_anh2], [ngay_tao], [ngay_cap_nhat], [mo_ta], [trang_thai]) VALUES (N'671e673a-c4dc-41d7-a199-b3b80298556c', NULL, N'Ảnh sản phẩm Nike duck low', N'2e352305-4f92-48a4-90f1-81e758249720.jpg', N'6b6028dd-70e7-498e-aab7-732b735737d5.jpg', N'45428e2e-ffb9-4fb6-8929-fc0e1ac4f106.jpg', CAST(N'2024-05-20' AS Date), NULL, NULL, 0)
INSERT [dbo].[hinh_anh] ([id_hinh_anh], [ma], [ten_hinh_anh], [url_anh], [url_anh1], [url_anh2], [ngay_tao], [ngay_cap_nhat], [mo_ta], [trang_thai]) VALUES (N'83d5f290-e60d-4882-a26a-b67794dccedf', NULL, N'Ảnh sản phẩm Nike duck low. Mã CTSP40', N'11d0568c-188d-4a4f-9530-73fa2238db29.jpg', N'8c390e52-f2a0-432b-b399-b77939c3113d.jpg', N'1a0237bf-7bcb-492f-b5e9-33004b4a9b48.jpg', CAST(N'2024-05-20' AS Date), NULL, NULL, 0)
INSERT [dbo].[hinh_anh] ([id_hinh_anh], [ma], [ten_hinh_anh], [url_anh], [url_anh1], [url_anh2], [ngay_tao], [ngay_cap_nhat], [mo_ta], [trang_thai]) VALUES (N'2a3290d8-84b1-4220-a284-b8bd489bd5d9', NULL, N'Ảnh sản phẩm Nike duck low. Mã CTSP40', N'819999fd-cd17-47ab-bc5e-30a815f19cd6.jpg', N'bf867d12-e9b8-4175-80bf-d0418c212771.jpg', N'ec52777b-53b5-4726-9733-ea4aa4d5a2c5.jpg', CAST(N'2024-05-20' AS Date), NULL, NULL, 0)
INSERT [dbo].[hinh_anh] ([id_hinh_anh], [ma], [ten_hinh_anh], [url_anh], [url_anh1], [url_anh2], [ngay_tao], [ngay_cap_nhat], [mo_ta], [trang_thai]) VALUES (N'e18afe21-1d05-4640-8b40-bad79e23ba00', NULL, N'Ảnh sản phẩm Air Force 1. Mã CTSP36', N'60d87de5-2d9b-4055-97ea-d7e106c2d0e8.jpg', N'4805c368-a60f-4839-815d-fdf6be2525b8.jpg', N'acddb99d-76c6-4042-a7b0-f848e76af4bd.jpg', CAST(N'2024-05-20' AS Date), NULL, NULL, 0)
INSERT [dbo].[hinh_anh] ([id_hinh_anh], [ma], [ten_hinh_anh], [url_anh], [url_anh1], [url_anh2], [ngay_tao], [ngay_cap_nhat], [mo_ta], [trang_thai]) VALUES (N'887c525d-123d-4b0d-a542-bc336931d440', NULL, N'Ảnh sản phẩm Air Jordan', N'def1802c-bf8d-417d-a8c7-9cef61014e80.jpg', N'87864fd3-0e21-4c98-b32c-36d2edb9ece8.jpg', N'2e99d22b-fefa-437b-a424-b38c941995c7.jpg', CAST(N'2024-05-20' AS Date), NULL, NULL, 0)
INSERT [dbo].[hinh_anh] ([id_hinh_anh], [ma], [ten_hinh_anh], [url_anh], [url_anh1], [url_anh2], [ngay_tao], [ngay_cap_nhat], [mo_ta], [trang_thai]) VALUES (N'53d08386-5e26-476e-b9c9-c740357d8e1d', NULL, N'Ảnh sản phẩm Air Jordan. Mã CTSP25', N'1f296958-079c-45f9-85bc-8dd9c8a1ad32.jpg', N'862a1a68-045a-4cf8-8894-813b008e6278.jpg', N'087b6eaa-19fa-4c54-9842-8f5e667c4f4f.jpg', CAST(N'2024-05-20' AS Date), NULL, NULL, 0)
INSERT [dbo].[hinh_anh] ([id_hinh_anh], [ma], [ten_hinh_anh], [url_anh], [url_anh1], [url_anh2], [ngay_tao], [ngay_cap_nhat], [mo_ta], [trang_thai]) VALUES (N'3f7a6e8e-b4e4-41cf-a1bc-c901873d8c56', NULL, N'Ảnh sản phẩm Giay the thao. Mã CTSP49', N'ca5c8b62-dfe2-431c-98bc-60da10a8ef9e.jpg', N'3c644b42-6f61-4ef5-b967-e0e410dc3c94.jpg', N'05421bdf-4404-49ca-afd9-8d3ad3011643.jpg', CAST(N'2024-05-21' AS Date), NULL, NULL, 0)
INSERT [dbo].[hinh_anh] ([id_hinh_anh], [ma], [ten_hinh_anh], [url_anh], [url_anh1], [url_anh2], [ngay_tao], [ngay_cap_nhat], [mo_ta], [trang_thai]) VALUES (N'3b9c38d2-d201-462c-abf0-cc920437866e', NULL, N'Ảnh sản phẩm Airzoom', N'652b77a2-29b2-41c1-a5a4-52ca6f1470f5.jpg', N'fb82a44d-fd59-4ea9-a239-64d840f54137.jpg', N'466ccf77-82e5-4def-aebc-ef6cd4930394.jpg', CAST(N'2024-05-18' AS Date), NULL, NULL, 0)
INSERT [dbo].[hinh_anh] ([id_hinh_anh], [ma], [ten_hinh_anh], [url_anh], [url_anh1], [url_anh2], [ngay_tao], [ngay_cap_nhat], [mo_ta], [trang_thai]) VALUES (N'ac0a9ba1-c509-4158-b22a-d086b22ff486', NULL, N'Ảnh sản phẩm Giay the thao. Mã CTSP49', N'f33e8cb5-4275-46c1-9a36-b608b00791f0.jpg', N'2c842d10-6f7d-4220-8191-661ae1a62ee8.jpg', N'ce0fef50-5330-4c16-a93b-19c8eb82f455.jpg', CAST(N'2024-05-21' AS Date), NULL, NULL, 0)
INSERT [dbo].[hinh_anh] ([id_hinh_anh], [ma], [ten_hinh_anh], [url_anh], [url_anh1], [url_anh2], [ngay_tao], [ngay_cap_nhat], [mo_ta], [trang_thai]) VALUES (N'9883cc41-694b-4272-bc86-d097c6dcfeb3', NULL, N'Ảnh sản phẩm Air Jordan. Mã CTSP25', N'78ef7d8d-deda-4313-a532-9b232dd0b427.jpg', N'510e46b9-4a19-4183-9b44-d5ed405c580d.jpg', N'5acab506-6260-40c7-9c9d-d2fba12c427b.jpg', CAST(N'2024-05-20' AS Date), NULL, NULL, 0)
INSERT [dbo].[hinh_anh] ([id_hinh_anh], [ma], [ten_hinh_anh], [url_anh], [url_anh1], [url_anh2], [ngay_tao], [ngay_cap_nhat], [mo_ta], [trang_thai]) VALUES (N'30acff6c-5891-48cc-8b3d-d326ae63843e', NULL, N'Ảnh sản phẩm Giay the thao. Mã CTSP49', N'e6e4fafa-60bc-45e1-94d1-1a390c70d808.jpg', N'4882ee20-5e88-4810-8b02-94edf1b177b0.jpg', N'64fb0ec6-220d-4ccf-ac55-9c569ebcc83b.jpg', CAST(N'2024-05-21' AS Date), NULL, NULL, 0)
INSERT [dbo].[hinh_anh] ([id_hinh_anh], [ma], [ten_hinh_anh], [url_anh], [url_anh1], [url_anh2], [ngay_tao], [ngay_cap_nhat], [mo_ta], [trang_thai]) VALUES (N'138b25c4-38f7-4416-ab25-d4ac1d68d1c6', NULL, N'Ảnh sản phẩm Mecom. Mã CTSP9', N'd13233c3-e436-4a55-a084-cd6c2fa23464.jpg', N'54c9d66f-86f4-4d6a-8234-9484951c9d20.jpg', N'4b7a0a66-4e66-4d0d-80ce-34d609a89a09.jpg', CAST(N'2024-05-18' AS Date), NULL, NULL, 0)
INSERT [dbo].[hinh_anh] ([id_hinh_anh], [ma], [ten_hinh_anh], [url_anh], [url_anh1], [url_anh2], [ngay_tao], [ngay_cap_nhat], [mo_ta], [trang_thai]) VALUES (N'e451dccf-a0f9-45fd-8dea-d736a0f6f64a', NULL, N'Ảnh sản phẩm Mecom. Mã CTSP1', N'b7814209-567b-4a44-9077-1b666951d97e.jpg', N'be2e4bb2-9586-4781-b9c5-c8a3b75e75d8.jpg', N'8d2a2bdf-92cd-4255-ab82-80ef5f2d6c7c.jpg', CAST(N'2024-05-20' AS Date), NULL, NULL, 0)
INSERT [dbo].[hinh_anh] ([id_hinh_anh], [ma], [ten_hinh_anh], [url_anh], [url_anh1], [url_anh2], [ngay_tao], [ngay_cap_nhat], [mo_ta], [trang_thai]) VALUES (N'5833ea36-a36d-4d7e-a4ec-d84c06c1ddcd', NULL, N'Ảnh sản phẩm Vaporfly. Mã CTSP7', N'e6de85b3-afab-4152-b332-5d5fc2bdce0e.jpg', N'b6cdcd96-749e-4627-b615-12cc4c829f4e.jpg', N'fc3ffa2c-f26d-4b2c-a119-c0ea99e710d0.jpg', CAST(N'2024-05-20' AS Date), NULL, NULL, 0)
INSERT [dbo].[hinh_anh] ([id_hinh_anh], [ma], [ten_hinh_anh], [url_anh], [url_anh1], [url_anh2], [ngay_tao], [ngay_cap_nhat], [mo_ta], [trang_thai]) VALUES (N'ab9f6780-6958-4662-a603-d882ef54551b', NULL, N'Ảnh sản phẩm Air Jordan. Mã CTSP25', N'207f1a2c-8fbd-4f9b-bd63-86dd63de8f75.jpg', N'cf9375c7-910f-4a32-8ffc-361f83de588d.jpg', N'f5b8a2b1-6afd-4ec7-a629-62c366fd5565.jpg', CAST(N'2024-05-20' AS Date), NULL, NULL, 0)
INSERT [dbo].[hinh_anh] ([id_hinh_anh], [ma], [ten_hinh_anh], [url_anh], [url_anh1], [url_anh2], [ngay_tao], [ngay_cap_nhat], [mo_ta], [trang_thai]) VALUES (N'dccd2c8c-0bf0-493b-b9e5-e63cbfacfda5', NULL, N'Ảnh sản phẩm Air Jordan. Mã CTSP29', N'4ad199d3-0a21-4c52-84b7-6ca26ca817f3.jpg', N'23726714-bc6a-42a5-9cd4-9324a8a2983b.jpg', N'a0d4e21a-965d-460d-b3e6-a66550d93313.jpg', CAST(N'2024-05-20' AS Date), NULL, NULL, 0)
INSERT [dbo].[hinh_anh] ([id_hinh_anh], [ma], [ten_hinh_anh], [url_anh], [url_anh1], [url_anh2], [ngay_tao], [ngay_cap_nhat], [mo_ta], [trang_thai]) VALUES (N'37523241-7ffc-45d8-83cd-e718e5d48a6b', NULL, N'Ảnh sản phẩm Air Jordan hight. Mã CTSP19', N'e7648e61-3e7b-41d6-b847-d68eb733d84d.jpg', N'95e372f8-6360-4bfa-8ed6-738804833b79.jpg', N'7d832f9b-5a70-47da-85ba-d0001f6383ec.jpg', CAST(N'2024-05-20' AS Date), NULL, NULL, 0)
INSERT [dbo].[hinh_anh] ([id_hinh_anh], [ma], [ten_hinh_anh], [url_anh], [url_anh1], [url_anh2], [ngay_tao], [ngay_cap_nhat], [mo_ta], [trang_thai]) VALUES (N'24a01d64-49ae-4267-892a-e83100aea63a', NULL, N'Ảnh sản phẩm Air Jordan hight', N'017aef8c-9cb3-4c78-a743-40be7b150b8b.jpg', N'50c1f775-675e-40b8-bd80-7b49cb7754d2.jpg', N'43c9b546-52ea-49f2-ac8a-b2af38c9ed64.jpg', CAST(N'2024-05-20' AS Date), NULL, NULL, 0)
INSERT [dbo].[hinh_anh] ([id_hinh_anh], [ma], [ten_hinh_anh], [url_anh], [url_anh1], [url_anh2], [ngay_tao], [ngay_cap_nhat], [mo_ta], [trang_thai]) VALUES (N'856e7c14-587c-4379-bb7c-e95b84d2bbed', NULL, N'Ảnh sản phẩm Air Jordan hight. Mã CTSP19', N'518918bc-fbba-42b4-84b4-2aa50e37b7fa.jpg', N'42cdecdf-d953-4958-bb44-93877fccc833.jpg', N'b4c09a74-a62f-44c0-b35e-75ed5a5bca29.jpg', CAST(N'2024-05-20' AS Date), NULL, NULL, 0)
INSERT [dbo].[hinh_anh] ([id_hinh_anh], [ma], [ten_hinh_anh], [url_anh], [url_anh1], [url_anh2], [ngay_tao], [ngay_cap_nhat], [mo_ta], [trang_thai]) VALUES (N'5a7487ca-d07b-431a-9650-e98d6cc8df6c', NULL, N'Ảnh sản phẩm Mecom. Mã CTSP39', N'a0e3f639-3170-4cd6-b3cf-4750ff4f2776.jpg', N'af20a334-5cd7-4c71-8818-f487ab2af970.jpg', N'd46ec011-b0f7-400f-a9d0-ce3409d4c705.jpg', CAST(N'2024-05-20' AS Date), NULL, NULL, 0)
INSERT [dbo].[hinh_anh] ([id_hinh_anh], [ma], [ten_hinh_anh], [url_anh], [url_anh1], [url_anh2], [ngay_tao], [ngay_cap_nhat], [mo_ta], [trang_thai]) VALUES (N'7fdb57a9-5edb-4893-8665-e9e81b261dd0', NULL, N'Ảnh sản phẩm Nike duck low. Mã CTSP40', N'6663d1e6-5458-47c6-9001-28ce54a3d0a3.jpg', N'8c1b9593-9e6a-4c36-918f-2fb1239840d0.jpg', N'55c6e8a8-ff38-47e1-aeb6-9bb476493442.jpg', CAST(N'2024-05-20' AS Date), NULL, NULL, 0)
INSERT [dbo].[hinh_anh] ([id_hinh_anh], [ma], [ten_hinh_anh], [url_anh], [url_anh1], [url_anh2], [ngay_tao], [ngay_cap_nhat], [mo_ta], [trang_thai]) VALUES (N'4e0ab518-fcc4-4ec1-9d95-eb36779841d5', NULL, N'Ảnh sản phẩm Mecom. Mã CTSP1', N'4541ba5d-b7ab-4b30-8b6c-65bde434d484.jpg', N'90c0141f-1372-44d2-801e-2a2ebf36684e.jpg', N'4ac79ff4-787f-4c5e-9534-bf5f76d38d1b.jpg', CAST(N'2024-05-20' AS Date), NULL, NULL, 0)
INSERT [dbo].[hinh_anh] ([id_hinh_anh], [ma], [ten_hinh_anh], [url_anh], [url_anh1], [url_anh2], [ngay_tao], [ngay_cap_nhat], [mo_ta], [trang_thai]) VALUES (N'f525571f-2f0a-4503-a83c-ed05d561eed1', NULL, N'Ảnh sản phẩm Zegama. Mã CTSP23', N'e6ce95e9-d60d-4f79-b727-1691b4557556.jpg', N'25a2897d-41b7-40cb-8731-8e472e020a35.jpg', N'4ed96e98-f026-4af9-a864-43f6b588437f.jpg', CAST(N'2024-05-20' AS Date), NULL, NULL, 0)
INSERT [dbo].[hinh_anh] ([id_hinh_anh], [ma], [ten_hinh_anh], [url_anh], [url_anh1], [url_anh2], [ngay_tao], [ngay_cap_nhat], [mo_ta], [trang_thai]) VALUES (N'cfc58da8-054c-4bc0-93b2-ee3e43219c2f', NULL, N'Ảnh sản phẩm Airzoom. Mã CTSP44', N'3dd13afb-8498-4e89-bfb9-8afee4778aa0.jpg', N'215e4f42-0640-4297-8d0a-0360347f5bb2.jpg', N'7c084f11-e770-4730-a424-60ced6113892.jpg', CAST(N'2024-05-20' AS Date), NULL, NULL, 0)
INSERT [dbo].[hinh_anh] ([id_hinh_anh], [ma], [ten_hinh_anh], [url_anh], [url_anh1], [url_anh2], [ngay_tao], [ngay_cap_nhat], [mo_ta], [trang_thai]) VALUES (N'972dcc5e-82a4-4905-b88b-ee8f3a237fe2', NULL, N'Ảnh sản phẩm Vaporfly. Mã CTSP16', N'611e4040-4763-4755-a71a-10bb8c572df5.jpg', N'4946963d-f008-460a-9cda-6d5b99706c59.jpg', N'4e20ff10-e5d5-4722-acba-dc36f2ee5613.jpg', CAST(N'2024-05-20' AS Date), NULL, NULL, 0)
INSERT [dbo].[hinh_anh] ([id_hinh_anh], [ma], [ten_hinh_anh], [url_anh], [url_anh1], [url_anh2], [ngay_tao], [ngay_cap_nhat], [mo_ta], [trang_thai]) VALUES (N'f99addb9-58d9-4924-b2b5-f3a086606de0', NULL, N'Ảnh sản phẩm Air Jordan. Mã CTSP25', N'a55a6451-3927-4da1-88b8-ca3351417509.jpg', N'51f3d4d9-b9f6-4b6a-ad49-cc5aeb41c593.jpg', N'ece8f618-8f47-4d7c-b250-9b7b27ec1aa6.jpg', CAST(N'2024-05-20' AS Date), NULL, NULL, 0)
INSERT [dbo].[hinh_anh] ([id_hinh_anh], [ma], [ten_hinh_anh], [url_anh], [url_anh1], [url_anh2], [ngay_tao], [ngay_cap_nhat], [mo_ta], [trang_thai]) VALUES (N'e3a2dbba-fb40-407b-abd9-f3b5637b975a', NULL, N'Ảnh sản phẩm Vaporfly. Mã CTSP16', N'2dd59332-d954-4ba4-af75-e1d257baeb08.jpg', N'ac9fc8b5-5634-4c1c-911e-8e5956c6ba08.jpg', N'1a57d9ee-28f8-4208-a363-f892d3ab2f0d.jpg', CAST(N'2024-05-20' AS Date), NULL, NULL, 0)
GO
INSERT [dbo].[hinh_anh] ([id_hinh_anh], [ma], [ten_hinh_anh], [url_anh], [url_anh1], [url_anh2], [ngay_tao], [ngay_cap_nhat], [mo_ta], [trang_thai]) VALUES (N'9a9d966d-2a1f-4ff0-9139-f84cece9d135', NULL, N'Ảnh sản phẩm Mecom. Mã CTSP9', N'4f315269-a865-46bb-aa06-d25555f8c678.jpg', N'e3167fbb-8c8b-4cf8-8925-eadb3fcb5b77.jpg', N'c28f02a9-066f-4cb3-b59a-9670edeec118.jpg', CAST(N'2024-05-18' AS Date), NULL, NULL, 0)
INSERT [dbo].[hinh_anh] ([id_hinh_anh], [ma], [ten_hinh_anh], [url_anh], [url_anh1], [url_anh2], [ngay_tao], [ngay_cap_nhat], [mo_ta], [trang_thai]) VALUES (N'89539b1b-01d7-466c-8d8b-f9b1f2fad617', NULL, N'Ảnh sản phẩm Air Force 1', N'30064d1a-af20-44fb-9c14-b054f5725ff9.jpg', N'd103d8de-f2e7-4004-8e02-9955fde77587.jpg', N'ef5fd313-81f4-4431-a7fa-ad05deb1c49d.jpg', CAST(N'2024-05-20' AS Date), NULL, NULL, 0)
INSERT [dbo].[hinh_anh] ([id_hinh_anh], [ma], [ten_hinh_anh], [url_anh], [url_anh1], [url_anh2], [ngay_tao], [ngay_cap_nhat], [mo_ta], [trang_thai]) VALUES (N'cf655faf-308a-4478-9281-fe99ad271ce4', NULL, N'Ảnh sản phẩm Airzoom. Mã CTSP44', N'5cdef382-6e2f-4a50-8122-b4cb9657204c.jpg', N'a2382f58-de8a-4165-8f6d-57649af07e5f.jpg', N'f112fe0f-4261-4eea-9835-b011eb4763c8.jpg', CAST(N'2024-05-20' AS Date), NULL, NULL, 0)
GO
INSERT [dbo].[hoa_don] ([id_hoa_don], [ma_hoa_don], [ngay_tao], [ngay_cap_nhat], [nhan_vien_id], [khach_hang_id], [khuyen_mai_id], [ten_nguoi_nhan], [sdt], [dia_chi], [tong_tien], [phuong_thuc_thanh_toan], [loai], [ghi_chu], [trang_thai], [tien_mat], [chuyen_khoan], [tien_giam], [tien_ship]) VALUES (N'2bea9fac-ab1d-491f-9ae5-0c2a055c9b9d', N'HÐ06267', CAST(N'2024-05-21T08:46:06.547' AS DateTime), CAST(N'2024-05-21T09:03:02.283' AS DateTime), N'ed1fc377-5b9b-4cc7-a476-ae368add91b4', N'e520097e-6d74-4955-b164-88d4812c7dfb', N'754462a8-432f-4d1c-bd33-3b3352f0b381', N'Nguyễn Văn Nam', N'0398685351', N'Số 39{,} Quận Ba Đình{,} Thành phố Hà Nội', 361200.0000, 0, 1, N'N/A', 10, NULL, NULL, 90300.0000, 51500.0000)
INSERT [dbo].[hoa_don] ([id_hoa_don], [ma_hoa_don], [ngay_tao], [ngay_cap_nhat], [nhan_vien_id], [khach_hang_id], [khuyen_mai_id], [ten_nguoi_nhan], [sdt], [dia_chi], [tong_tien], [phuong_thuc_thanh_toan], [loai], [ghi_chu], [trang_thai], [tien_mat], [chuyen_khoan], [tien_giam], [tien_ship]) VALUES (N'e1f3a77f-9cd4-4c2e-bb5b-0d3f3d5b7280', N'HÐ02239', CAST(N'2024-05-21T11:14:25.933' AS DateTime), NULL, NULL, N'540e8a9c-053d-42c6-8b71-b8b137de1ab6', NULL, N'leanhdung', N'0867550591', N'HaNoi{,} Quận Ba Đình{,} Thành phố Hà Nội', 15.0515, 0, 1, N'r', 0, NULL, NULL, 0.0000, 51500.0000)
INSERT [dbo].[hoa_don] ([id_hoa_don], [ma_hoa_don], [ngay_tao], [ngay_cap_nhat], [nhan_vien_id], [khach_hang_id], [khuyen_mai_id], [ten_nguoi_nhan], [sdt], [dia_chi], [tong_tien], [phuong_thuc_thanh_toan], [loai], [ghi_chu], [trang_thai], [tien_mat], [chuyen_khoan], [tien_giam], [tien_ship]) VALUES (N'5d3bbbbc-30a3-494e-a1cd-10cb56be61f4', N'HÐ07973', CAST(N'2024-05-18T00:27:35.190' AS DateTime), CAST(N'2024-05-20T00:36:30.547' AS DateTime), N'ed1fc377-5b9b-4cc7-a476-ae368add91b4', N'e520097e-6d74-4955-b164-88d4812c7dfb', N'4ddefdc1-1bf3-4656-a151-3d5f2186d4ec', N'Nguyễn Văn Nam', N'0398685351', N'ddd{,} Quận Hoàn Kiếm{,} Thành phố Hà Nội', 310500.0000, 0, 1, N'a', 10, NULL, NULL, 50000.0000, 60500.0000)
INSERT [dbo].[hoa_don] ([id_hoa_don], [ma_hoa_don], [ngay_tao], [ngay_cap_nhat], [nhan_vien_id], [khach_hang_id], [khuyen_mai_id], [ten_nguoi_nhan], [sdt], [dia_chi], [tong_tien], [phuong_thuc_thanh_toan], [loai], [ghi_chu], [trang_thai], [tien_mat], [chuyen_khoan], [tien_giam], [tien_ship]) VALUES (N'c8519a00-26d7-4005-b451-129818b1d08f', N'HÐ00878', CAST(N'2024-05-20T21:51:43.157' AS DateTime), CAST(N'2024-05-20T22:00:25.760' AS DateTime), N'ed1fc377-5b9b-4cc7-a476-ae368add91b4', N'cdb35b5e-20e3-4e59-8645-525677f8d079', NULL, N'', N'', NULL, 250000.0000, 0, 0, N'N/A', 10, 250000.0000, 0.0000, 0.0000, NULL)
INSERT [dbo].[hoa_don] ([id_hoa_don], [ma_hoa_don], [ngay_tao], [ngay_cap_nhat], [nhan_vien_id], [khach_hang_id], [khuyen_mai_id], [ten_nguoi_nhan], [sdt], [dia_chi], [tong_tien], [phuong_thuc_thanh_toan], [loai], [ghi_chu], [trang_thai], [tien_mat], [chuyen_khoan], [tien_giam], [tien_ship]) VALUES (N'd6c82798-fad6-4f8f-b7c3-1b1d36320535', N'HÐ05960', CAST(N'2024-05-21T04:00:02.680' AS DateTime), CAST(N'2024-09-21T21:24:38.223' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 8, NULL, NULL, NULL, NULL)
INSERT [dbo].[hoa_don] ([id_hoa_don], [ma_hoa_don], [ngay_tao], [ngay_cap_nhat], [nhan_vien_id], [khach_hang_id], [khuyen_mai_id], [ten_nguoi_nhan], [sdt], [dia_chi], [tong_tien], [phuong_thuc_thanh_toan], [loai], [ghi_chu], [trang_thai], [tien_mat], [chuyen_khoan], [tien_giam], [tien_ship]) VALUES (N'9dd848d6-25b3-4f5e-a87c-226bfcb9548f', N'HÐ04314', CAST(N'2024-05-21T10:52:40.677' AS DateTime), CAST(N'2024-05-21T10:56:34.597' AS DateTime), N'ed1fc377-5b9b-4cc7-a476-ae368add91b4', N'96ed947c-cc12-46da-a381-3e92ac4d7ed6', NULL, N'', N'', NULL, 800000.0000, 0, 0, N'N/V', 10, 0.0000, 800000.0000, 0.0000, NULL)
INSERT [dbo].[hoa_don] ([id_hoa_don], [ma_hoa_don], [ngay_tao], [ngay_cap_nhat], [nhan_vien_id], [khach_hang_id], [khuyen_mai_id], [ten_nguoi_nhan], [sdt], [dia_chi], [tong_tien], [phuong_thuc_thanh_toan], [loai], [ghi_chu], [trang_thai], [tien_mat], [chuyen_khoan], [tien_giam], [tien_ship]) VALUES (N'5e862093-2b44-479e-aef0-2ab40af3b2f7', N'HÐ09356', CAST(N'2025-01-12T18:13:05.137' AS DateTime), CAST(N'2025-01-12T18:13:10.453' AS DateTime), NULL, N'22f7f3f9-b63f-4701-a273-c972a43e31a0', NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, 8, NULL, NULL, NULL, NULL)
INSERT [dbo].[hoa_don] ([id_hoa_don], [ma_hoa_don], [ngay_tao], [ngay_cap_nhat], [nhan_vien_id], [khach_hang_id], [khuyen_mai_id], [ten_nguoi_nhan], [sdt], [dia_chi], [tong_tien], [phuong_thuc_thanh_toan], [loai], [ghi_chu], [trang_thai], [tien_mat], [chuyen_khoan], [tien_giam], [tien_ship]) VALUES (N'a5e14891-0d2f-40f2-8057-30ecb725150d', N'HÐ00187', CAST(N'2025-01-03T10:40:30.907' AS DateTime), CAST(N'2025-01-10T12:40:49.697' AS DateTime), N'aca6647e-10d9-4a11-a374-a5724548b710', N'96ed947c-cc12-46da-a381-3e92ac4d7ed6', NULL, N'', N'', NULL, 400000.0000, 0, 0, N'hhhh', 10, 400000.0000, 0.0000, 0.0000, NULL)
INSERT [dbo].[hoa_don] ([id_hoa_don], [ma_hoa_don], [ngay_tao], [ngay_cap_nhat], [nhan_vien_id], [khach_hang_id], [khuyen_mai_id], [ten_nguoi_nhan], [sdt], [dia_chi], [tong_tien], [phuong_thuc_thanh_toan], [loai], [ghi_chu], [trang_thai], [tien_mat], [chuyen_khoan], [tien_giam], [tien_ship]) VALUES (N'ac7578ba-623e-4685-800c-3571eadcf4d7', N'HÐ06649', CAST(N'2024-09-21T20:02:41.950' AS DateTime), NULL, NULL, N'e520097e-6d74-4955-b164-88d4812c7dfb', NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, 9, NULL, NULL, NULL, NULL)
INSERT [dbo].[hoa_don] ([id_hoa_don], [ma_hoa_don], [ngay_tao], [ngay_cap_nhat], [nhan_vien_id], [khach_hang_id], [khuyen_mai_id], [ten_nguoi_nhan], [sdt], [dia_chi], [tong_tien], [phuong_thuc_thanh_toan], [loai], [ghi_chu], [trang_thai], [tien_mat], [chuyen_khoan], [tien_giam], [tien_ship]) VALUES (N'dfaec20e-9bc9-4c1b-8de5-358563535965', N'HÐ03403', CAST(N'2025-01-10T12:54:02.847' AS DateTime), CAST(N'2025-01-10T20:36:10.703' AS DateTime), N'9ce83142-dc15-4ea8-ad0c-315e69c1ccb1', N'96ed947c-cc12-46da-a381-3e92ac4d7ed6', NULL, N'Ha', N'0328843156', N'tt{,} Huyện Phú Lương{,} Tỉnh Thái Nguyên', 237500.0000, 0, 1, N'tt', 10, NULL, NULL, 0.0000, 37500.0000)
INSERT [dbo].[hoa_don] ([id_hoa_don], [ma_hoa_don], [ngay_tao], [ngay_cap_nhat], [nhan_vien_id], [khach_hang_id], [khuyen_mai_id], [ten_nguoi_nhan], [sdt], [dia_chi], [tong_tien], [phuong_thuc_thanh_toan], [loai], [ghi_chu], [trang_thai], [tien_mat], [chuyen_khoan], [tien_giam], [tien_ship]) VALUES (N'5ce95af2-0d4a-4eab-9ca4-3a43f506402a', N'HÐ04306', CAST(N'2024-10-04T22:16:58.360' AS DateTime), NULL, NULL, N'e520097e-6d74-4955-b164-88d4812c7dfb', NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, 9, NULL, NULL, NULL, NULL)
INSERT [dbo].[hoa_don] ([id_hoa_don], [ma_hoa_don], [ngay_tao], [ngay_cap_nhat], [nhan_vien_id], [khach_hang_id], [khuyen_mai_id], [ten_nguoi_nhan], [sdt], [dia_chi], [tong_tien], [phuong_thuc_thanh_toan], [loai], [ghi_chu], [trang_thai], [tien_mat], [chuyen_khoan], [tien_giam], [tien_ship]) VALUES (N'7a5be421-9e3e-442d-ba29-3cdea9937255', N'HÐ02075', CAST(N'2025-01-12T18:23:56.990' AS DateTime), CAST(N'2025-01-12T19:34:52.370' AS DateTime), N'9ce83142-dc15-4ea8-ad0c-315e69c1ccb1', N'22f7f3f9-b63f-4701-a273-c972a43e31a0', NULL, N'', N'', NULL, 820000.0000, 0, 0, N'ttt', 10, 820000.0000, 0.0000, 0.0000, NULL)
INSERT [dbo].[hoa_don] ([id_hoa_don], [ma_hoa_don], [ngay_tao], [ngay_cap_nhat], [nhan_vien_id], [khach_hang_id], [khuyen_mai_id], [ten_nguoi_nhan], [sdt], [dia_chi], [tong_tien], [phuong_thuc_thanh_toan], [loai], [ghi_chu], [trang_thai], [tien_mat], [chuyen_khoan], [tien_giam], [tien_ship]) VALUES (N'8fd734e9-c953-4724-b047-4b9b2b65de8f', N'HÐ03599', CAST(N'2024-05-21T01:02:20.427' AS DateTime), NULL, NULL, N'e520097e-6d74-4955-b164-88d4812c7dfb', N'4ddefdc1-1bf3-4656-a151-3d5f2186d4ec', N'Nguyễn Văn Nam', N'0398685351', N'số 20{,} Quận Ba Đình{,} Thành phố Hà Nội', 151500.0000, 0, 1, N'N/A', 0, NULL, NULL, 50000.0000, 51500.0000)
INSERT [dbo].[hoa_don] ([id_hoa_don], [ma_hoa_don], [ngay_tao], [ngay_cap_nhat], [nhan_vien_id], [khach_hang_id], [khuyen_mai_id], [ten_nguoi_nhan], [sdt], [dia_chi], [tong_tien], [phuong_thuc_thanh_toan], [loai], [ghi_chu], [trang_thai], [tien_mat], [chuyen_khoan], [tien_giam], [tien_ship]) VALUES (N'd605133b-5743-4424-8b48-4f2a11deea89', N'HÐ09638', CAST(N'2024-05-21T10:29:28.147' AS DateTime), NULL, NULL, N'e520097e-6d74-4955-b164-88d4812c7dfb', NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, 9, NULL, NULL, NULL, NULL)
INSERT [dbo].[hoa_don] ([id_hoa_don], [ma_hoa_don], [ngay_tao], [ngay_cap_nhat], [nhan_vien_id], [khach_hang_id], [khuyen_mai_id], [ten_nguoi_nhan], [sdt], [dia_chi], [tong_tien], [phuong_thuc_thanh_toan], [loai], [ghi_chu], [trang_thai], [tien_mat], [chuyen_khoan], [tien_giam], [tien_ship]) VALUES (N'7e1961ac-0cbf-4860-b015-4fe910caec70', N'HÐ03897', CAST(N'2025-01-12T20:20:50.863' AS DateTime), CAST(N'2025-01-12T20:21:03.363' AS DateTime), NULL, N'22f7f3f9-b63f-4701-a273-c972a43e31a0', NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, 8, NULL, NULL, NULL, NULL)
INSERT [dbo].[hoa_don] ([id_hoa_don], [ma_hoa_don], [ngay_tao], [ngay_cap_nhat], [nhan_vien_id], [khach_hang_id], [khuyen_mai_id], [ten_nguoi_nhan], [sdt], [dia_chi], [tong_tien], [phuong_thuc_thanh_toan], [loai], [ghi_chu], [trang_thai], [tien_mat], [chuyen_khoan], [tien_giam], [tien_ship]) VALUES (N'd40b5673-1bb3-48d9-b375-53b355742bfb', N'HÐ05826', CAST(N'2024-05-21T01:08:21.057' AS DateTime), NULL, NULL, N'e520097e-6d74-4955-b164-88d4812c7dfb', NULL, N'Nguyễn Văn Nam', N'0398685351', N'số 68{,} Quận Ba Đình{,} Thành phố Hà Nội', 201500.0000, 0, 1, N'a', 0, NULL, NULL, 0.0000, 51500.0000)
INSERT [dbo].[hoa_don] ([id_hoa_don], [ma_hoa_don], [ngay_tao], [ngay_cap_nhat], [nhan_vien_id], [khach_hang_id], [khuyen_mai_id], [ten_nguoi_nhan], [sdt], [dia_chi], [tong_tien], [phuong_thuc_thanh_toan], [loai], [ghi_chu], [trang_thai], [tien_mat], [chuyen_khoan], [tien_giam], [tien_ship]) VALUES (N'695b21df-981f-46e1-8d3b-60939cb896ad', N'HÐ02162', CAST(N'2024-12-20T22:27:36.630' AS DateTime), NULL, NULL, N'e520097e-6d74-4955-b164-88d4812c7dfb', NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, 9, NULL, NULL, NULL, NULL)
INSERT [dbo].[hoa_don] ([id_hoa_don], [ma_hoa_don], [ngay_tao], [ngay_cap_nhat], [nhan_vien_id], [khach_hang_id], [khuyen_mai_id], [ten_nguoi_nhan], [sdt], [dia_chi], [tong_tien], [phuong_thuc_thanh_toan], [loai], [ghi_chu], [trang_thai], [tien_mat], [chuyen_khoan], [tien_giam], [tien_ship]) VALUES (N'cb64ca68-a19a-4ea8-bced-63ed1e6c49c4', N'HÐ03165', CAST(N'2024-05-21T08:44:38.000' AS DateTime), NULL, NULL, N'e520097e-6d74-4955-b164-88d4812c7dfb', N'754462a8-432f-4d1c-bd33-3b3352f0b381', N'Nguyễn Văn Nam', N'0398685351', N'Ngõ 39{,} Quận Ba Đình{,} Thành phố Hà Nội', 321200.0000, 0, 1, N'N/a', 0, NULL, NULL, 80300.0000, 51500.0000)
INSERT [dbo].[hoa_don] ([id_hoa_don], [ma_hoa_don], [ngay_tao], [ngay_cap_nhat], [nhan_vien_id], [khach_hang_id], [khuyen_mai_id], [ten_nguoi_nhan], [sdt], [dia_chi], [tong_tien], [phuong_thuc_thanh_toan], [loai], [ghi_chu], [trang_thai], [tien_mat], [chuyen_khoan], [tien_giam], [tien_ship]) VALUES (N'27560c4f-2ce7-439b-a508-6dd3e3501923', N'HÐ09930', CAST(N'2024-05-21T00:10:26.047' AS DateTime), CAST(N'2024-05-21T00:26:43.793' AS DateTime), N'ed1fc377-5b9b-4cc7-a476-ae368add91b4', N'e520097e-6d74-4955-b164-88d4812c7dfb', N'4ddefdc1-1bf3-4656-a151-3d5f2186d4ec', N'Nguyễn Văn Nam', N'0398685351', N'aa{,} Quận Ba Đình{,} Thành phố Hà Nội', 901500.0000, 0, 1, N'mota', 5, NULL, NULL, 50000.0000, 51500.0000)
INSERT [dbo].[hoa_don] ([id_hoa_don], [ma_hoa_don], [ngay_tao], [ngay_cap_nhat], [nhan_vien_id], [khach_hang_id], [khuyen_mai_id], [ten_nguoi_nhan], [sdt], [dia_chi], [tong_tien], [phuong_thuc_thanh_toan], [loai], [ghi_chu], [trang_thai], [tien_mat], [chuyen_khoan], [tien_giam], [tien_ship]) VALUES (N'c52d8256-864d-426f-b36c-765e6cf01b26', N'HÐ01624', CAST(N'2024-05-20T18:24:21.793' AS DateTime), CAST(N'2024-05-20T21:35:44.880' AS DateTime), N'ed1fc377-5b9b-4cc7-a476-ae368add91b4', N'96ed947c-cc12-46da-a381-3e92ac4d7ed6', N'4ddefdc1-1bf3-4656-a151-3d5f2186d4ec', N'', N'', NULL, 150000.0000, 0, 0, N'N/A', 10, 150000.0000, 0.0000, 100000.0000, NULL)
INSERT [dbo].[hoa_don] ([id_hoa_don], [ma_hoa_don], [ngay_tao], [ngay_cap_nhat], [nhan_vien_id], [khach_hang_id], [khuyen_mai_id], [ten_nguoi_nhan], [sdt], [dia_chi], [tong_tien], [phuong_thuc_thanh_toan], [loai], [ghi_chu], [trang_thai], [tien_mat], [chuyen_khoan], [tien_giam], [tien_ship]) VALUES (N'35a8a874-02f4-475f-b469-7aa5cc8bfe15', N'HÐ01990', CAST(N'2025-01-03T15:54:42.040' AS DateTime), CAST(N'2025-01-03T22:14:07.283' AS DateTime), N'aca6647e-10d9-4a11-a374-a5724548b710', N'22f7f3f9-b63f-4701-a273-c972a43e31a0', NULL, N'test1', N'0123456789', N'abc{,} Huyện Định Hóa{,} Tỉnh Thái Nguyên', 237500.0000, 1, 1, N'no', 10, NULL, NULL, 0.0000, 37500.0000)
INSERT [dbo].[hoa_don] ([id_hoa_don], [ma_hoa_don], [ngay_tao], [ngay_cap_nhat], [nhan_vien_id], [khach_hang_id], [khuyen_mai_id], [ten_nguoi_nhan], [sdt], [dia_chi], [tong_tien], [phuong_thuc_thanh_toan], [loai], [ghi_chu], [trang_thai], [tien_mat], [chuyen_khoan], [tien_giam], [tien_ship]) VALUES (N'3a3f8616-e56b-4dbd-a04a-7b41a88f2c0d', N'HÐ09291', CAST(N'2025-01-12T09:27:28.710' AS DateTime), CAST(N'2025-01-12T18:08:02.777' AS DateTime), NULL, N'22f7f3f9-b63f-4701-a273-c972a43e31a0', NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, 8, NULL, NULL, NULL, NULL)
INSERT [dbo].[hoa_don] ([id_hoa_don], [ma_hoa_don], [ngay_tao], [ngay_cap_nhat], [nhan_vien_id], [khach_hang_id], [khuyen_mai_id], [ten_nguoi_nhan], [sdt], [dia_chi], [tong_tien], [phuong_thuc_thanh_toan], [loai], [ghi_chu], [trang_thai], [tien_mat], [chuyen_khoan], [tien_giam], [tien_ship]) VALUES (N'c42f0e41-cf7b-4585-97b4-815ff461b082', N'HÐ02163', CAST(N'2025-01-03T15:27:59.910' AS DateTime), CAST(N'2025-01-03T15:49:10.030' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, 8, NULL, NULL, NULL, NULL)
INSERT [dbo].[hoa_don] ([id_hoa_don], [ma_hoa_don], [ngay_tao], [ngay_cap_nhat], [nhan_vien_id], [khach_hang_id], [khuyen_mai_id], [ten_nguoi_nhan], [sdt], [dia_chi], [tong_tien], [phuong_thuc_thanh_toan], [loai], [ghi_chu], [trang_thai], [tien_mat], [chuyen_khoan], [tien_giam], [tien_ship]) VALUES (N'd5b11c00-282c-4222-b6fa-8c9a6f9b3df3', N'HÐ05395', CAST(N'2024-12-20T22:26:03.400' AS DateTime), NULL, NULL, N'e520097e-6d74-4955-b164-88d4812c7dfb', NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, 9, NULL, NULL, NULL, NULL)
INSERT [dbo].[hoa_don] ([id_hoa_don], [ma_hoa_don], [ngay_tao], [ngay_cap_nhat], [nhan_vien_id], [khach_hang_id], [khuyen_mai_id], [ten_nguoi_nhan], [sdt], [dia_chi], [tong_tien], [phuong_thuc_thanh_toan], [loai], [ghi_chu], [trang_thai], [tien_mat], [chuyen_khoan], [tien_giam], [tien_ship]) VALUES (N'134c636b-739b-4326-81d7-8e737b5bbee0', N'HÐ04886', CAST(N'2025-01-03T15:30:17.400' AS DateTime), CAST(N'2025-01-03T15:48:08.850' AS DateTime), NULL, N'22f7f3f9-b63f-4701-a273-c972a43e31a0', NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, 8, NULL, NULL, NULL, NULL)
INSERT [dbo].[hoa_don] ([id_hoa_don], [ma_hoa_don], [ngay_tao], [ngay_cap_nhat], [nhan_vien_id], [khach_hang_id], [khuyen_mai_id], [ten_nguoi_nhan], [sdt], [dia_chi], [tong_tien], [phuong_thuc_thanh_toan], [loai], [ghi_chu], [trang_thai], [tien_mat], [chuyen_khoan], [tien_giam], [tien_ship]) VALUES (N'782de47e-f3fe-4921-a434-93e442ac096f', N'HÐ01415', CAST(N'2024-05-21T11:05:23.827' AS DateTime), NULL, NULL, N'e520097e-6d74-4955-b164-88d4812c7dfb', NULL, N'Nguyễn Văn Nam', N'0398685351', N'HaNoi{,} Quận Ba Đình{,} Thành phố Hà Nội', 4.3515, 1, 1, N'e', 3, NULL, NULL, 0.0000, 51500.0000)
INSERT [dbo].[hoa_don] ([id_hoa_don], [ma_hoa_don], [ngay_tao], [ngay_cap_nhat], [nhan_vien_id], [khach_hang_id], [khuyen_mai_id], [ten_nguoi_nhan], [sdt], [dia_chi], [tong_tien], [phuong_thuc_thanh_toan], [loai], [ghi_chu], [trang_thai], [tien_mat], [chuyen_khoan], [tien_giam], [tien_ship]) VALUES (N'b8ca2b70-00ad-4c9f-811d-9457c4b1875d', N'HÐ02799', CAST(N'2024-10-04T22:17:40.390' AS DateTime), CAST(N'2024-10-04T22:21:16.727' AS DateTime), N'ed1fc377-5b9b-4cc7-a476-ae368add91b4', N'e520097e-6d74-4955-b164-88d4812c7dfb', NULL, N'Nguyễn Văn Nam', N'0398685351', N'ddd{,} Thành phố Thái Nguyên{,} Tỉnh Thái Nguyên', 1.9980, 0, 1, N'a', 5, NULL, NULL, 0.0000, 398000.0000)
INSERT [dbo].[hoa_don] ([id_hoa_don], [ma_hoa_don], [ngay_tao], [ngay_cap_nhat], [nhan_vien_id], [khach_hang_id], [khuyen_mai_id], [ten_nguoi_nhan], [sdt], [dia_chi], [tong_tien], [phuong_thuc_thanh_toan], [loai], [ghi_chu], [trang_thai], [tien_mat], [chuyen_khoan], [tien_giam], [tien_ship]) VALUES (N'1873b821-9ca9-4cb5-a98c-9fc488119a5e', N'HÐ04978', CAST(N'2025-01-03T15:48:30.653' AS DateTime), CAST(N'2025-01-03T15:49:39.847' AS DateTime), NULL, N'22f7f3f9-b63f-4701-a273-c972a43e31a0', NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, 8, NULL, NULL, NULL, NULL)
INSERT [dbo].[hoa_don] ([id_hoa_don], [ma_hoa_don], [ngay_tao], [ngay_cap_nhat], [nhan_vien_id], [khach_hang_id], [khuyen_mai_id], [ten_nguoi_nhan], [sdt], [dia_chi], [tong_tien], [phuong_thuc_thanh_toan], [loai], [ghi_chu], [trang_thai], [tien_mat], [chuyen_khoan], [tien_giam], [tien_ship]) VALUES (N'4ee466de-138c-4132-8527-a91a06ab30d8', N'HÐ00702', CAST(N'2024-05-21T11:14:03.063' AS DateTime), NULL, NULL, N'540e8a9c-053d-42c6-8b71-b8b137de1ab6', NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, 9, NULL, NULL, NULL, NULL)
INSERT [dbo].[hoa_don] ([id_hoa_don], [ma_hoa_don], [ngay_tao], [ngay_cap_nhat], [nhan_vien_id], [khach_hang_id], [khuyen_mai_id], [ten_nguoi_nhan], [sdt], [dia_chi], [tong_tien], [phuong_thuc_thanh_toan], [loai], [ghi_chu], [trang_thai], [tien_mat], [chuyen_khoan], [tien_giam], [tien_ship]) VALUES (N'd6b8a30b-d379-4d23-8ee4-afc4c1ad25ba', N'HÐ05033', CAST(N'2025-01-10T12:51:50.447' AS DateTime), NULL, NULL, N'96ed947c-cc12-46da-a381-3e92ac4d7ed6', NULL, N'Ha', N'0328843156', N'ttt{,} Huyện Tràng Định{,} Tỉnh Lạng Sơn', 237500.0000, 0, 1, N'ttt', 0, NULL, NULL, 0.0000, 37500.0000)
INSERT [dbo].[hoa_don] ([id_hoa_don], [ma_hoa_don], [ngay_tao], [ngay_cap_nhat], [nhan_vien_id], [khach_hang_id], [khuyen_mai_id], [ten_nguoi_nhan], [sdt], [dia_chi], [tong_tien], [phuong_thuc_thanh_toan], [loai], [ghi_chu], [trang_thai], [tien_mat], [chuyen_khoan], [tien_giam], [tien_ship]) VALUES (N'c041544c-3612-4e84-885a-b8b7bb979cce', N'HÐ00971', CAST(N'2024-09-21T21:19:31.027' AS DateTime), CAST(N'2024-09-21T21:20:52.570' AS DateTime), N'ed1fc377-5b9b-4cc7-a476-ae368add91b4', N'e520097e-6d74-4955-b164-88d4812c7dfb', NULL, N'Nguyễn Văn Nam', N'0398685351', N'aa{,} Thành phố Hòa Bình{,} Tỉnh Hoà Bình', 494500.0000, 0, 1, N'aaa', 1, NULL, NULL, 0.0000, 294500.0000)
INSERT [dbo].[hoa_don] ([id_hoa_don], [ma_hoa_don], [ngay_tao], [ngay_cap_nhat], [nhan_vien_id], [khach_hang_id], [khuyen_mai_id], [ten_nguoi_nhan], [sdt], [dia_chi], [tong_tien], [phuong_thuc_thanh_toan], [loai], [ghi_chu], [trang_thai], [tien_mat], [chuyen_khoan], [tien_giam], [tien_ship]) VALUES (N'55324623-1672-4280-8e1c-bc1067d51056', N'HÐ09700', CAST(N'2024-12-20T22:36:48.777' AS DateTime), CAST(N'2024-12-20T22:38:17.450' AS DateTime), N'ed1fc377-5b9b-4cc7-a476-ae368add91b4', N'96ed947c-cc12-46da-a381-3e92ac4d7ed6', N'708018cd-09c1-43b3-8c88-fa2bbf1716bc', N'', N'', NULL, 550000.0000, 0, 0, N'á', 10, 550000.0000, 0.0000, 100000.0000, NULL)
INSERT [dbo].[hoa_don] ([id_hoa_don], [ma_hoa_don], [ngay_tao], [ngay_cap_nhat], [nhan_vien_id], [khach_hang_id], [khuyen_mai_id], [ten_nguoi_nhan], [sdt], [dia_chi], [tong_tien], [phuong_thuc_thanh_toan], [loai], [ghi_chu], [trang_thai], [tien_mat], [chuyen_khoan], [tien_giam], [tien_ship]) VALUES (N'2199b5e9-2c6f-472b-87fa-cf0650bca182', N'HÐ05053', CAST(N'2025-01-10T12:47:35.553' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, 9, NULL, NULL, NULL, NULL)
INSERT [dbo].[hoa_don] ([id_hoa_don], [ma_hoa_don], [ngay_tao], [ngay_cap_nhat], [nhan_vien_id], [khach_hang_id], [khuyen_mai_id], [ten_nguoi_nhan], [sdt], [dia_chi], [tong_tien], [phuong_thuc_thanh_toan], [loai], [ghi_chu], [trang_thai], [tien_mat], [chuyen_khoan], [tien_giam], [tien_ship]) VALUES (N'f47a3911-f68f-4ee3-b45d-d21123869339', N'HÐ01797', CAST(N'2024-05-21T11:09:15.777' AS DateTime), NULL, NULL, N'e520097e-6d74-4955-b164-88d4812c7dfb', NULL, N'Nguyễn Văn Nam', N'0398685351', N'HaNoi{,} Quận Ba Đình{,} Thành phố Hà Nội', 1.2515, 0, 1, N'r', 0, NULL, NULL, 0.0000, 51500.0000)
INSERT [dbo].[hoa_don] ([id_hoa_don], [ma_hoa_don], [ngay_tao], [ngay_cap_nhat], [nhan_vien_id], [khach_hang_id], [khuyen_mai_id], [ten_nguoi_nhan], [sdt], [dia_chi], [tong_tien], [phuong_thuc_thanh_toan], [loai], [ghi_chu], [trang_thai], [tien_mat], [chuyen_khoan], [tien_giam], [tien_ship]) VALUES (N'10d1a163-5e19-46bd-b7e2-d8aff384078f', N'HÐ04627', CAST(N'2024-05-21T11:00:06.583' AS DateTime), NULL, NULL, N'e520097e-6d74-4955-b164-88d4812c7dfb', N'4ddefdc1-1bf3-4656-a151-3d5f2186d4ec', N'Nguyễn Văn Nam', N'0398685351', N'HaNoi{,} Quận Ba Đình{,} Thành phố Hà Nội', 851500.0000, 0, 1, N'chuyen hang', 0, NULL, NULL, 5000.0000, 51500.0000)
INSERT [dbo].[hoa_don] ([id_hoa_don], [ma_hoa_don], [ngay_tao], [ngay_cap_nhat], [nhan_vien_id], [khach_hang_id], [khuyen_mai_id], [ten_nguoi_nhan], [sdt], [dia_chi], [tong_tien], [phuong_thuc_thanh_toan], [loai], [ghi_chu], [trang_thai], [tien_mat], [chuyen_khoan], [tien_giam], [tien_ship]) VALUES (N'149797f4-f80d-4fb9-8ee9-da79e9831161', N'HÐ05811', CAST(N'2024-05-21T10:30:23.900' AS DateTime), NULL, NULL, N'e520097e-6d74-4955-b164-88d4812c7dfb', NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, 9, NULL, NULL, NULL, NULL)
INSERT [dbo].[hoa_don] ([id_hoa_don], [ma_hoa_don], [ngay_tao], [ngay_cap_nhat], [nhan_vien_id], [khach_hang_id], [khuyen_mai_id], [ten_nguoi_nhan], [sdt], [dia_chi], [tong_tien], [phuong_thuc_thanh_toan], [loai], [ghi_chu], [trang_thai], [tien_mat], [chuyen_khoan], [tien_giam], [tien_ship]) VALUES (N'5404a7d4-4892-4341-a819-db60f5abb0eb', N'HÐ03528', CAST(N'2025-01-10T23:25:20.753' AS DateTime), CAST(N'2025-01-12T18:08:11.360' AS DateTime), NULL, N'22f7f3f9-b63f-4701-a273-c972a43e31a0', NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, 8, NULL, NULL, NULL, NULL)
INSERT [dbo].[hoa_don] ([id_hoa_don], [ma_hoa_don], [ngay_tao], [ngay_cap_nhat], [nhan_vien_id], [khach_hang_id], [khuyen_mai_id], [ten_nguoi_nhan], [sdt], [dia_chi], [tong_tien], [phuong_thuc_thanh_toan], [loai], [ghi_chu], [trang_thai], [tien_mat], [chuyen_khoan], [tien_giam], [tien_ship]) VALUES (N'5e949ece-ac87-4fc1-aab3-dcad26de8254', N'HÐ03356', CAST(N'2025-01-03T15:33:57.090' AS DateTime), CAST(N'2025-01-03T15:48:20.400' AS DateTime), NULL, N'22f7f3f9-b63f-4701-a273-c972a43e31a0', NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, 8, NULL, NULL, NULL, NULL)
INSERT [dbo].[hoa_don] ([id_hoa_don], [ma_hoa_don], [ngay_tao], [ngay_cap_nhat], [nhan_vien_id], [khach_hang_id], [khuyen_mai_id], [ten_nguoi_nhan], [sdt], [dia_chi], [tong_tien], [phuong_thuc_thanh_toan], [loai], [ghi_chu], [trang_thai], [tien_mat], [chuyen_khoan], [tien_giam], [tien_ship]) VALUES (N'27c57f7f-9dbe-4315-a8d6-ddac67bc4ee3', N'HÐ06352', CAST(N'2025-01-03T15:49:52.543' AS DateTime), CAST(N'2025-01-03T22:34:58.547' AS DateTime), N'aca6647e-10d9-4a11-a374-a5724548b710', N'22f7f3f9-b63f-4701-a273-c972a43e31a0', NULL, N'test', N'0123456789', N'abc{,} Huyện Mỹ Xuyên{,} Tỉnh Sóc Trăng', 337000.0000, 0, 1, N'no', 10, NULL, NULL, 0.0000, 37000.0000)
INSERT [dbo].[hoa_don] ([id_hoa_don], [ma_hoa_don], [ngay_tao], [ngay_cap_nhat], [nhan_vien_id], [khach_hang_id], [khuyen_mai_id], [ten_nguoi_nhan], [sdt], [dia_chi], [tong_tien], [phuong_thuc_thanh_toan], [loai], [ghi_chu], [trang_thai], [tien_mat], [chuyen_khoan], [tien_giam], [tien_ship]) VALUES (N'8c32685a-0839-4a8b-80fa-e1346cacffcb', N'HÐ00339', CAST(N'2024-12-20T22:17:34.230' AS DateTime), CAST(N'2024-12-20T22:19:51.067' AS DateTime), N'ed1fc377-5b9b-4cc7-a476-ae368add91b4', N'e520097e-6d74-4955-b164-88d4812c7dfb', NULL, N'Nguyễn Văn Nam', N'0398685351', N'a{,} Quận Ba Đình{,} Thành phố Hà Nội', 451500.0000, 0, 1, N'ư', 6, NULL, NULL, 0.0000, 51500.0000)
INSERT [dbo].[hoa_don] ([id_hoa_don], [ma_hoa_don], [ngay_tao], [ngay_cap_nhat], [nhan_vien_id], [khach_hang_id], [khuyen_mai_id], [ten_nguoi_nhan], [sdt], [dia_chi], [tong_tien], [phuong_thuc_thanh_toan], [loai], [ghi_chu], [trang_thai], [tien_mat], [chuyen_khoan], [tien_giam], [tien_ship]) VALUES (N'0f0734b5-259a-4a9a-86d7-e2cac21ee3d7', N'HÐ02362', CAST(N'2025-01-03T22:35:55.313' AS DateTime), CAST(N'2025-01-03T22:36:44.880' AS DateTime), NULL, N'22f7f3f9-b63f-4701-a273-c972a43e31a0', NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, 8, NULL, NULL, NULL, NULL)
INSERT [dbo].[hoa_don] ([id_hoa_don], [ma_hoa_don], [ngay_tao], [ngay_cap_nhat], [nhan_vien_id], [khach_hang_id], [khuyen_mai_id], [ten_nguoi_nhan], [sdt], [dia_chi], [tong_tien], [phuong_thuc_thanh_toan], [loai], [ghi_chu], [trang_thai], [tien_mat], [chuyen_khoan], [tien_giam], [tien_ship]) VALUES (N'33f5c968-328e-4698-b6f6-e61f9b347fb2', N'HÐ05237', CAST(N'2024-05-21T09:42:13.887' AS DateTime), CAST(N'2024-05-21T09:47:19.797' AS DateTime), N'ed1fc377-5b9b-4cc7-a476-ae368add91b4', N'e520097e-6d74-4955-b164-88d4812c7dfb', NULL, N'Nguyễn Văn Nam', N'0398685351', N'số 30{,} Quận Hoàn Kiếm{,} Thành phố Hà Nội', 400000.0000, 0, 1, N'N/A', 1, NULL, NULL, 0.0000, 0.0000)
INSERT [dbo].[hoa_don] ([id_hoa_don], [ma_hoa_don], [ngay_tao], [ngay_cap_nhat], [nhan_vien_id], [khach_hang_id], [khuyen_mai_id], [ten_nguoi_nhan], [sdt], [dia_chi], [tong_tien], [phuong_thuc_thanh_toan], [loai], [ghi_chu], [trang_thai], [tien_mat], [chuyen_khoan], [tien_giam], [tien_ship]) VALUES (N'ab8fc2c7-5ef5-40f4-a864-edd985bd92ef', N'HÐ03624', CAST(N'2025-01-12T18:08:16.977' AS DateTime), CAST(N'2025-01-12T18:11:49.307' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, 8, NULL, NULL, NULL, NULL)
INSERT [dbo].[hoa_don] ([id_hoa_don], [ma_hoa_don], [ngay_tao], [ngay_cap_nhat], [nhan_vien_id], [khach_hang_id], [khuyen_mai_id], [ten_nguoi_nhan], [sdt], [dia_chi], [tong_tien], [phuong_thuc_thanh_toan], [loai], [ghi_chu], [trang_thai], [tien_mat], [chuyen_khoan], [tien_giam], [tien_ship]) VALUES (N'e0f55e60-490b-4ab1-9d48-f8943c0bfbd9', N'HÐ09960', CAST(N'2024-05-21T00:37:22.503' AS DateTime), CAST(N'2024-05-21T02:16:51.170' AS DateTime), N'ed1fc377-5b9b-4cc7-a476-ae368add91b4', N'e520097e-6d74-4955-b164-88d4812c7dfb', N'4ddefdc1-1bf3-4656-a151-3d5f2186d4ec', N'Nguyễn Văn Nam', N'0398685351', N'số 88{,} Quận Ba Đình{,} Thành phố Hà Nội', 351500.0000, 0, 1, N'n/a', 6, NULL, NULL, 50000.0000, 51500.0000)
GO
INSERT [dbo].[hoa_don_chi_tiet] ([id_hoa_don_chi_tiet], [hoa_don_id], [chi_tiet_san_pham_id], [so_luong], [don_gia], [trang_thai]) VALUES (N'79f51666-ff75-4883-a066-06fb5a8b1944', N'd40b5673-1bb3-48d9-b375-53b355742bfb', N'ff544f7e-82a6-41b8-bb58-8b8f316f45d9', 1, CAST(150000.00 AS Decimal(10, 2)), 0)
INSERT [dbo].[hoa_don_chi_tiet] ([id_hoa_don_chi_tiet], [hoa_don_id], [chi_tiet_san_pham_id], [so_luong], [don_gia], [trang_thai]) VALUES (N'f30ebd8b-1bc2-4a00-b294-074ee89c5114', N'c041544c-3612-4e84-885a-b8b7bb979cce', N'90aa9dad-311a-4c06-aa1e-546bd45171da', 1, CAST(200000.00 AS Decimal(10, 2)), 0)
INSERT [dbo].[hoa_don_chi_tiet] ([id_hoa_don_chi_tiet], [hoa_don_id], [chi_tiet_san_pham_id], [so_luong], [don_gia], [trang_thai]) VALUES (N'9ea6ae21-9aa9-4cdf-ab17-08c51d573198', N'0f0734b5-259a-4a9a-86d7-e2cac21ee3d7', N'8b7ae793-c4d3-4c75-b972-02edc652d45c', 1, CAST(400000.00 AS Decimal(10, 2)), 0)
INSERT [dbo].[hoa_don_chi_tiet] ([id_hoa_don_chi_tiet], [hoa_don_id], [chi_tiet_san_pham_id], [so_luong], [don_gia], [trang_thai]) VALUES (N'ae8f0241-23c0-47e9-b508-0b6c4a0bf3df', N'2bea9fac-ab1d-491f-9ae5-0c2a055c9b9d', N'cf571483-6f87-45bf-ba28-1e4c5c6263c2', 2, CAST(200000.00 AS Decimal(10, 2)), 0)
INSERT [dbo].[hoa_don_chi_tiet] ([id_hoa_don_chi_tiet], [hoa_don_id], [chi_tiet_san_pham_id], [so_luong], [don_gia], [trang_thai]) VALUES (N'8496d06b-b68d-4139-ae76-126b6c887eeb', N'9dd848d6-25b3-4f5e-a87c-226bfcb9548f', N'8b7ae793-c4d3-4c75-b972-02edc652d45c', 1, CAST(400000.00 AS Decimal(10, 2)), 0)
INSERT [dbo].[hoa_don_chi_tiet] ([id_hoa_don_chi_tiet], [hoa_don_id], [chi_tiet_san_pham_id], [so_luong], [don_gia], [trang_thai]) VALUES (N'6d7aac18-af76-4025-b211-14118914030a', N'782de47e-f3fe-4921-a434-93e442ac096f', N'8b7ae793-c4d3-4c75-b972-02edc652d45c', 1, CAST(400000.00 AS Decimal(10, 2)), 0)
INSERT [dbo].[hoa_don_chi_tiet] ([id_hoa_don_chi_tiet], [hoa_don_id], [chi_tiet_san_pham_id], [so_luong], [don_gia], [trang_thai]) VALUES (N'5f6e90cd-1700-4876-8652-1492d08941dc', N'b8ca2b70-00ad-4c9f-811d-9457c4b1875d', N'38cbe0fb-ae45-410d-9052-16281b6eba26', 2, CAST(400000.00 AS Decimal(10, 2)), 0)
INSERT [dbo].[hoa_don_chi_tiet] ([id_hoa_don_chi_tiet], [hoa_don_id], [chi_tiet_san_pham_id], [so_luong], [don_gia], [trang_thai]) VALUES (N'0c53f907-e77a-4e4d-a983-1a9ac76097d4', N'c52d8256-864d-426f-b36c-765e6cf01b26', N'4cc07fba-6140-48c7-9e5b-032a7c290242', 1, CAST(250000.00 AS Decimal(10, 2)), 0)
INSERT [dbo].[hoa_don_chi_tiet] ([id_hoa_don_chi_tiet], [hoa_don_id], [chi_tiet_san_pham_id], [so_luong], [don_gia], [trang_thai]) VALUES (N'a1fac5cd-4a30-4c9c-a38c-1c3cdd6079a8', N'f47a3911-f68f-4ee3-b45d-d21123869339', N'8b7ae793-c4d3-4c75-b972-02edc652d45c', 3, CAST(400000.00 AS Decimal(10, 2)), 0)
INSERT [dbo].[hoa_don_chi_tiet] ([id_hoa_don_chi_tiet], [hoa_don_id], [chi_tiet_san_pham_id], [so_luong], [don_gia], [trang_thai]) VALUES (N'6fbc54eb-9c90-43be-a44b-1db9a5523cbc', N'7e1961ac-0cbf-4860-b015-4fe910caec70', N'90aa9dad-311a-4c06-aa1e-546bd45171da', 1, CAST(200000.00 AS Decimal(10, 2)), 0)
INSERT [dbo].[hoa_don_chi_tiet] ([id_hoa_don_chi_tiet], [hoa_don_id], [chi_tiet_san_pham_id], [so_luong], [don_gia], [trang_thai]) VALUES (N'6d8869ac-c5e9-4342-905c-1fbc35022e4e', N'782de47e-f3fe-4921-a434-93e442ac096f', N'ff544f7e-82a6-41b8-bb58-8b8f316f45d9', 1, CAST(300000.00 AS Decimal(10, 2)), 0)
INSERT [dbo].[hoa_don_chi_tiet] ([id_hoa_don_chi_tiet], [hoa_don_id], [chi_tiet_san_pham_id], [so_luong], [don_gia], [trang_thai]) VALUES (N'2fc547e0-728d-4fb4-9657-272210e3c05b', N'149797f4-f80d-4fb9-8ee9-da79e9831161', N'2fd556f3-ff8d-40e5-893b-906a293526bb', 1, CAST(150000.00 AS Decimal(10, 2)), 0)
INSERT [dbo].[hoa_don_chi_tiet] ([id_hoa_don_chi_tiet], [hoa_don_id], [chi_tiet_san_pham_id], [so_luong], [don_gia], [trang_thai]) VALUES (N'e833d1dc-3f09-41ca-9b9b-2cc7dfb283fc', N'55324623-1672-4280-8e1c-bc1067d51056', N'4cc07fba-6140-48c7-9e5b-032a7c290242', 1, CAST(250000.00 AS Decimal(10, 2)), 0)
INSERT [dbo].[hoa_don_chi_tiet] ([id_hoa_don_chi_tiet], [hoa_don_id], [chi_tiet_san_pham_id], [so_luong], [don_gia], [trang_thai]) VALUES (N'66884051-1901-4edb-906f-2f826022d516', N'ac7578ba-623e-4685-800c-3571eadcf4d7', N'1c2e6b17-14e8-4b03-8927-f9492be64461', 92, CAST(150000.00 AS Decimal(10, 2)), 0)
INSERT [dbo].[hoa_don_chi_tiet] ([id_hoa_don_chi_tiet], [hoa_don_id], [chi_tiet_san_pham_id], [so_luong], [don_gia], [trang_thai]) VALUES (N'282d3a84-00a8-4847-89d5-334d25805df2', N'dfaec20e-9bc9-4c1b-8de5-358563535965', N'90aa9dad-311a-4c06-aa1e-546bd45171da', 1, CAST(200000.00 AS Decimal(10, 2)), 0)
INSERT [dbo].[hoa_don_chi_tiet] ([id_hoa_don_chi_tiet], [hoa_don_id], [chi_tiet_san_pham_id], [so_luong], [don_gia], [trang_thai]) VALUES (N'4e38edd3-17c3-4e73-9415-35e8fa9f5244', N'27c57f7f-9dbe-4315-a8d6-ddac67bc4ee3', N'ff544f7e-82a6-41b8-bb58-8b8f316f45d9', 1, CAST(300000.00 AS Decimal(10, 2)), 0)
INSERT [dbo].[hoa_don_chi_tiet] ([id_hoa_don_chi_tiet], [hoa_don_id], [chi_tiet_san_pham_id], [so_luong], [don_gia], [trang_thai]) VALUES (N'b2776bf9-886e-4e5f-a51e-557e611f102f', N'55324623-1672-4280-8e1c-bc1067d51056', N'8b7ae793-c4d3-4c75-b972-02edc652d45c', 1, CAST(400000.00 AS Decimal(10, 2)), 0)
INSERT [dbo].[hoa_don_chi_tiet] ([id_hoa_don_chi_tiet], [hoa_don_id], [chi_tiet_san_pham_id], [so_luong], [don_gia], [trang_thai]) VALUES (N'e5485612-0388-41fa-bcb9-56825117a807', N'10d1a163-5e19-46bd-b7e2-d8aff384078f', N'8b7ae793-c4d3-4c75-b972-02edc652d45c', 1, CAST(400000.00 AS Decimal(10, 2)), 0)
INSERT [dbo].[hoa_don_chi_tiet] ([id_hoa_don_chi_tiet], [hoa_don_id], [chi_tiet_san_pham_id], [so_luong], [don_gia], [trang_thai]) VALUES (N'3ad5788d-a76e-44d9-8e74-5e5c2a99388f', N'ac7578ba-623e-4685-800c-3571eadcf4d7', N'ff544f7e-82a6-41b8-bb58-8b8f316f45d9', 4, CAST(300000.00 AS Decimal(10, 2)), 0)
INSERT [dbo].[hoa_don_chi_tiet] ([id_hoa_don_chi_tiet], [hoa_don_id], [chi_tiet_san_pham_id], [so_luong], [don_gia], [trang_thai]) VALUES (N'895f8ebc-d26d-4793-8eb2-5f091ec0c860', N'8c32685a-0839-4a8b-80fa-e1346cacffcb', N'8b7ae793-c4d3-4c75-b972-02edc652d45c', 1, CAST(400000.00 AS Decimal(10, 2)), 0)
INSERT [dbo].[hoa_don_chi_tiet] ([id_hoa_don_chi_tiet], [hoa_don_id], [chi_tiet_san_pham_id], [so_luong], [don_gia], [trang_thai]) VALUES (N'71a8df81-319e-4799-bdcf-64a5c411d256', N'd605133b-5743-4424-8b48-4f2a11deea89', N'8b7ae793-c4d3-4c75-b972-02edc652d45c', 1, CAST(500000.00 AS Decimal(10, 2)), 0)
INSERT [dbo].[hoa_don_chi_tiet] ([id_hoa_don_chi_tiet], [hoa_don_id], [chi_tiet_san_pham_id], [so_luong], [don_gia], [trang_thai]) VALUES (N'b2621526-98e3-42f6-913d-689399af6a09', N'5e862093-2b44-479e-aef0-2ab40af3b2f7', N'90aa9dad-311a-4c06-aa1e-546bd45171da', 1, CAST(200000.00 AS Decimal(10, 2)), 0)
INSERT [dbo].[hoa_don_chi_tiet] ([id_hoa_don_chi_tiet], [hoa_don_id], [chi_tiet_san_pham_id], [so_luong], [don_gia], [trang_thai]) VALUES (N'a1eb52ee-b709-44b7-bbc7-75a526c1333e', N'3a3f8616-e56b-4dbd-a04a-7b41a88f2c0d', N'90aa9dad-311a-4c06-aa1e-546bd45171da', 1, CAST(200000.00 AS Decimal(10, 2)), 0)
INSERT [dbo].[hoa_don_chi_tiet] ([id_hoa_don_chi_tiet], [hoa_don_id], [chi_tiet_san_pham_id], [so_luong], [don_gia], [trang_thai]) VALUES (N'bf22dbbf-4db5-4cbb-af6b-78a29203849e', N'e0f55e60-490b-4ab1-9d48-f8943c0bfbd9', N'11d824a1-1b6d-440c-820b-5dab6453b088', 1, CAST(350000.00 AS Decimal(10, 2)), 0)
INSERT [dbo].[hoa_don_chi_tiet] ([id_hoa_don_chi_tiet], [hoa_don_id], [chi_tiet_san_pham_id], [so_luong], [don_gia], [trang_thai]) VALUES (N'fd16f2df-aa1f-4cc2-8483-7b08a761f365', N'5404a7d4-4892-4341-a819-db60f5abb0eb', N'cf571483-6f87-45bf-ba28-1e4c5c6263c2', 1, CAST(200000.00 AS Decimal(10, 2)), 0)
INSERT [dbo].[hoa_don_chi_tiet] ([id_hoa_don_chi_tiet], [hoa_don_id], [chi_tiet_san_pham_id], [so_luong], [don_gia], [trang_thai]) VALUES (N'4410f079-5758-4236-852c-81392ae78ab2', N'1873b821-9ca9-4cb5-a98c-9fc488119a5e', N'90aa9dad-311a-4c06-aa1e-546bd45171da', 1, CAST(200000.00 AS Decimal(10, 2)), 0)
INSERT [dbo].[hoa_don_chi_tiet] ([id_hoa_don_chi_tiet], [hoa_don_id], [chi_tiet_san_pham_id], [so_luong], [don_gia], [trang_thai]) VALUES (N'f4488648-2839-4e19-ac37-8aa78a0d70b7', N'c42f0e41-cf7b-4585-97b4-815ff461b082', N'ff544f7e-82a6-41b8-bb58-8b8f316f45d9', 1, CAST(300000.00 AS Decimal(10, 2)), 0)
INSERT [dbo].[hoa_don_chi_tiet] ([id_hoa_don_chi_tiet], [hoa_don_id], [chi_tiet_san_pham_id], [so_luong], [don_gia], [trang_thai]) VALUES (N'53758678-b090-42d1-973c-8d12e95b25de', N'27560c4f-2ce7-439b-a508-6dd3e3501923', N'ff544f7e-82a6-41b8-bb58-8b8f316f45d9', 6, CAST(150000.00 AS Decimal(10, 2)), 0)
INSERT [dbo].[hoa_don_chi_tiet] ([id_hoa_don_chi_tiet], [hoa_don_id], [chi_tiet_san_pham_id], [so_luong], [don_gia], [trang_thai]) VALUES (N'7af3fd6f-12b9-4d44-a009-91f6aad85897', N'cb64ca68-a19a-4ea8-bced-63ed1e6c49c4', N'11d824a1-1b6d-440c-820b-5dab6453b088', 1, CAST(350000.00 AS Decimal(10, 2)), 0)
INSERT [dbo].[hoa_don_chi_tiet] ([id_hoa_don_chi_tiet], [hoa_don_id], [chi_tiet_san_pham_id], [so_luong], [don_gia], [trang_thai]) VALUES (N'7ffadd5c-f942-42ab-be7a-945b017e1c64', N'd6b8a30b-d379-4d23-8ee4-afc4c1ad25ba', N'90aa9dad-311a-4c06-aa1e-546bd45171da', 1, CAST(200000.00 AS Decimal(10, 2)), 0)
INSERT [dbo].[hoa_don_chi_tiet] ([id_hoa_don_chi_tiet], [hoa_don_id], [chi_tiet_san_pham_id], [so_luong], [don_gia], [trang_thai]) VALUES (N'52d5ab3b-0cdd-4f0d-b5de-9b709bc87707', N'695b21df-981f-46e1-8d3b-60939cb896ad', N'90aa9dad-311a-4c06-aa1e-546bd45171da', 1, CAST(200000.00 AS Decimal(10, 2)), 0)
INSERT [dbo].[hoa_don_chi_tiet] ([id_hoa_don_chi_tiet], [hoa_don_id], [chi_tiet_san_pham_id], [so_luong], [don_gia], [trang_thai]) VALUES (N'3d364f19-ad7d-481f-8da7-a3621224b9b5', N'2199b5e9-2c6f-472b-87fa-cf0650bca182', N'90aa9dad-311a-4c06-aa1e-546bd45171da', 1, CAST(200000.00 AS Decimal(10, 2)), 0)
INSERT [dbo].[hoa_don_chi_tiet] ([id_hoa_don_chi_tiet], [hoa_don_id], [chi_tiet_san_pham_id], [so_luong], [don_gia], [trang_thai]) VALUES (N'ab1db502-38dd-4802-ac29-a7d0a5eeeeec', N'695b21df-981f-46e1-8d3b-60939cb896ad', N'ff544f7e-82a6-41b8-bb58-8b8f316f45d9', 1, CAST(300000.00 AS Decimal(10, 2)), 0)
INSERT [dbo].[hoa_don_chi_tiet] ([id_hoa_don_chi_tiet], [hoa_don_id], [chi_tiet_san_pham_id], [so_luong], [don_gia], [trang_thai]) VALUES (N'baacdf0d-9cb1-425c-ae34-a895fe40eb8c', N'ab8fc2c7-5ef5-40f4-a864-edd985bd92ef', N'ef89ad40-47e4-48cc-845b-159ddc14c81c', 1, CAST(300000.00 AS Decimal(10, 2)), 0)
INSERT [dbo].[hoa_don_chi_tiet] ([id_hoa_don_chi_tiet], [hoa_don_id], [chi_tiet_san_pham_id], [so_luong], [don_gia], [trang_thai]) VALUES (N'7729e610-3302-46d2-959d-ac9d0990d80b', N'8fd734e9-c953-4724-b047-4b9b2b65de8f', N'ff544f7e-82a6-41b8-bb58-8b8f316f45d9', 1, CAST(150000.00 AS Decimal(10, 2)), 0)
INSERT [dbo].[hoa_don_chi_tiet] ([id_hoa_don_chi_tiet], [hoa_don_id], [chi_tiet_san_pham_id], [so_luong], [don_gia], [trang_thai]) VALUES (N'543a0f42-cba5-491e-bc6d-ad5453b19e79', N'b8ca2b70-00ad-4c9f-811d-9457c4b1875d', N'dc5c759d-a169-4e9d-ac50-e43b9983b320', 2, CAST(400000.00 AS Decimal(10, 2)), 0)
INSERT [dbo].[hoa_don_chi_tiet] ([id_hoa_don_chi_tiet], [hoa_don_id], [chi_tiet_san_pham_id], [so_luong], [don_gia], [trang_thai]) VALUES (N'c708d60f-32d4-4d76-a4bd-af38f6ecfb94', N'd5b11c00-282c-4222-b6fa-8c9a6f9b3df3', N'90aa9dad-311a-4c06-aa1e-546bd45171da', 1, CAST(200000.00 AS Decimal(10, 2)), 0)
INSERT [dbo].[hoa_don_chi_tiet] ([id_hoa_don_chi_tiet], [hoa_don_id], [chi_tiet_san_pham_id], [so_luong], [don_gia], [trang_thai]) VALUES (N'406743b5-56bf-45d9-9ca4-bd16036fea9c', N'd6c82798-fad6-4f8f-b7c3-1b1d36320535', N'8b7ae793-c4d3-4c75-b972-02edc652d45c', 1, CAST(400000.00 AS Decimal(10, 2)), 0)
INSERT [dbo].[hoa_don_chi_tiet] ([id_hoa_don_chi_tiet], [hoa_don_id], [chi_tiet_san_pham_id], [so_luong], [don_gia], [trang_thai]) VALUES (N'c29f26da-da40-4c11-83c6-bd34bc12fd63', N'4ee466de-138c-4132-8527-a91a06ab30d8', N'ff544f7e-82a6-41b8-bb58-8b8f316f45d9', 91, CAST(300000.00 AS Decimal(10, 2)), 0)
INSERT [dbo].[hoa_don_chi_tiet] ([id_hoa_don_chi_tiet], [hoa_don_id], [chi_tiet_san_pham_id], [so_luong], [don_gia], [trang_thai]) VALUES (N'ff12fe96-c38a-4a10-9d15-be377e571005', N'ab8fc2c7-5ef5-40f4-a864-edd985bd92ef', N'90aa9dad-311a-4c06-aa1e-546bd45171da', 1, CAST(200000.00 AS Decimal(10, 2)), 0)
INSERT [dbo].[hoa_don_chi_tiet] ([id_hoa_don_chi_tiet], [hoa_don_id], [chi_tiet_san_pham_id], [so_luong], [don_gia], [trang_thai]) VALUES (N'd3c76b70-e6ed-4c15-8995-c4b386e02c78', N'd6c82798-fad6-4f8f-b7c3-1b1d36320535', N'e93e95f8-425f-4b2c-94ef-2c8e8e1dc83a', 1, CAST(500000.00 AS Decimal(10, 2)), 0)
INSERT [dbo].[hoa_don_chi_tiet] ([id_hoa_don_chi_tiet], [hoa_don_id], [chi_tiet_san_pham_id], [so_luong], [don_gia], [trang_thai]) VALUES (N'25aa6e7f-e360-4735-86c7-c704a2f3f6bd', N'e1f3a77f-9cd4-4c2e-bb5b-0d3f3d5b7280', N'ff544f7e-82a6-41b8-bb58-8b8f316f45d9', 4, CAST(300000.00 AS Decimal(10, 2)), 0)
INSERT [dbo].[hoa_don_chi_tiet] ([id_hoa_don_chi_tiet], [hoa_don_id], [chi_tiet_san_pham_id], [so_luong], [don_gia], [trang_thai]) VALUES (N'6b127f18-76fa-4747-98a5-c94909cb0c55', N'10d1a163-5e19-46bd-b7e2-d8aff384078f', N'dc5c759d-a169-4e9d-ac50-e43b9983b320', 1, CAST(400000.00 AS Decimal(10, 2)), 0)
INSERT [dbo].[hoa_don_chi_tiet] ([id_hoa_don_chi_tiet], [hoa_don_id], [chi_tiet_san_pham_id], [so_luong], [don_gia], [trang_thai]) VALUES (N'caa2c481-1326-4657-95db-cb83bc563b19', N'5e949ece-ac87-4fc1-aab3-dcad26de8254', N'cf571483-6f87-45bf-ba28-1e4c5c6263c2', 1, CAST(200000.00 AS Decimal(10, 2)), 0)
INSERT [dbo].[hoa_don_chi_tiet] ([id_hoa_don_chi_tiet], [hoa_don_id], [chi_tiet_san_pham_id], [so_luong], [don_gia], [trang_thai]) VALUES (N'c28820fd-60c3-41cf-bc06-d2123c537a84', N'35a8a874-02f4-475f-b469-7aa5cc8bfe15', N'90aa9dad-311a-4c06-aa1e-546bd45171da', 1, CAST(200000.00 AS Decimal(10, 2)), 0)
INSERT [dbo].[hoa_don_chi_tiet] ([id_hoa_don_chi_tiet], [hoa_don_id], [chi_tiet_san_pham_id], [so_luong], [don_gia], [trang_thai]) VALUES (N'9be55338-b0b3-46f2-ac55-da84514bccec', N'9dd848d6-25b3-4f5e-a87c-226bfcb9548f', N'90aa9dad-311a-4c06-aa1e-546bd45171da', 2, CAST(200000.00 AS Decimal(10, 2)), 0)
INSERT [dbo].[hoa_don_chi_tiet] ([id_hoa_don_chi_tiet], [hoa_don_id], [chi_tiet_san_pham_id], [so_luong], [don_gia], [trang_thai]) VALUES (N'91238fc9-c549-4f5d-a696-dbfde62a6fd4', N'5ce95af2-0d4a-4eab-9ca4-3a43f506402a', N'8b7ae793-c4d3-4c75-b972-02edc652d45c', 2, CAST(400000.00 AS Decimal(10, 2)), 0)
INSERT [dbo].[hoa_don_chi_tiet] ([id_hoa_don_chi_tiet], [hoa_don_id], [chi_tiet_san_pham_id], [so_luong], [don_gia], [trang_thai]) VALUES (N'9b28df39-685c-45b1-874e-de2079f2e1d2', N'134c636b-739b-4326-81d7-8e737b5bbee0', N'ff544f7e-82a6-41b8-bb58-8b8f316f45d9', 1, CAST(300000.00 AS Decimal(10, 2)), 0)
INSERT [dbo].[hoa_don_chi_tiet] ([id_hoa_don_chi_tiet], [hoa_don_id], [chi_tiet_san_pham_id], [so_luong], [don_gia], [trang_thai]) VALUES (N'019d7466-d376-42ab-b6a4-e5f307f85ac9', N'5d3bbbbc-30a3-494e-a1cd-10cb56be61f4', N'ef89ad40-47e4-48cc-845b-159ddc14c81c', 1, CAST(300000.00 AS Decimal(10, 2)), 0)
INSERT [dbo].[hoa_don_chi_tiet] ([id_hoa_don_chi_tiet], [hoa_don_id], [chi_tiet_san_pham_id], [so_luong], [don_gia], [trang_thai]) VALUES (N'1fe16d52-fe6d-4079-b0d1-e75ea41a29f5', N'c8519a00-26d7-4005-b451-129818b1d08f', N'4cc07fba-6140-48c7-9e5b-032a7c290242', 1, CAST(250000.00 AS Decimal(10, 2)), 0)
INSERT [dbo].[hoa_don_chi_tiet] ([id_hoa_don_chi_tiet], [hoa_don_id], [chi_tiet_san_pham_id], [so_luong], [don_gia], [trang_thai]) VALUES (N'e06db103-f9bc-460a-a4f1-eb61670eabe6', N'a5e14891-0d2f-40f2-8057-30ecb725150d', N'8b7ae793-c4d3-4c75-b972-02edc652d45c', 1, CAST(400000.00 AS Decimal(10, 2)), 0)
INSERT [dbo].[hoa_don_chi_tiet] ([id_hoa_don_chi_tiet], [hoa_don_id], [chi_tiet_san_pham_id], [so_luong], [don_gia], [trang_thai]) VALUES (N'abeb68d9-cb34-4901-8d2e-ecd861c0316a', N'7a5be421-9e3e-442d-ba29-3cdea9937255', N'8b7ae793-c4d3-4c75-b972-02edc652d45c', 2, CAST(410000.00 AS Decimal(10, 2)), 0)
INSERT [dbo].[hoa_don_chi_tiet] ([id_hoa_don_chi_tiet], [hoa_don_id], [chi_tiet_san_pham_id], [so_luong], [don_gia], [trang_thai]) VALUES (N'd978d5b4-2905-4564-8ff0-edabb9560141', N'5e862093-2b44-479e-aef0-2ab40af3b2f7', N'ef89ad40-47e4-48cc-845b-159ddc14c81c', 1, CAST(300000.00 AS Decimal(10, 2)), 0)
INSERT [dbo].[hoa_don_chi_tiet] ([id_hoa_don_chi_tiet], [hoa_don_id], [chi_tiet_san_pham_id], [so_luong], [don_gia], [trang_thai]) VALUES (N'f97dbb69-5bb8-46ae-a5a8-f5342fd835a5', N'33f5c968-328e-4698-b6f6-e61f9b347fb2', N'8b7ae793-c4d3-4c75-b972-02edc652d45c', 1, CAST(400000.00 AS Decimal(10, 2)), 0)
INSERT [dbo].[hoa_don_chi_tiet] ([id_hoa_don_chi_tiet], [hoa_don_id], [chi_tiet_san_pham_id], [so_luong], [don_gia], [trang_thai]) VALUES (N'c66aad8f-9795-4c48-81bc-fb78b09275b3', N'e1f3a77f-9cd4-4c2e-bb5b-0d3f3d5b7280', N'1c2e6b17-14e8-4b03-8927-f9492be64461', 92, CAST(150000.00 AS Decimal(10, 2)), 0)
GO
INSERT [dbo].[khach_hang] ([id_khach_hang], [ma], [ten_khach_hang], [email], [sdt], [ngay_sinh], [gioi_tinh], [ngay_tao], [ngay_cap_nhat], [trang_thai], [tai_khoan], [mat_khau], [reset_code]) VALUES (N'96ed947c-cc12-46da-a381-3e92ac4d7ed6', N'KH004', N'Ha', N'thongbt8@gmail.com', N'0328843156', CAST(N'2024-05-17' AS Date), 1, NULL, CAST(N'2025-01-10' AS Date), N'0', N'KH004', N'123', NULL)
INSERT [dbo].[khach_hang] ([id_khach_hang], [ma], [ten_khach_hang], [email], [sdt], [ngay_sinh], [gioi_tinh], [ngay_tao], [ngay_cap_nhat], [trang_thai], [tai_khoan], [mat_khau], [reset_code]) VALUES (N'cdb35b5e-20e3-4e59-8645-525677f8d079', N'KH003', N'Duy', N'thongbt8@gmail.com', N'0328843156', CAST(N'2024-05-11' AS Date), 1, NULL, NULL, N'0', N'KH003', N'123', NULL)
INSERT [dbo].[khach_hang] ([id_khach_hang], [ma], [ten_khach_hang], [email], [sdt], [ngay_sinh], [gioi_tinh], [ngay_tao], [ngay_cap_nhat], [trang_thai], [tai_khoan], [mat_khau], [reset_code]) VALUES (N'e520097e-6d74-4955-b164-88d4812c7dfb', N'KH002', N'Nguyễn Văn Nam', N'thongbhph22883@fpt.edu.vn', N'0398685351', CAST(N'2024-04-24' AS Date), NULL, NULL, NULL, N'1', N'namnt', N'123', NULL)
INSERT [dbo].[khach_hang] ([id_khach_hang], [ma], [ten_khach_hang], [email], [sdt], [ngay_sinh], [gioi_tinh], [ngay_tao], [ngay_cap_nhat], [trang_thai], [tai_khoan], [mat_khau], [reset_code]) VALUES (N'9e99c59f-bc86-4b2c-a51d-92a8e1976f2a', N'KH005', N'Duy', N'tisanmic1108@mipbx.vn', N'0328843156', CAST(N'2024-05-11' AS Date), 1, NULL, NULL, N'0', N'KH005', N'123', NULL)
INSERT [dbo].[khach_hang] ([id_khach_hang], [ma], [ten_khach_hang], [email], [sdt], [ngay_sinh], [gioi_tinh], [ngay_tao], [ngay_cap_nhat], [trang_thai], [tai_khoan], [mat_khau], [reset_code]) VALUES (N'540e8a9c-053d-42c6-8b71-b8b137de1ab6', N'KH006', N'leanhdung', N'dung@gmail.com', N'0867550591', NULL, NULL, NULL, NULL, N'1', N'dung01', N'123', NULL)
INSERT [dbo].[khach_hang] ([id_khach_hang], [ma], [ten_khach_hang], [email], [sdt], [ngay_sinh], [gioi_tinh], [ngay_tao], [ngay_cap_nhat], [trang_thai], [tai_khoan], [mat_khau], [reset_code]) VALUES (N'987d3758-0413-4181-88c9-bbf5c9b505d2', N'KH001', N'Khiêm', N'iamanhne29@gmail.com', N'0328843156', CAST(N'2024-05-01' AS Date), 1, NULL, NULL, N'0', N'KH001', N'123', NULL)
INSERT [dbo].[khach_hang] ([id_khach_hang], [ma], [ten_khach_hang], [email], [sdt], [ngay_sinh], [gioi_tinh], [ngay_tao], [ngay_cap_nhat], [trang_thai], [tai_khoan], [mat_khau], [reset_code]) VALUES (N'22f7f3f9-b63f-4701-a273-c972a43e31a0', N'KH007', N'test', N'vuhai8617@gmail.com', N'0123456789', NULL, NULL, NULL, NULL, N'0', N'test01', N'123', NULL)
GO
INSERT [dbo].[khuyen_mai] ([id_khuyen_mai], [ma], [ten_khuyen_mai], [gia_tri_giam], [loai_khuyen_mai], [ngay_tao], [ngay_cap_nhat], [mo_ta], [trang_thai], [ngay_bat_dau], [ngay_ket_thuc], [dieu_kien_gia]) VALUES (N'754462a8-432f-4d1c-bd33-3b3352f0b381', N'KM002', N'Sale of 20%', CAST(20.00 AS Decimal(10, 2)), 1, CAST(N'2024-05-19' AS Date), CAST(N'2024-05-21' AS Date), N'OK', 1, 1715498340000, 1717139940000, CAST(400000 AS Decimal(38, 0)))
INSERT [dbo].[khuyen_mai] ([id_khuyen_mai], [ma], [ten_khuyen_mai], [gia_tri_giam], [loai_khuyen_mai], [ngay_tao], [ngay_cap_nhat], [mo_ta], [trang_thai], [ngay_bat_dau], [ngay_ket_thuc], [dieu_kien_gia]) VALUES (N'4ddefdc1-1bf3-4656-a151-3d5f2186d4ec', N'KM001', N'Sale 25/5', CAST(5000.00 AS Decimal(10, 2)), 0, CAST(N'2024-05-18' AS Date), CAST(N'2024-05-21' AS Date), N'Tuyệt vời', 1, 1716092280000, 1717042680000, CAST(200000 AS Decimal(38, 0)))
INSERT [dbo].[khuyen_mai] ([id_khuyen_mai], [ma], [ten_khuyen_mai], [gia_tri_giam], [loai_khuyen_mai], [ngay_tao], [ngay_cap_nhat], [mo_ta], [trang_thai], [ngay_bat_dau], [ngay_ket_thuc], [dieu_kien_gia]) VALUES (N'708018cd-09c1-43b3-8c88-fa2bbf1716bc', N'KM003', N'thong', CAST(100000.00 AS Decimal(10, 2)), 0, CAST(N'2024-12-20' AS Date), NULL, N'aaa', 1, 1734622560000, 1734795360000, CAST(200000 AS Decimal(38, 0)))
GO
INSERT [dbo].[kich_thuoc] ([id_kich_thuoc], [ma], [ten_kich_thuoc], [ngay_tao], [ngay_cap_nhat], [mo_ta], [trang_thai]) VALUES (N'c2426580-e5a6-4034-a7e4-1beb5e0aa561', N'KT3', N'32', CAST(N'2024-05-18' AS Date), NULL, N'Đẹp', 0)
INSERT [dbo].[kich_thuoc] ([id_kich_thuoc], [ma], [ten_kich_thuoc], [ngay_tao], [ngay_cap_nhat], [mo_ta], [trang_thai]) VALUES (N'c9229c79-cd02-489a-ae4e-4c9889ad466c', N'KT6', N'35', CAST(N'2024-05-18' AS Date), NULL, N'Đẹp', 0)
INSERT [dbo].[kich_thuoc] ([id_kich_thuoc], [ma], [ten_kich_thuoc], [ngay_tao], [ngay_cap_nhat], [mo_ta], [trang_thai]) VALUES (N'32927375-d276-4e16-af02-663eb05a4935', N'KT5', N'34', CAST(N'2024-05-18' AS Date), NULL, N'Đẹp', 0)
INSERT [dbo].[kich_thuoc] ([id_kich_thuoc], [ma], [ten_kich_thuoc], [ngay_tao], [ngay_cap_nhat], [mo_ta], [trang_thai]) VALUES (N'43075d6d-ef7c-46da-aef2-9758ca3e1cf9', N'KT4', N'33', CAST(N'2024-05-18' AS Date), NULL, N'Đẹp', 0)
INSERT [dbo].[kich_thuoc] ([id_kich_thuoc], [ma], [ten_kich_thuoc], [ngay_tao], [ngay_cap_nhat], [mo_ta], [trang_thai]) VALUES (N'f3904392-1919-4b61-9125-ea0044820fcc', N'KT2', N'31', CAST(N'2024-05-18' AS Date), NULL, N'Đẹp', 0)
INSERT [dbo].[kich_thuoc] ([id_kich_thuoc], [ma], [ten_kich_thuoc], [ngay_tao], [ngay_cap_nhat], [mo_ta], [trang_thai]) VALUES (N'c68e70fa-22e5-4421-9c37-f72df800bfc3', N'KT1', N'30', CAST(N'2024-05-18' AS Date), NULL, N'Đẹp', 0)
GO
INSERT [dbo].[lich_su_trang_thai] ([id], [ngay_tao], [ngay_cap_nhat], [trang_thai], [hoa_don_id], [is_delete]) VALUES (N'1635ea0a-bb00-41a9-a280-0036928efcb9', CAST(N'2024-05-21T04:05:54.210' AS DateTime), NULL, 3, N'782de47e-f3fe-4921-a434-93e442ac096f', 1)
INSERT [dbo].[lich_su_trang_thai] ([id], [ngay_tao], [ngay_cap_nhat], [trang_thai], [hoa_don_id], [is_delete]) VALUES (N'90e9ec4a-be0b-430e-ae45-02942d5a2966', CAST(N'2025-01-12T11:11:49.320' AS DateTime), NULL, 8, N'ab8fc2c7-5ef5-40f4-a864-edd985bd92ef', 1)
INSERT [dbo].[lich_su_trang_thai] ([id], [ngay_tao], [ngay_cap_nhat], [trang_thai], [hoa_don_id], [is_delete]) VALUES (N'55f3f1f4-0bcc-4589-a119-099e72628cf2', CAST(N'2025-01-12T13:20:50.880' AS DateTime), NULL, 9, N'7e1961ac-0cbf-4860-b015-4fe910caec70', 1)
INSERT [dbo].[lich_su_trang_thai] ([id], [ngay_tao], [ngay_cap_nhat], [trang_thai], [hoa_don_id], [is_delete]) VALUES (N'8d13b37a-6618-46f5-bea3-0ff152ea3880', CAST(N'2024-12-20T15:18:10.503' AS DateTime), NULL, 0, N'8c32685a-0839-4a8b-80fa-e1346cacffcb', 0)
INSERT [dbo].[lich_su_trang_thai] ([id], [ngay_tao], [ngay_cap_nhat], [trang_thai], [hoa_don_id], [is_delete]) VALUES (N'26d7ffd4-7f17-48f9-805d-1126d1aa0158', CAST(N'2024-09-21T14:20:31.980' AS DateTime), NULL, 0, N'c041544c-3612-4e84-885a-b8b7bb979cce', 1)
INSERT [dbo].[lich_su_trang_thai] ([id], [ngay_tao], [ngay_cap_nhat], [trang_thai], [hoa_don_id], [is_delete]) VALUES (N'0d6af3cb-b728-44f6-a40a-126efc095c09', CAST(N'2024-05-21T04:05:23.833' AS DateTime), NULL, 9, N'782de47e-f3fe-4921-a434-93e442ac096f', 1)
INSERT [dbo].[lich_su_trang_thai] ([id], [ngay_tao], [ngay_cap_nhat], [trang_thai], [hoa_don_id], [is_delete]) VALUES (N'51760984-9ea5-49ef-8eba-15279d3e74fd', CAST(N'2025-01-10T05:52:22.783' AS DateTime), NULL, 0, N'd6b8a30b-d379-4d23-8ee4-afc4c1ad25ba', 1)
INSERT [dbo].[lich_su_trang_thai] ([id], [ngay_tao], [ngay_cap_nhat], [trang_thai], [hoa_don_id], [is_delete]) VALUES (N'080ad330-10ff-4b8c-bcd8-16ea0bf74320', CAST(N'2025-01-03T15:14:07.297' AS DateTime), NULL, 10, N'35a8a874-02f4-475f-b469-7aa5cc8bfe15', 1)
INSERT [dbo].[lich_su_trang_thai] ([id], [ngay_tao], [ngay_cap_nhat], [trang_thai], [hoa_don_id], [is_delete]) VALUES (N'1357538d-4de3-4446-a0e4-16f505cc1ad4', CAST(N'2025-01-10T05:51:50.450' AS DateTime), NULL, 9, N'd6b8a30b-d379-4d23-8ee4-afc4c1ad25ba', 1)
INSERT [dbo].[lich_su_trang_thai] ([id], [ngay_tao], [ngay_cap_nhat], [trang_thai], [hoa_don_id], [is_delete]) VALUES (N'aa3a9627-bd5a-478c-9d14-1b0fe42320b7', CAST(N'2024-05-21T04:09:30.740' AS DateTime), NULL, 0, N'f47a3911-f68f-4ee3-b45d-d21123869339', 1)
INSERT [dbo].[lich_su_trang_thai] ([id], [ngay_tao], [ngay_cap_nhat], [trang_thai], [hoa_don_id], [is_delete]) VALUES (N'6a157c18-ffe4-4142-bf92-1b6715abe403', CAST(N'2025-01-03T08:54:42.050' AS DateTime), NULL, 9, N'35a8a874-02f4-475f-b469-7aa5cc8bfe15', 1)
INSERT [dbo].[lich_su_trang_thai] ([id], [ngay_tao], [ngay_cap_nhat], [trang_thai], [hoa_don_id], [is_delete]) VALUES (N'd1a92e7c-f655-4892-a0b3-1c0d3653e213', CAST(N'2024-05-21T02:44:27.497' AS DateTime), NULL, 0, N'33f5c968-328e-4698-b6f6-e61f9b347fb2', 1)
INSERT [dbo].[lich_su_trang_thai] ([id], [ngay_tao], [ngay_cap_nhat], [trang_thai], [hoa_don_id], [is_delete]) VALUES (N'6ce51434-bb14-4efc-aeb7-24103f5dd570', CAST(N'2025-01-03T08:49:52.547' AS DateTime), NULL, 9, N'27c57f7f-9dbe-4315-a8d6-ddac67bc4ee3', 1)
INSERT [dbo].[lich_su_trang_thai] ([id], [ngay_tao], [ngay_cap_nhat], [trang_thai], [hoa_don_id], [is_delete]) VALUES (N'94b8a6f9-2046-439c-96c2-246ac2afadd9', CAST(N'2025-01-12T11:13:05.147' AS DateTime), NULL, 9, N'5e862093-2b44-479e-aef0-2ab40af3b2f7', 1)
INSERT [dbo].[lich_su_trang_thai] ([id], [ngay_tao], [ngay_cap_nhat], [trang_thai], [hoa_don_id], [is_delete]) VALUES (N'6c92c919-1ba2-4e87-830f-2499b37583d6', CAST(N'2024-05-21T04:01:09.357' AS DateTime), NULL, 3, N'10d1a163-5e19-46bd-b7e2-d8aff384078f', 1)
INSERT [dbo].[lich_su_trang_thai] ([id], [ngay_tao], [ngay_cap_nhat], [trang_thai], [hoa_don_id], [is_delete]) VALUES (N'675da527-a01e-45f3-85bf-2537323fe809', CAST(N'2025-01-03T15:36:44.883' AS DateTime), NULL, 8, N'0f0734b5-259a-4a9a-86d7-e2cac21ee3d7', 1)
INSERT [dbo].[lich_su_trang_thai] ([id], [ngay_tao], [ngay_cap_nhat], [trang_thai], [hoa_don_id], [is_delete]) VALUES (N'a0c35138-fd4c-45f5-b0a8-2bc08b935f72', CAST(N'2024-05-21T04:09:15.783' AS DateTime), NULL, 9, N'f47a3911-f68f-4ee3-b45d-d21123869339', 1)
INSERT [dbo].[lich_su_trang_thai] ([id], [ngay_tao], [ngay_cap_nhat], [trang_thai], [hoa_don_id], [is_delete]) VALUES (N'75a1a4ad-846f-4069-8ef0-2e39024829a4', CAST(N'2024-12-20T15:19:23.657' AS DateTime), NULL, 5, N'8c32685a-0839-4a8b-80fa-e1346cacffcb', 1)
INSERT [dbo].[lich_su_trang_thai] ([id], [ngay_tao], [ngay_cap_nhat], [trang_thai], [hoa_don_id], [is_delete]) VALUES (N'0b837137-29f1-4692-bda8-3048a9b2264a', CAST(N'2024-05-21T02:02:18.247' AS DateTime), NULL, 5, N'2bea9fac-ab1d-491f-9ae5-0c2a055c9b9d', 0)
INSERT [dbo].[lich_su_trang_thai] ([id], [ngay_tao], [ngay_cap_nhat], [trang_thai], [hoa_don_id], [is_delete]) VALUES (N'6a170004-f645-48b6-bdb5-353d7da14e5c', CAST(N'2025-01-10T13:35:35.133' AS DateTime), NULL, 5, N'dfaec20e-9bc9-4c1b-8de5-358563535965', 1)
INSERT [dbo].[lich_su_trang_thai] ([id], [ngay_tao], [ngay_cap_nhat], [trang_thai], [hoa_don_id], [is_delete]) VALUES (N'9a61bee2-9f9a-4e0d-ac0f-3b28434fd181', CAST(N'2024-10-04T15:21:16.730' AS DateTime), NULL, 5, N'b8ca2b70-00ad-4c9f-811d-9457c4b1875d', 1)
INSERT [dbo].[lich_su_trang_thai] ([id], [ngay_tao], [ngay_cap_nhat], [trang_thai], [hoa_don_id], [is_delete]) VALUES (N'72928bd1-6e23-48c6-abe3-3cc04ab5a3d5', CAST(N'2025-01-03T15:35:55.320' AS DateTime), NULL, 9, N'0f0734b5-259a-4a9a-86d7-e2cac21ee3d7', 0)
INSERT [dbo].[lich_su_trang_thai] ([id], [ngay_tao], [ngay_cap_nhat], [trang_thai], [hoa_don_id], [is_delete]) VALUES (N'4fe9487e-3bc8-4167-864a-3d096e26c004', CAST(N'2025-01-03T15:36:27.160' AS DateTime), NULL, 9, N'0f0734b5-259a-4a9a-86d7-e2cac21ee3d7', 1)
INSERT [dbo].[lich_su_trang_thai] ([id], [ngay_tao], [ngay_cap_nhat], [trang_thai], [hoa_don_id], [is_delete]) VALUES (N'56b3c5c2-7634-49c0-b61f-3e1e980d01cf', CAST(N'2024-09-21T14:19:31.087' AS DateTime), NULL, 9, N'c041544c-3612-4e84-885a-b8b7bb979cce', 1)
INSERT [dbo].[lich_su_trang_thai] ([id], [ngay_tao], [ngay_cap_nhat], [trang_thai], [hoa_don_id], [is_delete]) VALUES (N'b6693545-75bd-4343-acb5-47349642ac22', CAST(N'2024-05-21T02:42:13.920' AS DateTime), NULL, 9, N'33f5c968-328e-4698-b6f6-e61f9b347fb2', 1)
INSERT [dbo].[lich_su_trang_thai] ([id], [ngay_tao], [ngay_cap_nhat], [trang_thai], [hoa_don_id], [is_delete]) VALUES (N'81993c83-020f-4f18-a9f3-4d73116bc863', CAST(N'2025-01-03T09:16:27.960' AS DateTime), NULL, 3, N'35a8a874-02f4-475f-b469-7aa5cc8bfe15', 1)
INSERT [dbo].[lich_su_trang_thai] ([id], [ngay_tao], [ngay_cap_nhat], [trang_thai], [hoa_don_id], [is_delete]) VALUES (N'8a6c0f6b-9ae9-42cc-a3d0-55c117261e28', CAST(N'2025-01-12T11:08:02.803' AS DateTime), NULL, 8, N'3a3f8616-e56b-4dbd-a04a-7b41a88f2c0d', 1)
INSERT [dbo].[lich_su_trang_thai] ([id], [ngay_tao], [ngay_cap_nhat], [trang_thai], [hoa_don_id], [is_delete]) VALUES (N'0da7d12b-27c5-4fc1-a3de-59be6f4c1b4e', CAST(N'2025-01-03T08:48:30.657' AS DateTime), NULL, 9, N'1873b821-9ca9-4cb5-a98c-9fc488119a5e', 1)
INSERT [dbo].[lich_su_trang_thai] ([id], [ngay_tao], [ngay_cap_nhat], [trang_thai], [hoa_don_id], [is_delete]) VALUES (N'7bc13b90-ace2-4d3f-bca8-5f1c290f96f3', CAST(N'2024-12-20T15:27:36.650' AS DateTime), NULL, 9, N'695b21df-981f-46e1-8d3b-60939cb896ad', 1)
INSERT [dbo].[lich_su_trang_thai] ([id], [ngay_tao], [ngay_cap_nhat], [trang_thai], [hoa_don_id], [is_delete]) VALUES (N'ac09f5a1-101e-4f5b-b8bb-60c518eb5ad4', CAST(N'2025-01-10T13:35:43.017' AS DateTime), NULL, 6, N'dfaec20e-9bc9-4c1b-8de5-358563535965', 1)
INSERT [dbo].[lich_su_trang_thai] ([id], [ngay_tao], [ngay_cap_nhat], [trang_thai], [hoa_don_id], [is_delete]) VALUES (N'662f38dc-25d5-4db1-ac78-612345534ab7', CAST(N'2025-01-03T15:21:35.000' AS DateTime), NULL, 1, N'27c57f7f-9dbe-4315-a8d6-ddac67bc4ee3', 1)
INSERT [dbo].[lich_su_trang_thai] ([id], [ngay_tao], [ngay_cap_nhat], [trang_thai], [hoa_don_id], [is_delete]) VALUES (N'ed59e684-11c3-4ccf-9974-616b611a16ba', CAST(N'2025-01-03T15:36:11.727' AS DateTime), NULL, 8, N'0f0734b5-259a-4a9a-86d7-e2cac21ee3d7', 0)
INSERT [dbo].[lich_su_trang_thai] ([id], [ngay_tao], [ngay_cap_nhat], [trang_thai], [hoa_don_id], [is_delete]) VALUES (N'f6031761-a875-4ee1-8b33-66ba5eb21842', CAST(N'2024-05-21T04:16:37.333' AS DateTime), NULL, 0, N'e1f3a77f-9cd4-4c2e-bb5b-0d3f3d5b7280', 1)
INSERT [dbo].[lich_su_trang_thai] ([id], [ngay_tao], [ngay_cap_nhat], [trang_thai], [hoa_don_id], [is_delete]) VALUES (N'0fbc294f-e9b8-40ca-9b2b-6a6d65215c06', CAST(N'2024-05-21T02:02:22.473' AS DateTime), NULL, 1, N'2bea9fac-ab1d-491f-9ae5-0c2a055c9b9d', 0)
INSERT [dbo].[lich_su_trang_thai] ([id], [ngay_tao], [ngay_cap_nhat], [trang_thai], [hoa_don_id], [is_delete]) VALUES (N'b308d7b1-e113-41f7-ba5a-6aa880b8edc4', CAST(N'2024-10-04T15:17:40.420' AS DateTime), NULL, 9, N'b8ca2b70-00ad-4c9f-811d-9457c4b1875d', 1)
INSERT [dbo].[lich_su_trang_thai] ([id], [ngay_tao], [ngay_cap_nhat], [trang_thai], [hoa_don_id], [is_delete]) VALUES (N'b5deda36-3eb0-44ae-bf7c-6e3ba86ebe48', CAST(N'2025-01-10T05:47:35.560' AS DateTime), NULL, 9, N'2199b5e9-2c6f-472b-87fa-cf0650bca182', 1)
INSERT [dbo].[lich_su_trang_thai] ([id], [ngay_tao], [ngay_cap_nhat], [trang_thai], [hoa_don_id], [is_delete]) VALUES (N'02fd7c9d-6dad-4bdd-b52a-722dd74cdfee', CAST(N'2024-10-04T15:19:07.230' AS DateTime), NULL, 0, N'b8ca2b70-00ad-4c9f-811d-9457c4b1875d', 1)
INSERT [dbo].[lich_su_trang_thai] ([id], [ngay_tao], [ngay_cap_nhat], [trang_thai], [hoa_don_id], [is_delete]) VALUES (N'210ebe9d-a6b8-4ee8-b913-769a3d04ac62', CAST(N'2025-01-03T14:59:06.470' AS DateTime), NULL, 1, N'35a8a874-02f4-475f-b469-7aa5cc8bfe15', 1)
INSERT [dbo].[lich_su_trang_thai] ([id], [ngay_tao], [ngay_cap_nhat], [trang_thai], [hoa_don_id], [is_delete]) VALUES (N'35956a88-b696-4c1b-829b-7a890a5bb1d1', CAST(N'2024-12-20T15:19:18.333' AS DateTime), NULL, 1, N'8c32685a-0839-4a8b-80fa-e1346cacffcb', 1)
INSERT [dbo].[lich_su_trang_thai] ([id], [ngay_tao], [ngay_cap_nhat], [trang_thai], [hoa_don_id], [is_delete]) VALUES (N'053cafb0-d417-4aca-b317-824d45d8603b', CAST(N'2024-10-04T15:21:08.813' AS DateTime), NULL, 1, N'b8ca2b70-00ad-4c9f-811d-9457c4b1875d', 1)
INSERT [dbo].[lich_su_trang_thai] ([id], [ngay_tao], [ngay_cap_nhat], [trang_thai], [hoa_don_id], [is_delete]) VALUES (N'b6e19b65-7f9f-4060-96ef-85c832f9a43f', CAST(N'2025-01-10T16:25:20.780' AS DateTime), NULL, 9, N'5404a7d4-4892-4341-a819-db60f5abb0eb', 1)
INSERT [dbo].[lich_su_trang_thai] ([id], [ngay_tao], [ngay_cap_nhat], [trang_thai], [hoa_don_id], [is_delete]) VALUES (N'1ac5448b-4a5f-4a6d-a27f-8c05e25f31f0', CAST(N'2025-01-03T08:48:20.400' AS DateTime), NULL, 8, N'5e949ece-ac87-4fc1-aab3-dcad26de8254', 1)
INSERT [dbo].[lich_su_trang_thai] ([id], [ngay_tao], [ngay_cap_nhat], [trang_thai], [hoa_don_id], [is_delete]) VALUES (N'383b9f54-2b7c-4aa6-8ae9-8ece8c303644', CAST(N'2024-05-21T03:29:28.160' AS DateTime), NULL, 9, N'd605133b-5743-4424-8b48-4f2a11deea89', 1)
INSERT [dbo].[lich_su_trang_thai] ([id], [ngay_tao], [ngay_cap_nhat], [trang_thai], [hoa_don_id], [is_delete]) VALUES (N'235c052a-3c21-4f4e-9049-8f4cd5faf9db', CAST(N'2024-12-20T15:26:03.450' AS DateTime), NULL, 9, N'd5b11c00-282c-4222-b6fa-8c9a6f9b3df3', 1)
INSERT [dbo].[lich_su_trang_thai] ([id], [ngay_tao], [ngay_cap_nhat], [trang_thai], [hoa_don_id], [is_delete]) VALUES (N'8c95548a-5135-42ce-b811-8f5b8a78633a', CAST(N'2024-12-20T15:19:02.330' AS DateTime), NULL, 0, N'8c32685a-0839-4a8b-80fa-e1346cacffcb', 1)
INSERT [dbo].[lich_su_trang_thai] ([id], [ngay_tao], [ngay_cap_nhat], [trang_thai], [hoa_don_id], [is_delete]) VALUES (N'e8356043-ab3b-410f-941a-9091a53b7ba4', CAST(N'2024-05-21T01:59:14.787' AS DateTime), NULL, 0, N'2bea9fac-ab1d-491f-9ae5-0c2a055c9b9d', 0)
INSERT [dbo].[lich_su_trang_thai] ([id], [ngay_tao], [ngay_cap_nhat], [trang_thai], [hoa_don_id], [is_delete]) VALUES (N'524a79ed-f655-4918-872e-919421b879cf', CAST(N'2025-01-03T15:34:58.563' AS DateTime), NULL, 10, N'27c57f7f-9dbe-4315-a8d6-ddac67bc4ee3', 1)
INSERT [dbo].[lich_su_trang_thai] ([id], [ngay_tao], [ngay_cap_nhat], [trang_thai], [hoa_don_id], [is_delete]) VALUES (N'c569d422-6227-43d4-846e-92800345282b', CAST(N'2025-01-12T11:08:11.363' AS DateTime), NULL, 8, N'5404a7d4-4892-4341-a819-db60f5abb0eb', 1)
INSERT [dbo].[lich_su_trang_thai] ([id], [ngay_tao], [ngay_cap_nhat], [trang_thai], [hoa_don_id], [is_delete]) VALUES (N'573ccc57-ced3-4f1f-bf70-9351fb0d408a', CAST(N'2024-09-21T14:20:52.620' AS DateTime), NULL, 1, N'c041544c-3612-4e84-885a-b8b7bb979cce', 1)
INSERT [dbo].[lich_su_trang_thai] ([id], [ngay_tao], [ngay_cap_nhat], [trang_thai], [hoa_don_id], [is_delete]) VALUES (N'4ea99254-5eb5-4cc7-9fcd-998374f853ff', CAST(N'2025-01-12T13:21:03.380' AS DateTime), NULL, 8, N'7e1961ac-0cbf-4860-b015-4fe910caec70', 1)
INSERT [dbo].[lich_su_trang_thai] ([id], [ngay_tao], [ngay_cap_nhat], [trang_thai], [hoa_don_id], [is_delete]) VALUES (N'1710e0a0-724c-462b-9da2-99b9c91cb077', CAST(N'2025-01-10T13:36:10.707' AS DateTime), NULL, 10, N'dfaec20e-9bc9-4c1b-8de5-358563535965', 1)
INSERT [dbo].[lich_su_trang_thai] ([id], [ngay_tao], [ngay_cap_nhat], [trang_thai], [hoa_don_id], [is_delete]) VALUES (N'66d7807b-4804-44ff-85a2-9b5e74406d96', CAST(N'2024-05-21T04:14:03.070' AS DateTime), NULL, 9, N'4ee466de-138c-4132-8527-a91a06ab30d8', 1)
INSERT [dbo].[lich_su_trang_thai] ([id], [ngay_tao], [ngay_cap_nhat], [trang_thai], [hoa_don_id], [is_delete]) VALUES (N'ea937016-e3e5-46dc-82fb-a0f97996af3e', CAST(N'2024-05-21T02:02:32.337' AS DateTime), NULL, 5, N'2bea9fac-ab1d-491f-9ae5-0c2a055c9b9d', 1)
INSERT [dbo].[lich_su_trang_thai] ([id], [ngay_tao], [ngay_cap_nhat], [trang_thai], [hoa_don_id], [is_delete]) VALUES (N'f0ada29a-f17e-4c09-8ab3-a1e4844655ca', CAST(N'2025-01-12T02:27:28.727' AS DateTime), NULL, 9, N'3a3f8616-e56b-4dbd-a04a-7b41a88f2c0d', 1)
INSERT [dbo].[lich_su_trang_thai] ([id], [ngay_tao], [ngay_cap_nhat], [trang_thai], [hoa_don_id], [is_delete]) VALUES (N'35d8193d-af04-4acd-adb3-a309477d9c30', CAST(N'2025-01-12T11:13:10.457' AS DateTime), NULL, 8, N'5e862093-2b44-479e-aef0-2ab40af3b2f7', 1)
INSERT [dbo].[lich_su_trang_thai] ([id], [ngay_tao], [ngay_cap_nhat], [trang_thai], [hoa_don_id], [is_delete]) VALUES (N'36482a35-71f1-4ac3-a6ee-a49a6203acb3', CAST(N'2024-12-20T15:17:34.313' AS DateTime), NULL, 9, N'8c32685a-0839-4a8b-80fa-e1346cacffcb', 1)
INSERT [dbo].[lich_su_trang_thai] ([id], [ngay_tao], [ngay_cap_nhat], [trang_thai], [hoa_don_id], [is_delete]) VALUES (N'9dd0d83d-feed-48ab-aa2d-a6c9ea69b182', CAST(N'2024-05-21T02:02:25.683' AS DateTime), NULL, 0, N'2bea9fac-ab1d-491f-9ae5-0c2a055c9b9d', 1)
INSERT [dbo].[lich_su_trang_thai] ([id], [ngay_tao], [ngay_cap_nhat], [trang_thai], [hoa_don_id], [is_delete]) VALUES (N'8772e197-c53d-4a4f-b545-aa501037cd3d', CAST(N'2024-05-21T03:30:23.900' AS DateTime), NULL, 9, N'149797f4-f80d-4fb9-8ee9-da79e9831161', 1)
INSERT [dbo].[lich_su_trang_thai] ([id], [ngay_tao], [ngay_cap_nhat], [trang_thai], [hoa_don_id], [is_delete]) VALUES (N'ee5c3be6-b3ae-44f5-aa47-ab226851c032', CAST(N'2025-01-03T15:21:57.610' AS DateTime), NULL, 6, N'27c57f7f-9dbe-4315-a8d6-ddac67bc4ee3', 1)
INSERT [dbo].[lich_su_trang_thai] ([id], [ngay_tao], [ngay_cap_nhat], [trang_thai], [hoa_don_id], [is_delete]) VALUES (N'0d4bb773-77d9-436e-aa71-ae8b3725b3fd', CAST(N'2024-05-21T02:02:29.003' AS DateTime), NULL, 1, N'2bea9fac-ab1d-491f-9ae5-0c2a055c9b9d', 1)
INSERT [dbo].[lich_su_trang_thai] ([id], [ngay_tao], [ngay_cap_nhat], [trang_thai], [hoa_don_id], [is_delete]) VALUES (N'cea247e5-8ac7-4fbe-802e-af2cfb31d8bb', CAST(N'2024-05-21T02:03:02.287' AS DateTime), NULL, 10, N'2bea9fac-ab1d-491f-9ae5-0c2a055c9b9d', 1)
INSERT [dbo].[lich_su_trang_thai] ([id], [ngay_tao], [ngay_cap_nhat], [trang_thai], [hoa_don_id], [is_delete]) VALUES (N'4866dd13-7bdf-4b7c-ab40-b24646464d92', CAST(N'2025-01-03T08:49:10.043' AS DateTime), NULL, 8, N'c42f0e41-cf7b-4585-97b4-815ff461b082', 1)
INSERT [dbo].[lich_su_trang_thai] ([id], [ngay_tao], [ngay_cap_nhat], [trang_thai], [hoa_don_id], [is_delete]) VALUES (N'eb9c5012-3c29-4733-81a7-b61051042e72', CAST(N'2024-05-21T04:00:06.597' AS DateTime), NULL, 9, N'10d1a163-5e19-46bd-b7e2-d8aff384078f', 1)
INSERT [dbo].[lich_su_trang_thai] ([id], [ngay_tao], [ngay_cap_nhat], [trang_thai], [hoa_don_id], [is_delete]) VALUES (N'c3ad6507-c6fa-4737-96d9-b6e58ee32307', CAST(N'2024-05-21T04:04:10.123' AS DateTime), NULL, 0, N'10d1a163-5e19-46bd-b7e2-d8aff384078f', 1)
INSERT [dbo].[lich_su_trang_thai] ([id], [ngay_tao], [ngay_cap_nhat], [trang_thai], [hoa_don_id], [is_delete]) VALUES (N'8f0c1136-6463-4e18-ba61-b80a71bfec8d', CAST(N'2024-05-20T23:22:41.823' AS DateTime), NULL, 9, N'73613215-1dd0-4f03-af32-443508c976b0', 1)
INSERT [dbo].[lich_su_trang_thai] ([id], [ngay_tao], [ngay_cap_nhat], [trang_thai], [hoa_don_id], [is_delete]) VALUES (N'06acd0c1-b787-49e3-af9b-bafafbb19a5c', CAST(N'2024-05-21T01:59:47.303' AS DateTime), NULL, 1, N'2bea9fac-ab1d-491f-9ae5-0c2a055c9b9d', 0)
INSERT [dbo].[lich_su_trang_thai] ([id], [ngay_tao], [ngay_cap_nhat], [trang_thai], [hoa_don_id], [is_delete]) VALUES (N'301c7070-9319-45fc-a34a-bd33daf18074', CAST(N'2024-05-21T01:44:38.017' AS DateTime), NULL, 9, N'cb64ca68-a19a-4ea8-bced-63ed1e6c49c4', 1)
INSERT [dbo].[lich_su_trang_thai] ([id], [ngay_tao], [ngay_cap_nhat], [trang_thai], [hoa_don_id], [is_delete]) VALUES (N'9628424a-10f2-4fdf-a5f8-c29721822242', CAST(N'2024-05-21T01:39:54.257' AS DateTime), NULL, 9, N'82e3bfa8-336e-4c06-aeba-aaeec2e28cc4', 1)
INSERT [dbo].[lich_su_trang_thai] ([id], [ngay_tao], [ngay_cap_nhat], [trang_thai], [hoa_don_id], [is_delete]) VALUES (N'09d97f94-163f-4c25-92bd-c58b4922111b', CAST(N'2025-01-03T08:27:59.933' AS DateTime), NULL, 9, N'c42f0e41-cf7b-4585-97b4-815ff461b082', 1)
INSERT [dbo].[lich_su_trang_thai] ([id], [ngay_tao], [ngay_cap_nhat], [trang_thai], [hoa_don_id], [is_delete]) VALUES (N'e6c05489-6519-48c5-8c5c-cb28b6a7da9e', CAST(N'2025-01-03T08:50:51.720' AS DateTime), NULL, 0, N'27c57f7f-9dbe-4315-a8d6-ddac67bc4ee3', 1)
INSERT [dbo].[lich_su_trang_thai] ([id], [ngay_tao], [ngay_cap_nhat], [trang_thai], [hoa_don_id], [is_delete]) VALUES (N'fba41b3e-560a-4b95-87bf-cbdc9f5b263f', CAST(N'2025-01-03T08:33:57.097' AS DateTime), NULL, 9, N'5e949ece-ac87-4fc1-aab3-dcad26de8254', 1)
INSERT [dbo].[lich_su_trang_thai] ([id], [ngay_tao], [ngay_cap_nhat], [trang_thai], [hoa_don_id], [is_delete]) VALUES (N'5b188e30-8e9c-49b6-987f-d048e03c3047', CAST(N'2025-01-03T08:50:23.193' AS DateTime), NULL, 3, N'27c57f7f-9dbe-4315-a8d6-ddac67bc4ee3', 1)
INSERT [dbo].[lich_su_trang_thai] ([id], [ngay_tao], [ngay_cap_nhat], [trang_thai], [hoa_don_id], [is_delete]) VALUES (N'c2a3cc7d-982c-4246-9db9-d0a5e5dde23e', CAST(N'2025-01-03T15:00:59.167' AS DateTime), NULL, 5, N'35a8a874-02f4-475f-b469-7aa5cc8bfe15', 1)
INSERT [dbo].[lich_su_trang_thai] ([id], [ngay_tao], [ngay_cap_nhat], [trang_thai], [hoa_don_id], [is_delete]) VALUES (N'99d901a2-7be1-4dfc-be37-d0d50e1a3a35', CAST(N'2024-09-21T13:02:42.010' AS DateTime), NULL, 9, N'ac7578ba-623e-4685-800c-3571eadcf4d7', 1)
INSERT [dbo].[lich_su_trang_thai] ([id], [ngay_tao], [ngay_cap_nhat], [trang_thai], [hoa_don_id], [is_delete]) VALUES (N'934e9a7a-4fb3-4db9-8b0a-d2be9cc1f801', CAST(N'2024-05-21T01:45:09.240' AS DateTime), NULL, 0, N'cb64ca68-a19a-4ea8-bced-63ed1e6c49c4', 1)
INSERT [dbo].[lich_su_trang_thai] ([id], [ngay_tao], [ngay_cap_nhat], [trang_thai], [hoa_don_id], [is_delete]) VALUES (N'96650616-9010-42b3-b618-d46a7d4f164b', CAST(N'2024-05-21T04:03:13.763' AS DateTime), NULL, 3, N'10d1a163-5e19-46bd-b7e2-d8aff384078f', 1)
INSERT [dbo].[lich_su_trang_thai] ([id], [ngay_tao], [ngay_cap_nhat], [trang_thai], [hoa_don_id], [is_delete]) VALUES (N'eb70a2db-efce-4896-b8a3-d63ddd8ec312', CAST(N'2024-12-20T15:19:51.067' AS DateTime), NULL, 6, N'8c32685a-0839-4a8b-80fa-e1346cacffcb', 1)
INSERT [dbo].[lich_su_trang_thai] ([id], [ngay_tao], [ngay_cap_nhat], [trang_thai], [hoa_don_id], [is_delete]) VALUES (N'bfb9b348-1f58-448b-96c9-d64b7bdf2a5c', CAST(N'2025-01-03T08:48:08.860' AS DateTime), NULL, 8, N'134c636b-739b-4326-81d7-8e737b5bbee0', 1)
INSERT [dbo].[lich_su_trang_thai] ([id], [ngay_tao], [ngay_cap_nhat], [trang_thai], [hoa_don_id], [is_delete]) VALUES (N'4aa9c542-f7f5-4b84-9428-d9794af8e3e6', CAST(N'2025-01-03T15:21:49.547' AS DateTime), NULL, 5, N'27c57f7f-9dbe-4315-a8d6-ddac67bc4ee3', 1)
INSERT [dbo].[lich_su_trang_thai] ([id], [ngay_tao], [ngay_cap_nhat], [trang_thai], [hoa_don_id], [is_delete]) VALUES (N'0b7b7895-c6dc-4c85-b27c-d996f13c349e', CAST(N'2024-05-21T01:46:06.553' AS DateTime), NULL, 9, N'2bea9fac-ab1d-491f-9ae5-0c2a055c9b9d', 1)
INSERT [dbo].[lich_su_trang_thai] ([id], [ngay_tao], [ngay_cap_nhat], [trang_thai], [hoa_don_id], [is_delete]) VALUES (N'802b3a89-ffdb-470d-9d4d-dd166f68d11f', CAST(N'2025-01-10T05:54:02.850' AS DateTime), NULL, 9, N'dfaec20e-9bc9-4c1b-8de5-358563535965', 1)
INSERT [dbo].[lich_su_trang_thai] ([id], [ngay_tao], [ngay_cap_nhat], [trang_thai], [hoa_don_id], [is_delete]) VALUES (N'e615ca3b-9073-428b-aa9d-dfb30ce890bd', CAST(N'2024-10-04T15:16:58.417' AS DateTime), NULL, 9, N'5ce95af2-0d4a-4eab-9ca4-3a43f506402a', 1)
INSERT [dbo].[lich_su_trang_thai] ([id], [ngay_tao], [ngay_cap_nhat], [trang_thai], [hoa_don_id], [is_delete]) VALUES (N'65d94c63-6934-48ef-9c49-e390d170043a', CAST(N'2025-01-10T13:34:09.573' AS DateTime), NULL, 0, N'dfaec20e-9bc9-4c1b-8de5-358563535965', 1)
INSERT [dbo].[lich_su_trang_thai] ([id], [ngay_tao], [ngay_cap_nhat], [trang_thai], [hoa_don_id], [is_delete]) VALUES (N'35f241bc-d9b6-4eb4-ba57-e9a75ef429d0', CAST(N'2025-01-10T13:35:25.507' AS DateTime), NULL, 1, N'dfaec20e-9bc9-4c1b-8de5-358563535965', 1)
INSERT [dbo].[lich_su_trang_thai] ([id], [ngay_tao], [ngay_cap_nhat], [trang_thai], [hoa_don_id], [is_delete]) VALUES (N'eff5f6e5-a7ad-4ab3-adb5-ed7a8165d967', CAST(N'2025-01-03T08:58:56.607' AS DateTime), NULL, 3, N'35a8a874-02f4-475f-b469-7aa5cc8bfe15', 1)
INSERT [dbo].[lich_su_trang_thai] ([id], [ngay_tao], [ngay_cap_nhat], [trang_thai], [hoa_don_id], [is_delete]) VALUES (N'01b9c7d9-8979-4d37-bacd-ef9cbbac9ede', CAST(N'2024-12-20T15:18:37.547' AS DateTime), NULL, 1, N'8c32685a-0839-4a8b-80fa-e1346cacffcb', 0)
INSERT [dbo].[lich_su_trang_thai] ([id], [ngay_tao], [ngay_cap_nhat], [trang_thai], [hoa_don_id], [is_delete]) VALUES (N'eae2509d-abc5-4f1e-a131-f138cd98832e', CAST(N'2024-05-21T02:02:36.587' AS DateTime), NULL, 6, N'2bea9fac-ab1d-491f-9ae5-0c2a055c9b9d', 1)
INSERT [dbo].[lich_su_trang_thai] ([id], [ngay_tao], [ngay_cap_nhat], [trang_thai], [hoa_don_id], [is_delete]) VALUES (N'5b84ea2c-914f-4e85-a144-f2283d66d042', CAST(N'2025-01-12T11:08:16.983' AS DateTime), NULL, 9, N'ab8fc2c7-5ef5-40f4-a864-edd985bd92ef', 1)
INSERT [dbo].[lich_su_trang_thai] ([id], [ngay_tao], [ngay_cap_nhat], [trang_thai], [hoa_don_id], [is_delete]) VALUES (N'349021bb-d7e2-43a6-911c-f697b5022770', CAST(N'2025-01-03T09:17:38.930' AS DateTime), NULL, 0, N'35a8a874-02f4-475f-b469-7aa5cc8bfe15', 1)
INSERT [dbo].[lich_su_trang_thai] ([id], [ngay_tao], [ngay_cap_nhat], [trang_thai], [hoa_don_id], [is_delete]) VALUES (N'bd4607e0-21fe-4032-9950-f9b3956dcc94', CAST(N'2024-05-21T02:47:19.803' AS DateTime), NULL, 1, N'33f5c968-328e-4698-b6f6-e61f9b347fb2', 1)
INSERT [dbo].[lich_su_trang_thai] ([id], [ngay_tao], [ngay_cap_nhat], [trang_thai], [hoa_don_id], [is_delete]) VALUES (N'a2f5496e-87cd-43b1-bddb-fa0ff059cd58', CAST(N'2025-01-03T08:49:39.847' AS DateTime), NULL, 8, N'1873b821-9ca9-4cb5-a98c-9fc488119a5e', 1)
INSERT [dbo].[lich_su_trang_thai] ([id], [ngay_tao], [ngay_cap_nhat], [trang_thai], [hoa_don_id], [is_delete]) VALUES (N'fa1fa03e-b6e6-4d20-b7fd-fcf1f77ce21c', CAST(N'2025-01-03T08:30:17.407' AS DateTime), NULL, 9, N'134c636b-739b-4326-81d7-8e737b5bbee0', 1)
INSERT [dbo].[lich_su_trang_thai] ([id], [ngay_tao], [ngay_cap_nhat], [trang_thai], [hoa_don_id], [is_delete]) VALUES (N'ffe7ec62-582e-4261-94c9-fd61e28ea980', CAST(N'2024-05-21T04:14:25.933' AS DateTime), NULL, 9, N'e1f3a77f-9cd4-4c2e-bb5b-0d3f3d5b7280', 1)
INSERT [dbo].[lich_su_trang_thai] ([id], [ngay_tao], [ngay_cap_nhat], [trang_thai], [hoa_don_id], [is_delete]) VALUES (N'f5a611a4-13db-45a2-817e-fe31fe5b3614', CAST(N'2025-01-03T15:01:21.247' AS DateTime), NULL, 6, N'35a8a874-02f4-475f-b469-7aa5cc8bfe15', 1)
GO
INSERT [dbo].[loai] ([id_loai], [ma], [ten_loai], [ngay_tao], [ngay_cap_nhat], [mo_ta], [trang_thai]) VALUES (N'e2299914-2c36-45e0-bedc-60f650d11c8e', N'PL3', N'Low - top ', CAST(N'2024-05-18' AS Date), NULL, N'Đẹp', 0)
INSERT [dbo].[loai] ([id_loai], [ma], [ten_loai], [ngay_tao], [ngay_cap_nhat], [mo_ta], [trang_thai]) VALUES (N'270da14e-bc6d-4024-9df6-6850c7017ef9', N'PL4', N'Slip - on ', CAST(N'2024-05-18' AS Date), NULL, N'Đẹp', 0)
INSERT [dbo].[loai] ([id_loai], [ma], [ten_loai], [ngay_tao], [ngay_cap_nhat], [mo_ta], [trang_thai]) VALUES (N'6cfda138-46ce-42ed-9df5-6ee84ca20e8d', N'PL1', N'High - top ', CAST(N'2024-05-18' AS Date), NULL, N'Đẹp', 0)
INSERT [dbo].[loai] ([id_loai], [ma], [ten_loai], [ngay_tao], [ngay_cap_nhat], [mo_ta], [trang_thai]) VALUES (N'1e19ff39-b8f3-4f8a-9537-f4886a6657b0', N'PL2', N'Mid - top', CAST(N'2024-05-18' AS Date), NULL, N'Đẹp', 0)
GO
INSERT [dbo].[mau_sac] ([id_mau_sac], [ma], [ten_mau_sac], [ngay_tao], [ngay_cap_nhat], [mo_ta], [trang_thai]) VALUES (N'0b9109e1-281e-42f2-a33f-457305a880ad', N'MS4', N'Blue', CAST(N'2024-05-18' AS Date), NULL, N'Đẹp', 0)
INSERT [dbo].[mau_sac] ([id_mau_sac], [ma], [ten_mau_sac], [ngay_tao], [ngay_cap_nhat], [mo_ta], [trang_thai]) VALUES (N'7bf12f2d-61f1-4aa0-af30-7d4a0ac5b032', N'MS1', N'Black', CAST(N'2024-05-18' AS Date), NULL, N'Đẹp', 0)
INSERT [dbo].[mau_sac] ([id_mau_sac], [ma], [ten_mau_sac], [ngay_tao], [ngay_cap_nhat], [mo_ta], [trang_thai]) VALUES (N'a5509730-ca25-4e0c-9fdb-9917f8c579dd', N'MS2', N'Red', CAST(N'2024-05-18' AS Date), NULL, N'Đẹp', 0)
INSERT [dbo].[mau_sac] ([id_mau_sac], [ma], [ten_mau_sac], [ngay_tao], [ngay_cap_nhat], [mo_ta], [trang_thai]) VALUES (N'96286c3c-239d-4151-bf8b-ae65b141c2d9', N'MS5', N'Yellow', CAST(N'2024-05-18' AS Date), NULL, N'Đẹp', 0)
INSERT [dbo].[mau_sac] ([id_mau_sac], [ma], [ten_mau_sac], [ngay_tao], [ngay_cap_nhat], [mo_ta], [trang_thai]) VALUES (N'090cd8ca-7433-4b11-89d6-e3bdd7385883', N'MS3', N'While', CAST(N'2024-05-18' AS Date), NULL, N'Đẹp', 0)
GO
INSERT [dbo].[nhan_vien] ([id_nhan_vien], [ma], [ten_nhan_vien], [email], [sdt], [ngay_sinh], [gioi_tinh], [dia_chi], [cccd], [hinh_anh], [tai_khoan], [mat_khau], [ngay_tao], [ngay_cap_nhat], [trang_thai], [chuc_vu_id]) VALUES (N'9ce83142-dc15-4ea8-ad0c-315e69c1ccb1', NULL, N'Staff 2', N'staff2@gmail.com', 987654321, CAST(N'1995-05-15' AS Date), 0, N'HN', N'987654321098', NULL, N'staff2', N'123', NULL, CAST(N'2025-01-10' AS Date), 0, N'1de9b576-7dbc-46a1-8488-9b0f553350eb')
INSERT [dbo].[nhan_vien] ([id_nhan_vien], [ma], [ten_nhan_vien], [email], [sdt], [ngay_sinh], [gioi_tinh], [dia_chi], [cccd], [hinh_anh], [tai_khoan], [mat_khau], [ngay_tao], [ngay_cap_nhat], [trang_thai], [chuc_vu_id]) VALUES (N'aca6647e-10d9-4a11-a374-a5724548b710', NULL, N'Staff 1', N'staff1@gmail.com', 123456789, CAST(N'1990-01-01' AS Date), 1, N'HCM', N'123456789012', NULL, N'staff1', N'123', NULL, CAST(N'2025-01-10' AS Date), 1, N'1de9b576-7dbc-46a1-8488-9b0f553350eb')
INSERT [dbo].[nhan_vien] ([id_nhan_vien], [ma], [ten_nhan_vien], [email], [sdt], [ngay_sinh], [gioi_tinh], [dia_chi], [cccd], [hinh_anh], [tai_khoan], [mat_khau], [ngay_tao], [ngay_cap_nhat], [trang_thai], [chuc_vu_id]) VALUES (N'ed1fc377-5b9b-4cc7-a476-ae368add91b4', NULL, N'Thông', N'admin@gmail.com', 328843156, CAST(N'2024-05-01' AS Date), 0, N'ok', N'034203002161', NULL, N'admin', N'123', NULL, CAST(N'2024-05-20' AS Date), 0, N'7c52b2df-5953-4fc1-8d2e-8d7e8316d002')
GO
INSERT [dbo].[san_pham] ([id_san_pham], [ma_san_pham], [ten_san_pham], [id_hinh_anh], [id_loai], [id_thuong_hieu], [ngay_tao], [ngay_cap_nhat], [mo_ta], [trang_thai]) VALUES (N'badef8ca-3df8-4dd1-aa97-4fb22bbaa15c', N'SP2', N'Mecom', N'e70c2a38-fbba-45ec-a930-0169ae2a6dc8', N'e2299914-2c36-45e0-bedc-60f650d11c8e', N'a6801c18-6b7b-4f0f-b921-e22062165ebb', CAST(N'2025-01-10' AS Date), NULL, N'Giày vải rất phổ biến với thế hệ Millennials.  Nó nhẹ, thoáng khí và có độ đàn hồi tốt, tạo cảm giác thoải mái và phong cách', 1)
INSERT [dbo].[san_pham] ([id_san_pham], [ma_san_pham], [ten_san_pham], [id_hinh_anh], [id_loai], [id_thuong_hieu], [ngay_tao], [ngay_cap_nhat], [mo_ta], [trang_thai]) VALUES (N'f1f0e4d0-646e-43cd-8258-53d4a8780aa3', N'SP10', N'Giay the thao', N'c01c2cab-14ee-44ab-9303-78162d34de74', N'270da14e-bc6d-4024-9df6-6850c7017ef9', N'14c9729f-ed97-4b42-ade3-2f9aacd87277', CAST(N'2024-05-21' AS Date), NULL, N'san pham moi', 1)
INSERT [dbo].[san_pham] ([id_san_pham], [ma_san_pham], [ten_san_pham], [id_hinh_anh], [id_loai], [id_thuong_hieu], [ngay_tao], [ngay_cap_nhat], [mo_ta], [trang_thai]) VALUES (N'a1c44f76-aaa1-4d24-b690-6d5808350e8e', N'SP8', N'Air Force 1', N'89539b1b-01d7-466c-8d8b-f9b1f2fad617', N'1e19ff39-b8f3-4f8a-9537-f4886a6657b0', N'906384f0-83ca-4fe3-b518-c528e79feeb7', CAST(N'2024-05-21' AS Date), NULL, N'Giày thoáng khí cả mặt trong lẫn mặt ngoài khiến người mang luôn cảm thấy dễ chịu dù hoạt động trong thời gian dài.', 1)
INSERT [dbo].[san_pham] ([id_san_pham], [ma_san_pham], [ten_san_pham], [id_hinh_anh], [id_loai], [id_thuong_hieu], [ngay_tao], [ngay_cap_nhat], [mo_ta], [trang_thai]) VALUES (N'8cb9827b-38b1-4962-962b-7645a1febd8f', N'SP4', N'Zegama', N'b8e3c21d-5e2e-4e62-9b74-2a2965b8c6e5', N'270da14e-bc6d-4024-9df6-6850c7017ef9', N'1d8360d5-2f95-4f76-80d8-a11f994e8af9', CAST(N'2024-05-20' AS Date), NULL, N'Giày được thiết kế dáng buộc dây năng động,mặt giày sử dụng da lộn phối vải dệt thời trang, phối màu trẻ trung phong cách.Đặc biệt sản phẩm sử dụng chất liệu cao cấp có độ bền tối ưu giúp bạn thoải mái trong mọi hoàn cảnh.

', 1)
INSERT [dbo].[san_pham] ([id_san_pham], [ma_san_pham], [ten_san_pham], [id_hinh_anh], [id_loai], [id_thuong_hieu], [ngay_tao], [ngay_cap_nhat], [mo_ta], [trang_thai]) VALUES (N'b85bb4da-ad83-4c24-be3f-8b937cc3c1f5', N'SP6', N'Air Jordan hight', N'24a01d64-49ae-4267-892a-e83100aea63a', N'1e19ff39-b8f3-4f8a-9537-f4886a6657b0', N'a6801c18-6b7b-4f0f-b921-e22062165ebb', CAST(N'2024-05-20' AS Date), NULL, N'Giày thoáng khí cả mặt trong lẫn mặt ngoài khiến người mang luôn cảm thấy dễ chịu dù hoạt động trong thời gian dài.', 1)
INSERT [dbo].[san_pham] ([id_san_pham], [ma_san_pham], [ten_san_pham], [id_hinh_anh], [id_loai], [id_thuong_hieu], [ngay_tao], [ngay_cap_nhat], [mo_ta], [trang_thai]) VALUES (N'9234209d-a2f1-4f08-8a43-a84406b22265', N'SP9', N'Nike duck low', N'671e673a-c4dc-41d7-a199-b3b80298556c', N'e2299914-2c36-45e0-bedc-60f650d11c8e', N'906384f0-83ca-4fe3-b518-c528e79feeb7', CAST(N'2024-05-20' AS Date), NULL, N'Giày thoáng khí cả mặt trong lẫn mặt ngoài khiến người mang luôn cảm thấy dễ chịu dù hoạt động trong thời gian dài.', 0)
INSERT [dbo].[san_pham] ([id_san_pham], [ma_san_pham], [ten_san_pham], [id_hinh_anh], [id_loai], [id_thuong_hieu], [ngay_tao], [ngay_cap_nhat], [mo_ta], [trang_thai]) VALUES (N'b80d4e83-9bee-4933-837d-a87c78353f47', N'SP3', N'Vaporfly', N'608476eb-66dd-4594-b9be-729c9baf6e78', N'e2299914-2c36-45e0-bedc-60f650d11c8e', N'14c9729f-ed97-4b42-ade3-2f9aacd87277', CAST(N'2024-05-20' AS Date), NULL, N'Phong cách nhẹ nhàng, sự thoải mái vượt trội và tính linh hoạt tối ưu, tất cả đều có trong Bộ sưu tập Crocs Brooklyn mới!', 1)
INSERT [dbo].[san_pham] ([id_san_pham], [ma_san_pham], [ten_san_pham], [id_hinh_anh], [id_loai], [id_thuong_hieu], [ngay_tao], [ngay_cap_nhat], [mo_ta], [trang_thai]) VALUES (N'117b9101-19a5-4ea6-b124-c4249268d171', N'SP5', N'Air Jordan', N'887c525d-123d-4b0d-a542-bc336931d440', N'6cfda138-46ce-42ed-9df5-6ee84ca20e8d', N'906384f0-83ca-4fe3-b518-c528e79feeb7', CAST(N'2024-05-20' AS Date), NULL, N'Giày thoáng khí cả mặt trong lẫn mặt ngoài khiến người mang luôn cảm thấy dễ chịu dù hoạt động trong thời gian dài.', 1)
INSERT [dbo].[san_pham] ([id_san_pham], [ma_san_pham], [ten_san_pham], [id_hinh_anh], [id_loai], [id_thuong_hieu], [ngay_tao], [ngay_cap_nhat], [mo_ta], [trang_thai]) VALUES (N'a48c72aa-824a-4234-a707-dc954c1d00e5', N'SP1', N'Airzoom', N'3b9c38d2-d201-462c-abf0-cc920437866e', N'e2299914-2c36-45e0-bedc-60f650d11c8e', N'906384f0-83ca-4fe3-b518-c528e79feeb7', CAST(N'2024-05-20' AS Date), NULL, N'Denim gần giống như vải canvas. Sự khác biệt giữa canvas và denim là ở kết cấu và trọng lượng. Denim có trọng lượng nặng hơn nhưng kết cấu mịn hơn.', 1)
INSERT [dbo].[san_pham] ([id_san_pham], [ma_san_pham], [ten_san_pham], [id_hinh_anh], [id_loai], [id_thuong_hieu], [ngay_tao], [ngay_cap_nhat], [mo_ta], [trang_thai]) VALUES (N'664c44bb-7e2a-43d6-a6ea-e8d954721441', N'SP7', N'Air max', N'c48dc533-8d2d-4e0d-9757-206413876901', N'270da14e-bc6d-4024-9df6-6850c7017ef9', N'14c9729f-ed97-4b42-ade3-2f9aacd87277', CAST(N'2024-05-20' AS Date), NULL, N'Giày được thiết kế dáng buộc dây năng động,mặt giày sử dụng da lộn phối vải dệt thời trang, phối màu trẻ trung phong cách.', 1)
GO
INSERT [dbo].[thuong_hieu] ([id_thuong_hieu], [ma], [ten_thuong_hieu], [xuat_su], [ngay_tao], [ngay_cap_nhat], [mo_ta]) VALUES (N'14c9729f-ed97-4b42-ade3-2f9aacd87277', N'TH3', N'Puma', N'China', CAST(N'2024-05-18' AS Date), NULL, N'Đẹp')
INSERT [dbo].[thuong_hieu] ([id_thuong_hieu], [ma], [ten_thuong_hieu], [xuat_su], [ngay_tao], [ngay_cap_nhat], [mo_ta]) VALUES (N'49853378-7cb3-4524-a0c3-780090caad0a', N'TH5', N'Gucci', N'China', CAST(N'2024-05-18' AS Date), NULL, N'Đẹp')
INSERT [dbo].[thuong_hieu] ([id_thuong_hieu], [ma], [ten_thuong_hieu], [xuat_su], [ngay_tao], [ngay_cap_nhat], [mo_ta]) VALUES (N'1d8360d5-2f95-4f76-80d8-a11f994e8af9', N'TH2', N'Panana', N'China', CAST(N'2024-05-18' AS Date), NULL, N'Đẹp')
INSERT [dbo].[thuong_hieu] ([id_thuong_hieu], [ma], [ten_thuong_hieu], [xuat_su], [ngay_tao], [ngay_cap_nhat], [mo_ta]) VALUES (N'906384f0-83ca-4fe3-b518-c528e79feeb7', N'TH4', N'Nike', N'China', CAST(N'2024-05-18' AS Date), NULL, N'Đẹp')
INSERT [dbo].[thuong_hieu] ([id_thuong_hieu], [ma], [ten_thuong_hieu], [xuat_su], [ngay_tao], [ngay_cap_nhat], [mo_ta]) VALUES (N'a6801c18-6b7b-4f0f-b921-e22062165ebb', N'TH1', N'Adidas', N'China', CAST(N'2024-05-18' AS Date), NULL, N'Đẹp')
GO
ALTER TABLE [dbo].[chat_lieu] ADD  DEFAULT (newid()) FOR [id_chat_lieu]
GO
ALTER TABLE [dbo].[chat_lieu] ADD  DEFAULT (getdate()) FOR [ngay_tao]
GO
ALTER TABLE [dbo].[chi_tiet_san_pham] ADD  DEFAULT (newid()) FOR [id_chi_tiet_san_pham]
GO
ALTER TABLE [dbo].[chi_tiet_san_pham] ADD  DEFAULT (getdate()) FOR [ngay_tao]
GO
ALTER TABLE [dbo].[chi_tiet_san_pham] ADD  DEFAULT ((1)) FOR [is_delete]
GO
ALTER TABLE [dbo].[chuc_vu] ADD  DEFAULT (newid()) FOR [id_chuc_vu]
GO
ALTER TABLE [dbo].[chuc_vu] ADD  DEFAULT (getdate()) FOR [ngay_tao]
GO
ALTER TABLE [dbo].[danh_gia] ADD  DEFAULT (newid()) FOR [id_danh_gia]
GO
ALTER TABLE [dbo].[dia_chi] ADD  DEFAULT (newid()) FOR [id_dia_chi]
GO
ALTER TABLE [dbo].[dia_chi] ADD  DEFAULT (getdate()) FOR [ngay_tao]
GO
ALTER TABLE [dbo].[gio_hang_chi_tiet] ADD  DEFAULT (newid()) FOR [id_gio_hang_chi_tiet]
GO
ALTER TABLE [dbo].[hinh_anh] ADD  DEFAULT (newid()) FOR [id_hinh_anh]
GO
ALTER TABLE [dbo].[hinh_anh] ADD  DEFAULT (getdate()) FOR [ngay_tao]
GO
ALTER TABLE [dbo].[hoa_don] ADD  DEFAULT (newid()) FOR [id_hoa_don]
GO
ALTER TABLE [dbo].[hoa_don] ADD  DEFAULT (getdate()) FOR [ngay_tao]
GO
ALTER TABLE [dbo].[hoa_don_chi_tiet] ADD  DEFAULT (newid()) FOR [id_hoa_don_chi_tiet]
GO
ALTER TABLE [dbo].[khach_hang] ADD  DEFAULT (newid()) FOR [id_khach_hang]
GO
ALTER TABLE [dbo].[khach_hang] ADD  DEFAULT (getdate()) FOR [ngay_tao]
GO
ALTER TABLE [dbo].[khuyen_mai] ADD  DEFAULT (newid()) FOR [id_khuyen_mai]
GO
ALTER TABLE [dbo].[khuyen_mai] ADD  DEFAULT (getdate()) FOR [ngay_tao]
GO
ALTER TABLE [dbo].[kich_thuoc] ADD  DEFAULT (newid()) FOR [id_kich_thuoc]
GO
ALTER TABLE [dbo].[kich_thuoc] ADD  DEFAULT (getdate()) FOR [ngay_tao]
GO
ALTER TABLE [dbo].[loai] ADD  DEFAULT (newid()) FOR [id_loai]
GO
ALTER TABLE [dbo].[loai] ADD  DEFAULT (getdate()) FOR [ngay_tao]
GO
ALTER TABLE [dbo].[mau_sac] ADD  DEFAULT (newid()) FOR [id_mau_sac]
GO
ALTER TABLE [dbo].[mau_sac] ADD  DEFAULT (getdate()) FOR [ngay_tao]
GO
ALTER TABLE [dbo].[nhan_vien] ADD  DEFAULT (newid()) FOR [id_nhan_vien]
GO
ALTER TABLE [dbo].[nhan_vien] ADD  DEFAULT (getdate()) FOR [ngay_tao]
GO
ALTER TABLE [dbo].[san_pham] ADD  DEFAULT (newid()) FOR [id_san_pham]
GO
ALTER TABLE [dbo].[san_pham] ADD  DEFAULT (getdate()) FOR [ngay_tao]
GO
ALTER TABLE [dbo].[thuong_hieu] ADD  DEFAULT (newid()) FOR [id_thuong_hieu]
GO
ALTER TABLE [dbo].[thuong_hieu] ADD  DEFAULT (getdate()) FOR [ngay_tao]
GO
ALTER TABLE [dbo].[chi_tiet_san_pham]  WITH CHECK ADD  CONSTRAINT [FK__chi_tiet___chat___73BA3083] FOREIGN KEY([chat_lieu_id])
REFERENCES [dbo].[chat_lieu] ([id_chat_lieu])
GO
ALTER TABLE [dbo].[chi_tiet_san_pham] CHECK CONSTRAINT [FK__chi_tiet___chat___73BA3083]
GO
ALTER TABLE [dbo].[chi_tiet_san_pham]  WITH CHECK ADD  CONSTRAINT [FK__chi_tiet___kich___71D1E811] FOREIGN KEY([kich_thuoc_id])
REFERENCES [dbo].[kich_thuoc] ([id_kich_thuoc])
GO
ALTER TABLE [dbo].[chi_tiet_san_pham] CHECK CONSTRAINT [FK__chi_tiet___kich___71D1E811]
GO
ALTER TABLE [dbo].[chi_tiet_san_pham]  WITH CHECK ADD  CONSTRAINT [FK__chi_tiet___mau_s__72C60C4A] FOREIGN KEY([mau_sac_id])
REFERENCES [dbo].[mau_sac] ([id_mau_sac])
GO
ALTER TABLE [dbo].[chi_tiet_san_pham] CHECK CONSTRAINT [FK__chi_tiet___mau_s__72C60C4A]
GO
ALTER TABLE [dbo].[chi_tiet_san_pham]  WITH CHECK ADD  CONSTRAINT [FK__chi_tiet___san_p__70DDC3D8] FOREIGN KEY([san_pham_id])
REFERENCES [dbo].[san_pham] ([id_san_pham])
GO
ALTER TABLE [dbo].[chi_tiet_san_pham] CHECK CONSTRAINT [FK__chi_tiet___san_p__70DDC3D8]
GO
ALTER TABLE [dbo].[danh_gia]  WITH CHECK ADD  CONSTRAINT [FK__danh_gia__chi_ti__08B54D69] FOREIGN KEY([chi_tiet_san_pham_id])
REFERENCES [dbo].[chi_tiet_san_pham] ([id_chi_tiet_san_pham])
GO
ALTER TABLE [dbo].[danh_gia] CHECK CONSTRAINT [FK__danh_gia__chi_ti__08B54D69]
GO
ALTER TABLE [dbo].[danh_gia]  WITH CHECK ADD  CONSTRAINT [FK__danh_gia__khach___09A971A2] FOREIGN KEY([khach_hang_id])
REFERENCES [dbo].[khach_hang] ([id_khach_hang])
GO
ALTER TABLE [dbo].[danh_gia] CHECK CONSTRAINT [FK__danh_gia__khach___09A971A2]
GO
ALTER TABLE [dbo].[dia_chi]  WITH CHECK ADD  CONSTRAINT [FK__dia_chi__khach_h__3C69FB99] FOREIGN KEY([khach_hang_id])
REFERENCES [dbo].[khach_hang] ([id_khach_hang])
GO
ALTER TABLE [dbo].[dia_chi] CHECK CONSTRAINT [FK__dia_chi__khach_h__3C69FB99]
GO
ALTER TABLE [dbo].[gio_hang_chi_tiet]  WITH CHECK ADD  CONSTRAINT [FK__gio_hang___id_ch__0E6E26BF] FOREIGN KEY([id_chi_tiet_san_pham])
REFERENCES [dbo].[chi_tiet_san_pham] ([id_chi_tiet_san_pham])
GO
ALTER TABLE [dbo].[gio_hang_chi_tiet] CHECK CONSTRAINT [FK__gio_hang___id_ch__0E6E26BF]
GO
ALTER TABLE [dbo].[gio_hang_chi_tiet]  WITH CHECK ADD  CONSTRAINT [gio_hang_chi_tiet_khach_hang_FK] FOREIGN KEY([id_khach_hang])
REFERENCES [dbo].[khach_hang] ([id_khach_hang])
GO
ALTER TABLE [dbo].[gio_hang_chi_tiet] CHECK CONSTRAINT [gio_hang_chi_tiet_khach_hang_FK]
GO
ALTER TABLE [dbo].[hoa_don]  WITH CHECK ADD  CONSTRAINT [FK__hoa_don__khach_h__7F2BE32F] FOREIGN KEY([khach_hang_id])
REFERENCES [dbo].[khach_hang] ([id_khach_hang])
GO
ALTER TABLE [dbo].[hoa_don] CHECK CONSTRAINT [FK__hoa_don__khach_h__7F2BE32F]
GO
ALTER TABLE [dbo].[hoa_don]  WITH CHECK ADD  CONSTRAINT [FK__hoa_don__khuyen___00200768] FOREIGN KEY([khuyen_mai_id])
REFERENCES [dbo].[khuyen_mai] ([id_khuyen_mai])
GO
ALTER TABLE [dbo].[hoa_don] CHECK CONSTRAINT [FK__hoa_don__khuyen___00200768]
GO
ALTER TABLE [dbo].[hoa_don]  WITH CHECK ADD  CONSTRAINT [hoa_don_nhan_vien_FK] FOREIGN KEY([nhan_vien_id])
REFERENCES [dbo].[nhan_vien] ([id_nhan_vien])
GO
ALTER TABLE [dbo].[hoa_don] CHECK CONSTRAINT [hoa_don_nhan_vien_FK]
GO
ALTER TABLE [dbo].[hoa_don_chi_tiet]  WITH CHECK ADD  CONSTRAINT [FK__hoa_don_c__chi_t__04E4BC85] FOREIGN KEY([chi_tiet_san_pham_id])
REFERENCES [dbo].[chi_tiet_san_pham] ([id_chi_tiet_san_pham])
GO
ALTER TABLE [dbo].[hoa_don_chi_tiet] CHECK CONSTRAINT [FK__hoa_don_c__chi_t__04E4BC85]
GO
ALTER TABLE [dbo].[hoa_don_chi_tiet]  WITH CHECK ADD  CONSTRAINT [FK__hoa_don_c__hoa_d__03F0984C] FOREIGN KEY([hoa_don_id])
REFERENCES [dbo].[hoa_don] ([id_hoa_don])
GO
ALTER TABLE [dbo].[hoa_don_chi_tiet] CHECK CONSTRAINT [FK__hoa_don_c__hoa_d__03F0984C]
GO
ALTER TABLE [dbo].[nhan_vien]  WITH CHECK ADD  CONSTRAINT [FK__nhan_vien__chuc___797309D9] FOREIGN KEY([chuc_vu_id])
REFERENCES [dbo].[chuc_vu] ([id_chuc_vu])
GO
ALTER TABLE [dbo].[nhan_vien] CHECK CONSTRAINT [FK__nhan_vien__chuc___797309D9]
GO
ALTER TABLE [dbo].[san_pham]  WITH CHECK ADD  CONSTRAINT [FK__san_pham__id_hin__5629CD9C] FOREIGN KEY([id_hinh_anh])
REFERENCES [dbo].[hinh_anh] ([id_hinh_anh])
GO
ALTER TABLE [dbo].[san_pham] CHECK CONSTRAINT [FK__san_pham__id_hin__5629CD9C]
GO
ALTER TABLE [dbo].[san_pham]  WITH CHECK ADD  CONSTRAINT [FK__san_pham__id_loa__571DF1D5] FOREIGN KEY([id_loai])
REFERENCES [dbo].[loai] ([id_loai])
GO
ALTER TABLE [dbo].[san_pham] CHECK CONSTRAINT [FK__san_pham__id_loa__571DF1D5]
GO
ALTER TABLE [dbo].[san_pham]  WITH CHECK ADD  CONSTRAINT [FK__san_pham__id_thu__5812160E] FOREIGN KEY([id_thuong_hieu])
REFERENCES [dbo].[thuong_hieu] ([id_thuong_hieu])
GO
ALTER TABLE [dbo].[san_pham] CHECK CONSTRAINT [FK__san_pham__id_thu__5812160E]
GO
USE [master]
GO
ALTER DATABASE [WEB_BAN_GIAY] SET  READ_WRITE 
GO
