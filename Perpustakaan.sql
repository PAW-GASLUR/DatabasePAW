USE [master]
GO
/****** Object:  Database [PERPUSTAKAAN_PAW]    Script Date: 15/01/2021 10:07:27 ******/
CREATE DATABASE [PERPUSTAKAAN_PAW]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PERPUSTAKAAN_PAW', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\PERPUSTAKAAN_PAW.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'PERPUSTAKAAN_PAW_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\PERPUSTAKAAN_PAW_log.ldf' , SIZE = 1792KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [PERPUSTAKAAN_PAW] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PERPUSTAKAAN_PAW].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PERPUSTAKAAN_PAW] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PERPUSTAKAAN_PAW] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PERPUSTAKAAN_PAW] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PERPUSTAKAAN_PAW] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PERPUSTAKAAN_PAW] SET ARITHABORT OFF 
GO
ALTER DATABASE [PERPUSTAKAAN_PAW] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PERPUSTAKAAN_PAW] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PERPUSTAKAAN_PAW] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PERPUSTAKAAN_PAW] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PERPUSTAKAAN_PAW] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PERPUSTAKAAN_PAW] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PERPUSTAKAAN_PAW] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PERPUSTAKAAN_PAW] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PERPUSTAKAAN_PAW] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PERPUSTAKAAN_PAW] SET  DISABLE_BROKER 
GO
ALTER DATABASE [PERPUSTAKAAN_PAW] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PERPUSTAKAAN_PAW] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PERPUSTAKAAN_PAW] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PERPUSTAKAAN_PAW] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PERPUSTAKAAN_PAW] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PERPUSTAKAAN_PAW] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PERPUSTAKAAN_PAW] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PERPUSTAKAAN_PAW] SET RECOVERY FULL 
GO
ALTER DATABASE [PERPUSTAKAAN_PAW] SET  MULTI_USER 
GO
ALTER DATABASE [PERPUSTAKAAN_PAW] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PERPUSTAKAAN_PAW] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PERPUSTAKAAN_PAW] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PERPUSTAKAAN_PAW] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [PERPUSTAKAAN_PAW] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'PERPUSTAKAAN_PAW', N'ON'
GO
ALTER DATABASE [PERPUSTAKAAN_PAW] SET QUERY_STORE = OFF
GO
USE [PERPUSTAKAAN_PAW]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 15/01/2021 10:07:27 ******/
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
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 15/01/2021 10:07:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 15/01/2021 10:07:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 15/01/2021 10:07:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 15/01/2021 10:07:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 15/01/2021 10:07:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 15/01/2021 10:07:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 15/01/2021 10:07:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Buku]    Script Date: 15/01/2021 10:07:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Buku](
	[No_Buku] [int] IDENTITY(1,1) NOT NULL,
	[Judul_Buku] [varchar](100) NULL,
	[No_Katalog] [int] NULL,
	[No_Rak] [int] NULL,
	[Pengarang] [varchar](60) NULL,
	[Penerbit] [varchar](50) NULL,
 CONSTRAINT [PK_Buku] PRIMARY KEY CLUSTERED 
(
	[No_Buku] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Gender]    Script Date: 15/01/2021 10:07:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gender](
	[No_Gender] [int] IDENTITY(1,1) NOT NULL,
	[Nama_Gender] [varchar](1) NULL,
 CONSTRAINT [PK_Gender] PRIMARY KEY CLUSTERED 
(
	[No_Gender] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Katalog_Buku]    Script Date: 15/01/2021 10:07:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Katalog_Buku](
	[No_Katalog] [int] IDENTITY(1,1) NOT NULL,
	[Jenis_Katalog] [varchar](20) NULL,
 CONSTRAINT [PK_Katalog_Buku] PRIMARY KEY CLUSTERED 
(
	[No_Katalog] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kondisi_Buku]    Script Date: 15/01/2021 10:07:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kondisi_Buku](
	[No_Kondisi] [int] IDENTITY(1,1) NOT NULL,
	[Nama_Kondisi] [varchar](15) NULL,
 CONSTRAINT [PK_Kondisi_Buku] PRIMARY KEY CLUSTERED 
(
	[No_Kondisi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mahasiswa]    Script Date: 15/01/2021 10:07:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mahasiswa](
	[No_Anggota] [int] IDENTITY(1,1) NOT NULL,
	[NIM] [varchar](11) NULL,
	[Nama] [varchar](30) NULL,
	[No_Gender] [int] NULL,
	[No_HP] [varchar](13) NULL,
	[Alamat] [varchar](150) NULL,
 CONSTRAINT [PK_Mahasiswa] PRIMARY KEY CLUSTERED 
(
	[No_Anggota] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Peminjaman]    Script Date: 15/01/2021 10:07:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Peminjaman](
	[No_Peminjaman] [int] IDENTITY(1,1) NOT NULL,
	[Tgl_Peminjaman] [datetime] NULL,
	[No_Buku] [int] NULL,
	[No_Anggota] [int] NULL,
 CONSTRAINT [PK_Peminjaman] PRIMARY KEY CLUSTERED 
(
	[No_Peminjaman] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pengembalian]    Script Date: 15/01/2021 10:07:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pengembalian](
	[No_Pengembalian] [int] IDENTITY(1,1) NOT NULL,
	[Tgl_Pengembalian] [datetime] NULL,
	[No_Kondisi] [int] NULL,
	[Denda] [int] NULL,
	[No_Peminjaman] [int] NULL,
 CONSTRAINT [PK_Pengembalian] PRIMARY KEY CLUSTERED 
(
	[No_Pengembalian] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rak]    Script Date: 15/01/2021 10:07:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rak](
	[No_Rak] [int] IDENTITY(1,1) NOT NULL,
	[Nama_Rak] [varchar](20) NULL,
 CONSTRAINT [PK_Rak] PRIMARY KEY CLUSTERED 
(
	[No_Rak] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'00000000000000_CreateIdentitySchema', N'2.1.8-servicing-32085')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'c80d37ee-059a-4d60-bfdd-19b3f7940a07', N'Mahasiswa', N'MAHASISWA', N'5a6fea4c-c1d2-4d2f-97da-55eb589049bb')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'cc8c6251-51a6-44ed-ac8b-32f5d673d79f', N'Staff', N'STAFF', N'a1d549cc-441f-42f7-a817-8d69da414e10')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'61efa853-c220-468a-bf1e-6ace3568a67a', N'musa@musa.com', N'MUSA@MUSA.COM', N'musa@musa.com', N'MUSA@MUSA.COM', 0, N'AQAAAAEAACcQAAAAEP4Z13+ONckpy0B+tmXG3PBjwGgksccV1GZ/pqir5PCc/MF2iQt1WWx/mGS+0B5Wlg==', N'O3YFSVWXUP2OXSNDBXS5JC6ZUSUEHG3B', N'6a62d016-752d-4f02-89dd-685238bade0b', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'b52557e1-4520-4115-aedb-8761964e3af1', N'staff@staff.com', N'STAFF@STAFF.COM', N'staff@staff.com', N'STAFF@STAFF.COM', 0, N'AQAAAAEAACcQAAAAEGgD7NieRSlsmXMHrN2jawTyMpo6AuTBGun1ARorqgWRpWeAnUPMHDt/Dyt5JOMnIg==', N'LLVVHMNDU7XAQA5FXZ5NC2T2OMJ4UCDE', N'12663e9c-236b-420f-930d-add73a0c3888', NULL, 0, 0, NULL, 1, 0)
SET IDENTITY_INSERT [dbo].[Buku] ON 

INSERT [dbo].[Buku] ([No_Buku], [Judul_Buku], [No_Katalog], [No_Rak], [Pengarang], [Penerbit]) VALUES (6, N'Malin Kundang', 2, 2, N'Malik', N'Surya Sinar')
INSERT [dbo].[Buku] ([No_Buku], [Judul_Buku], [No_Katalog], [No_Rak], [Pengarang], [Penerbit]) VALUES (7, N'Azab Mahasiswa TA', 3, 1, N'Chandra WIjaya', N'Pelita Jaya')
SET IDENTITY_INSERT [dbo].[Buku] OFF
SET IDENTITY_INSERT [dbo].[Gender] ON 

INSERT [dbo].[Gender] ([No_Gender], [Nama_Gender]) VALUES (1, N'L')
INSERT [dbo].[Gender] ([No_Gender], [Nama_Gender]) VALUES (2, N'P')
SET IDENTITY_INSERT [dbo].[Gender] OFF
SET IDENTITY_INSERT [dbo].[Katalog_Buku] ON 

INSERT [dbo].[Katalog_Buku] ([No_Katalog], [Jenis_Katalog]) VALUES (2, N'Dongeng')
INSERT [dbo].[Katalog_Buku] ([No_Katalog], [Jenis_Katalog]) VALUES (3, N'Film')
SET IDENTITY_INSERT [dbo].[Katalog_Buku] OFF
SET IDENTITY_INSERT [dbo].[Kondisi_Buku] ON 

INSERT [dbo].[Kondisi_Buku] ([No_Kondisi], [Nama_Kondisi]) VALUES (1, N'Bagus')
INSERT [dbo].[Kondisi_Buku] ([No_Kondisi], [Nama_Kondisi]) VALUES (2, N'Jelek')
SET IDENTITY_INSERT [dbo].[Kondisi_Buku] OFF
SET IDENTITY_INSERT [dbo].[Mahasiswa] ON 

INSERT [dbo].[Mahasiswa] ([No_Anggota], [NIM], [Nama], [No_Gender], [No_HP], [Alamat]) VALUES (1, N'20180140093', N'Musafak', 1, N'08191819182', N'Belitung')
INSERT [dbo].[Mahasiswa] ([No_Anggota], [NIM], [Nama], [No_Gender], [No_HP], [Alamat]) VALUES (2, N'20180140094', N'Nissa Sabyan', 1, N'0812345678', N'banten')
INSERT [dbo].[Mahasiswa] ([No_Anggota], [NIM], [Nama], [No_Gender], [No_HP], [Alamat]) VALUES (3, N'20180140095', N'Bunga Citra Lestari', 2, N'0812345678', N'Bandung')
INSERT [dbo].[Mahasiswa] ([No_Anggota], [NIM], [Nama], [No_Gender], [No_HP], [Alamat]) VALUES (4, N'20180140096', N'Rossa', 2, N'098282828282', N'banten')
INSERT [dbo].[Mahasiswa] ([No_Anggota], [NIM], [Nama], [No_Gender], [No_HP], [Alamat]) VALUES (5, N'20180140097', N'Aura Kasih', 2, N'08191819182', N'Bogor')
SET IDENTITY_INSERT [dbo].[Mahasiswa] OFF
SET IDENTITY_INSERT [dbo].[Rak] ON 

INSERT [dbo].[Rak] ([No_Rak], [Nama_Rak]) VALUES (1, N'R001')
INSERT [dbo].[Rak] ([No_Rak], [Nama_Rak]) VALUES (2, N'R002')
SET IDENTITY_INSERT [dbo].[Rak] OFF
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 15/01/2021 10:07:27 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 15/01/2021 10:07:27 ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 15/01/2021 10:07:27 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 15/01/2021 10:07:27 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 15/01/2021 10:07:27 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 15/01/2021 10:07:27 ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 15/01/2021 10:07:27 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Buku]  WITH CHECK ADD  CONSTRAINT [FK_Buku_Katalog_Buku] FOREIGN KEY([No_Katalog])
REFERENCES [dbo].[Katalog_Buku] ([No_Katalog])
GO
ALTER TABLE [dbo].[Buku] CHECK CONSTRAINT [FK_Buku_Katalog_Buku]
GO
ALTER TABLE [dbo].[Buku]  WITH CHECK ADD  CONSTRAINT [FK_Buku_Rak] FOREIGN KEY([No_Rak])
REFERENCES [dbo].[Rak] ([No_Rak])
GO
ALTER TABLE [dbo].[Buku] CHECK CONSTRAINT [FK_Buku_Rak]
GO
ALTER TABLE [dbo].[Mahasiswa]  WITH CHECK ADD  CONSTRAINT [FK_Mahasiswa_Gender] FOREIGN KEY([No_Gender])
REFERENCES [dbo].[Gender] ([No_Gender])
GO
ALTER TABLE [dbo].[Mahasiswa] CHECK CONSTRAINT [FK_Mahasiswa_Gender]
GO
ALTER TABLE [dbo].[Peminjaman]  WITH CHECK ADD  CONSTRAINT [FK_Peminjaman_Buku] FOREIGN KEY([No_Buku])
REFERENCES [dbo].[Buku] ([No_Buku])
GO
ALTER TABLE [dbo].[Peminjaman] CHECK CONSTRAINT [FK_Peminjaman_Buku]
GO
ALTER TABLE [dbo].[Peminjaman]  WITH CHECK ADD  CONSTRAINT [FK_Peminjaman_Mahasiswa] FOREIGN KEY([No_Anggota])
REFERENCES [dbo].[Mahasiswa] ([No_Anggota])
GO
ALTER TABLE [dbo].[Peminjaman] CHECK CONSTRAINT [FK_Peminjaman_Mahasiswa]
GO
ALTER TABLE [dbo].[Pengembalian]  WITH CHECK ADD  CONSTRAINT [FK_Pengembalian_Kondisi_Buku] FOREIGN KEY([No_Kondisi])
REFERENCES [dbo].[Kondisi_Buku] ([No_Kondisi])
GO
ALTER TABLE [dbo].[Pengembalian] CHECK CONSTRAINT [FK_Pengembalian_Kondisi_Buku]
GO
ALTER TABLE [dbo].[Pengembalian]  WITH CHECK ADD  CONSTRAINT [FK_Pengembalian_Peminjaman] FOREIGN KEY([No_Peminjaman])
REFERENCES [dbo].[Peminjaman] ([No_Peminjaman])
GO
ALTER TABLE [dbo].[Pengembalian] CHECK CONSTRAINT [FK_Pengembalian_Peminjaman]
GO
USE [master]
GO
ALTER DATABASE [PERPUSTAKAAN_PAW] SET  READ_WRITE 
GO
