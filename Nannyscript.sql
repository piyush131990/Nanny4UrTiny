USE [master]
GO
/****** Object:  Database [XSpy]    Script Date: 7/2/2019 3:44:55 PM ******/
CREATE DATABASE [XSpy]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'XSpy', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\XSpy.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'XSpy_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\XSpy_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [XSpy] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [XSpy].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [XSpy] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [XSpy] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [XSpy] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [XSpy] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [XSpy] SET ARITHABORT OFF 
GO
ALTER DATABASE [XSpy] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [XSpy] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [XSpy] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [XSpy] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [XSpy] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [XSpy] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [XSpy] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [XSpy] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [XSpy] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [XSpy] SET  DISABLE_BROKER 
GO
ALTER DATABASE [XSpy] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [XSpy] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [XSpy] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [XSpy] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [XSpy] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [XSpy] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [XSpy] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [XSpy] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [XSpy] SET  MULTI_USER 
GO
ALTER DATABASE [XSpy] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [XSpy] SET DB_CHAINING OFF 
GO
ALTER DATABASE [XSpy] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [XSpy] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [XSpy] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [XSpy] SET QUERY_STORE = OFF
GO
USE [XSpy]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [XSpy]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 7/2/2019 3:44:55 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 7/2/2019 3:44:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 7/2/2019 3:44:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 7/2/2019 3:44:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 7/2/2019 3:44:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 7/2/2019 3:44:55 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 7/2/2019 3:44:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[Address] [nvarchar](250) NULL,
	[PostalCode] [int] NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 7/2/2019 3:44:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 7/2/2019 3:44:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[CategoryId] [int] NOT NULL,
	[CategoryName] [nvarchar](50) NULL,
	[ImageFileName] [nvarchar](50) NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NurseRegsitration]    Script Date: 7/2/2019 3:44:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NurseRegsitration](
	[Id] [nvarchar](450) NOT NULL,
	[Email] [nvarchar](256) NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
	[Password] [nvarchar](max) NULL,
	[Address] [nvarchar](250) NULL,
	[Contact] [nvarchar](max) NULL,
	[photo] [nvarchar](200) NULL,
	[NursingId] [nvarchar](50) NULL,
	[PCCfile] [nvarchar](200) NULL,
	[Province] [nvarchar](50) NULL,
 CONSTRAINT [PK_NurseRegsitration] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 7/2/2019 3:44:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[OrderId] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](20) NULL,
	[SessionId] [nvarchar](128) NULL,
	[OrderStatusId] [int] NULL,
	[DateOfSession] [datetime] NULL,
	[DateOfOrder] [datetime] NULL,
	[DateOfShipping] [datetime] NULL,
	[TransactionId] [int] NULL,
	[Notes] [nvarchar](255) NULL,
	[CustomerName] [nvarchar](100) NULL,
	[DeliveryAddress] [nvarchar](150) NULL,
	[Phone] [nvarchar](50) NULL,
	[EmailAddress] [nvarchar](255) NULL,
	[CardOwner] [nvarchar](50) NULL,
	[CardType] [nvarchar](20) NULL,
	[ExpiryDate] [datetime] NULL,
	[Bought] [bit] NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderStatus]    Script Date: 7/2/2019 3:44:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderStatus](
	[OrderStatusId] [int] NOT NULL,
	[Description] [nvarchar](255) NULL,
 CONSTRAINT [PK_OrderStatus] PRIMARY KEY CLUSTERED 
(
	[OrderStatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Premium]    Script Date: 7/2/2019 3:44:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Premium](
	[PremiumId] [int] IDENTITY(1,1) NOT NULL,
	[PremiumTypeId] [int] NULL,
	[DateOfBuy] [datetime] NULL,
	[DateOfExpire] [datetime] NULL,
	[IsActive] [bit] NULL,
	[UserId] [nvarchar](450) NULL,
 CONSTRAINT [PK_Premium] PRIMARY KEY CLUSTERED 
(
	[PremiumId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PremiumTypes]    Script Date: 7/2/2019 3:44:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PremiumTypes](
	[PremiumTypeId] [int] IDENTITY(1,1) NOT NULL,
	[PremiumType] [varchar](50) NULL,
	[Price] [decimal](18, 2) NULL,
	[Image] [varchar](256) NULL,
 CONSTRAINT [PK_PremiumTypes] PRIMARY KEY CLUSTERED 
(
	[PremiumTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 7/2/2019 3:44:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [nvarchar](250) NOT NULL,
	[CategoryId] [int] NULL,
	[Name] [nvarchar](50) NULL,
	[UnitCost] [float] NULL,
	[Description] [nvarchar](max) NULL,
	[ImageFileName] [nvarchar](50) NULL,
	[Password] [nvarchar](max) NULL,
	[pccImage] [nvarchar](max) NULL,
	[IdImage] [nvarchar](max) NULL,
	[FirstAidImage] [nvarchar](max) NULL,
	[Prize] [int] NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TempCart]    Script Date: 7/2/2019 3:44:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TempCart](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [nvarchar](50) NULL,
	[ProductName] [nvarchar](50) NULL,
	[UserId] [nvarchar](450) NULL,
	[ProductCount] [int] NULL,
	[Datebook] [datetime] NULL,
	[DateEnd] [datetime] NULL,
	[Productnewid] [nvarchar](50) NULL,
	[Payed] [nvarchar](50) NULL,
 CONSTRAINT [PK_TempCart] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'00000000000000_CreateIdentitySchema', N'2.0.1-rtm-125')
INSERT [dbo].[AspNetRoles] ([Id], [ConcurrencyStamp], [Name], [NormalizedName]) VALUES (N'1', NULL, N'Admin', N'Administrator')
INSERT [dbo].[AspNetRoles] ([Id], [ConcurrencyStamp], [Name], [NormalizedName]) VALUES (N'2', NULL, N'User', N'User')
INSERT [dbo].[AspNetRoles] ([Id], [ConcurrencyStamp], [Name], [NormalizedName]) VALUES (N'3', NULL, N'Gold', N'Gold')
INSERT [dbo].[AspNetRoles] ([Id], [ConcurrencyStamp], [Name], [NormalizedName]) VALUES (N'4', NULL, N'Silver', N'Silver')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'4904b6c9-87fd-4435-b147-82886d3b42f0', N'4')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'6252267b-cc87-4647-ae55-7b820e7ad2c4', N'3')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'7bbe9340-b71b-42a2-9323-e49e7e56e5b1', N'4')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'b867ffeb-bbbb-434f-a41d-0d913819f2ed', N'1')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'ecdc1b7d-2cb9-4252-bef5-31054cb8bebe', N'3')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'fbace232-79f2-484d-870e-63030ed7e152', N'3')
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName], [Address], [PostalCode]) VALUES (N'3056d1b8-a02a-47c1-8e43-f779e95c40eb', 0, N'8d03a753-975d-4bf4-90d3-7d686bde930e', N'wer@wer.com', 0, 1, NULL, N'WER@WER.COM', N'WER@WER.COM', N'AQAAAAEAACcQAAAAEKTVP4ilnudCsWWOqloj5vr8/n9VJsY+y4tmKli55rp3E3TAiRQg0Aw1vu2nIssw1g==', N'6565656565', 0, N'55e87ed6-60fa-4a62-9729-e1deb3992648', 0, N'wer@wer.com', NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName], [Address], [PostalCode]) VALUES (N'3d610991-080f-4bf7-97fc-8100a2a14e22', 0, N'5444c4cd-6467-4232-a6ac-57bbd66af83c', N'shar1709@manukaumail.com', 0, 1, NULL, N'SHAR1709@MANUKAUMAIL.COM', N'SHAR1709@MANUKAUMAIL.COM', N'AQAAAAEAACcQAAAAEJijKXiPMa/aCVgo1yUSSkmFH6CmOtjaJaWUYacek/mQdePixDqHc0xJzAbhV0TJXA==', N'1231231231', 0, N'e621cef8-9a6d-4534-a13a-35a680e66367', 0, N'shar1709@manukaumail.com', NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName], [Address], [PostalCode]) VALUES (N'3e8e557a-04ab-4052-afb1-480883b58169', 0, N'eceac8bb-055f-4aef-8cfa-617ddb97075b', N'admin@testmail.com', 0, 1, NULL, N'ADMIN@TESTMAIL.COM', N'ADMIN@TESTMAIL.COM', N'AQAAAAEAACcQAAAAEP7DpyDnOXrOX+3JMmMgxWQfK9c4usbaaJLJhV+CmbeTPomsIhNo1lOX9NmCtSe8FA==', NULL, 0, N'05e4ee75-a078-41b4-91bb-ea4752b9d60c', 0, N'admin@testmail.com', NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName], [Address], [PostalCode]) VALUES (N'450fc45e-db67-4cd0-9f0e-69e9423c1a59', 0, N'5d50220c-c8c8-4086-b369-00b50f3b91c2', N'alpha@alpha.com', 0, 1, NULL, N'ALPHA@ALPHA.COM', N'ALPHA@ALPHA.COM', N'AQAAAAEAACcQAAAAEBx/JBhsJLxHTiHHxaV9r+JlUKZRbCCtYR734sgrMds2qmDLxkaRCA4AMZ9PGUPIeg==', N'0223569867', 0, N'9ba2ead5-8026-4211-ab6f-021b54746927', 0, N'alpha@alpha.com', NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName], [Address], [PostalCode]) VALUES (N'4904b6c9-87fd-4435-b147-82886d3b42f0', 0, N'e6227638-7ce5-4931-96a5-f89612400a20', N'active@silver.com', 0, 1, NULL, N'ACTIVE@SILVER.COM', N'ACTIVE@SILVER.COM', N'AQAAAAEAACcQAAAAEAZHgMsDZpueeGwx09usvlfAfMO9zMguhpAw1QUdzjilowp0x0QJkOB0Nh21/flHvQ==', NULL, 0, N'3d5a862e-8dc5-4c03-adc1-2d8f9f5ae56b', 0, N'active@silver.com', NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName], [Address], [PostalCode]) VALUES (N'542ebf62-5007-4e6f-8f9a-93a5dd3ab590', 0, N'3178fbef-bf0c-4174-a83e-300bab578b74', N'admin@testmail44.com', 0, 1, NULL, N'ADMIN@TESTMAIL44.COM', N'ADMIN@TESTMAIL44.COM', N'AQAAAAEAACcQAAAAEDANxTyvG+M8ygIfqQJZm6YSiWU3VR6pcvHGzNAcKpep3DI/4qI8fCp23DZczUuNog==', N'1234567', 0, N'919cc955-fb27-4ac8-8908-652e3edcf89d', 0, N'admin@testmail44.com', NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName], [Address], [PostalCode]) VALUES (N'56570f47-2c52-4902-a271-ce163e2a0c3d', 0, N'ed02cbc5-e615-41b5-a583-fb07ae4ce856', N'pk@123456.com', 0, 1, NULL, N'PK@123456.COM', N'PK@123456.COM', N'AQAAAAEAACcQAAAAEMjvz9QZiC3AJ6Uiw4Ss7vsxJXV37ltanGqhlVadoMl4X0avUCrN8h5t1tdG4DDQ7Q==', N'1231231231', 0, N'47158638-0653-4407-8618-3b6959461f13', 0, N'pk@123456.com', NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName], [Address], [PostalCode]) VALUES (N'6252267b-cc87-4647-ae55-7b820e7ad2c4', 0, N'867a1133-6040-4124-ba3b-2bfcaa17dc09', N'date@gold.com', 0, 1, NULL, N'DATE@GOLD.COM', N'DATE@GOLD.COM', N'AQAAAAEAACcQAAAAEJqPWgnjpM7HkmiKukuqZAblJM0/TyCWo5eXB4uX1zN+qHhw3+SRVrjuOGct7+SeHw==', NULL, 0, N'0c2d75ab-fc91-48aa-8ba0-760118b3af45', 0, N'date@gold.com', NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName], [Address], [PostalCode]) VALUES (N'7bbe9340-b71b-42a2-9323-e49e7e56e5b1', 0, N'3f647b26-a60c-486b-956e-c67c99f4a44b', N'test@silver.com', 0, 1, NULL, N'TEST@SILVER.COM', N'TEST@SILVER.COM', N'AQAAAAEAACcQAAAAEO2Zyl5v7dqgsSJJdPkf8LsD7+I0jR5DOwAhCK3yjoGK4yVA5Retx4sDQbVYOyQdyw==', NULL, 0, N'39b6d972-41ad-4a56-ade7-9452857daae1', 0, N'test@silver.com', NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName], [Address], [PostalCode]) VALUES (N'8bf541a3-6041-4127-a2a7-7de499ae5928', 0, N'083debc0-3d64-4f3e-9ab5-133197661b8c', N'pink@pink.com', 0, 1, NULL, N'PINK@PINK.COM', N'PINK@PINK.COM', N'AQAAAAEAACcQAAAAEKqbN/roWrJeiYRqllrJsj9GY1r5UKrdjE9YYSMbw+2V2JCqeVoWQgQXDhgksBTnBQ==', N'6565656565', 0, N'0c35f6df-fca8-48df-9b32-5eb15d7b08c5', 0, N'pink@pink.com', NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName], [Address], [PostalCode]) VALUES (N'92f1f4e6-3cd0-4ec1-9852-36c23a68cb5d', 0, N'8317b33e-653f-4529-8048-df7e36872bbd', N'aaa@aaa.com', 0, 1, NULL, N'AAA@AAA.COM', N'AAA@AAA.COM', N'AQAAAAEAACcQAAAAEBzfAaxUm0On5zzUjo635jgX/0adp7RL4wHQTmsdkxstugzVJNqlwiDh4CI2/b8BVw==', N'1231231231', 0, N'eac7d1f6-03d9-4da0-8008-6de078f09961', 0, N'aaa@aaa.com', NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName], [Address], [PostalCode]) VALUES (N'b18d47e7-0056-4a24-bbb9-f78e9d62d0c5', 0, N'117882b1-d9e3-4378-876d-ef67aeffa70e', N'pop@pop.com', 0, 1, NULL, N'POP@POP.COM', N'POP@POP.COM', N'AQAAAAEAACcQAAAAECTKHRb8+qZdaWC6pJ0YEGzvCzqKtz2xDp97b1GnY9uLcB2UofTujUNhhMU98FuPpA==', N'6565656565', 0, N'940df566-54ca-42af-a703-4b5b8b345b1f', 0, N'pop@pop.com', NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName], [Address], [PostalCode]) VALUES (N'b867ffeb-bbbb-434f-a41d-0d913819f2ed', 0, N'ef892acc-a419-4298-84b4-ae35f878bf98', N'admin@kindred.com', 0, 1, NULL, N'ADMIN@KINDRED.COM', N'ADMIN@KINDRED.COM', N'AQAAAAEAACcQAAAAEKt96fvh2ubSy6kzpVvP80SC6+2m63KDRvtKl6/6U0XB1m9yxqUvIeltO5tBOEtBdg==', N'6565656565', 0, N'8b52bc26-eaac-42ca-9849-436ee6ef093c', 0, N'admin@kindred.com', NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName], [Address], [PostalCode]) VALUES (N'c572b9af-82d4-4591-a76c-56cd836b5184', 0, N'585c955a-cb17-462f-9fe7-c1955e4174f5', N'tot@tot.com', 0, 1, NULL, N'TOT@TOT.COM', N'TOT@TOT.COM', N'AQAAAAEAACcQAAAAEFKdQv0r83G11jVGN0qGgGYLFCudiaVe9YE/bn1BeEeF6sfbhaiQCUtoo7XpSq0V5w==', N'6565656565', 0, N'c64cbc0e-6cf7-4b38-9ecc-d03b4a572078', 0, N'tot@tot.com', NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName], [Address], [PostalCode]) VALUES (N'dc5eed5f-a480-490f-9b30-cd411f77da78', 0, N'4feb0675-a666-4417-bba9-b3874262b7a2', N'toot@toot.com', 0, 1, NULL, N'TOOT@TOOT.COM', N'TOOT@TOOT.COM', N'AQAAAAEAACcQAAAAEPxcFXBhvYuu8dIKIBZt4U1qHQgnYacFyygc41Ti4S7UCADFZinwr+uvoh1x2VhPnw==', N'123345566', 0, N'26b714e3-a3ba-4152-8a66-a85fb148f7b9', 0, N'toot@toot.com', NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName], [Address], [PostalCode]) VALUES (N'e1caa819-972d-44c2-8ff2-0286cab258c8', 0, N'48bf8b58-a907-4e6f-a875-588df869c527', N'we@we.com', 0, 1, NULL, N'WE@WE.COM', N'WE@WE.COM', N'AQAAAAEAACcQAAAAEHwSgTY9UNVN+Gi330XaszDDYD5XoPyw34BvW3lHyivOw1zAfFxsYaEh/hGL2kEvhA==', N'6565656565', 0, N'69a78ad8-b332-401f-ba41-036ec08b90bb', 0, N'we@we.com', NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName], [Address], [PostalCode]) VALUES (N'ecdc1b7d-2cb9-4252-bef5-31054cb8bebe', 0, N'77ecac40-f892-4631-877c-e11a395db2d5', N'Ashish@manukaumail.com', 0, 1, NULL, N'ASHISH@MANUKAUMAIL.COM', N'ASHISH@MANUKAUMAIL.COM', N'AQAAAAEAACcQAAAAEN9NOxHlCC2Beue0VPb1DNWWF/GBWI/g6nPvWlEQsCBjVZk6T8aoUXRPCL9dC5bwvQ==', NULL, 0, N'd2c4b4cf-0184-4de9-a907-9dd3fbc1d8f8', 0, N'Ashish@manukaumail.com', NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName], [Address], [PostalCode]) VALUES (N'fb3388a4-2489-49de-a2fe-e857d316436a', 0, N'1eec4d27-444a-4fbf-a9fd-f41ed5630d56', N'admin@testmail23.com', 0, 1, NULL, N'ADMIN@TESTMAIL23.COM', N'ADMIN@TESTMAIL23.COM', N'AQAAAAEAACcQAAAAENeTjRc65NWU/EVVhyJ/7Bn75/kvcSgGrxLi4fGyIs27GfAvm7FRPCSx+tTTddVOng==', NULL, 0, N'94b18cc8-6c40-4d36-b212-01a3a5865b70', 0, N'admin@testmail23.com', NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName], [Address], [PostalCode]) VALUES (N'fbace232-79f2-484d-870e-63030ed7e152', 0, N'8eeb3de0-b804-4bd1-aab7-c492780cacc4', N'test@gold.com', 0, 1, NULL, N'TEST@GOLD.COM', N'TEST@GOLD.COM', N'AQAAAAEAACcQAAAAEHIiKA6sjzYeMp3T85N5j4YT1aDSJ2OsiO4EHnzUUC8PqM5XIXlPVnvt6ZlNGS3U1g==', NULL, 0, N'f9a0a639-0167-40d0-8465-8c9aff9bdba5', 0, N'test@gold.com', NULL, NULL)
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [ImageFileName]) VALUES (14, N'Northland', N'NORTHLAND.jpg')
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [ImageFileName]) VALUES (15, N'Auckland', N'Auckland.jpg')
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [ImageFileName]) VALUES (16, N'Waikato', N'WAIKATO.jpg')
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [ImageFileName]) VALUES (17, N'Bay of Plenty', N'2.jpg')
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [ImageFileName]) VALUES (18, N'Gisborne', N'3.jpg')
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [ImageFileName]) VALUES (19, N'Hawke''s Bay', N'HAWKY''sBAY.jpg')
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [ImageFileName]) VALUES (20, N'Taranaki', N'4.jpg')
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [ImageFileName]) VALUES (21, N'Manawatu-Wanganui', N'MANAWATU.jpg')
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [ImageFileName]) VALUES (22, N'Wellington', N'WELLINGTON.jpg')
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [ImageFileName]) VALUES (23, N'Tasman', N'3.jpg')
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [ImageFileName]) VALUES (24, N'Nelson', N'Nelson.jpg')
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [ImageFileName]) VALUES (25, N'Marlborough', N'marl.jpg')
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [ImageFileName]) VALUES (26, N'West Coast', N'2.jpg')
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [ImageFileName]) VALUES (27, N'Canterburry', N'Canteburry.jpg')
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [ImageFileName]) VALUES (28, N'Otago', N'Otago.jpg')
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [ImageFileName]) VALUES (29, N'Southland', N'1.jpg')
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [Bought]) VALUES (1158, NULL, N'3gx1yz452i34mzm34gljubnr', 0, CAST(N'2008-07-05T16:30:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Orders] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [Bought]) VALUES (1159, NULL, N'k4q4pejkru3ozk3rd3ylv355', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Orders] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [Bought]) VALUES (1160, NULL, N'w1gmbifw01kqviqzm12nw245', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Orders] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [Bought]) VALUES (1161, NULL, N'p4yzmlzeicxvyxr4gx2k2vz2', 4, NULL, NULL, NULL, 10000583, N'ERROR: Login is invalid.', N'NNNNN', N'BBBBBB', N'123456', N'a@b.c', N'MMMMMM', N'V', CAST(N'2009-09-12T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Orders] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [Bought]) VALUES (1162, NULL, N'lgshhejl4ayd02mdxrbid2ys', 4, NULL, NULL, NULL, 10001041, N'ERROR: Login is invalid.', N'John', N'Testing2011', N'222222', N'a@b.c', N'Mr Test', N'V', CAST(N'2011-12-03T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Orders] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [Bought]) VALUES (1163, NULL, N'dgbd44zcj4fgy0ltlcz1rhwm', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Orders] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [Bought]) VALUES (1164, NULL, N'kbfs1ecbz5fw2pek2m4axjgy', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Orders] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [Bought]) VALUES (1165, NULL, N'q0ik0as5mq21hl5kqr030aqv', 3, NULL, NULL, NULL, 10001050, N'PASSES FICTIONAL TEST (Fails real test on ''ERROR: Please make sure the card number you''ve entered matched the card type you selected.''.', N'John Testing', N'111 Imaginary Rd, Henderson', N'1111111', N'a@b.c', N'John Testing', N'V', CAST(N'1931-05-14T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Orders] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [Bought]) VALUES (1166, NULL, N'c3mcq11h21hs4bun4zlw0wjj', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Orders] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [Bought]) VALUES (1167, NULL, N'xqpwk44jdgy5pol1owkulynr', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Orders] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [Bought]) VALUES (1168, NULL, N'y2mzoexkqls0xbaev1ol200e', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Orders] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [Bought]) VALUES (1169, NULL, N'cgl0w1x1xkc1ygqymznouz2p', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Orders] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [Bought]) VALUES (1170, NULL, N'fu0jy1hngrm0o4lfvphnotds', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Orders] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [Bought]) VALUES (1171, NULL, N'ojyd3tztuo54h0q4sy01dbuw', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Orders] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [Bought]) VALUES (1172, NULL, N'rwthm32ne50fiqzwhhlxkvai', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Orders] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [Bought]) VALUES (1173, NULL, N'w1hephycaa4bnadmsevmo4wt', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Orders] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [Bought]) VALUES (1174, NULL, N'o1xis3dmnjvlgtgaiv1oci0d', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Orders] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [Bought]) VALUES (1175, NULL, N'krqkef2etm1okeivxvtrelfc', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Orders] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [Bought]) VALUES (1176, NULL, N'lqg25bno3s2nrngy3hspopmt', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Orders] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [Bought]) VALUES (1177, NULL, N'uqm1l35fdiewgoge13dwswv2', 3, NULL, NULL, NULL, 10001185, N'PASSES FICTIONAL TEST (Fails real test on ''ERROR: Please make sure the card number you''ve entered matched the card type you selected.''.', N'', N'', N'', N'', N'Mr Tester', N'V', CAST(N'1931-01-14T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Orders] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [Bought]) VALUES (1178, NULL, N'lebanrn5urlc4sedperru2hy', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Orders] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [Bought]) VALUES (1179, NULL, N'2kmdbuupkau045veiztty2f5', 3, NULL, NULL, NULL, 10001186, N'PASSES FICTIONAL TEST (Fails real test on ''ERROR: Please make sure the card number you''ve entered matched the card type you selected.''.', N'', N'', N'', N'', N'vv', N'V', CAST(N'1931-08-14T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Orders] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [Bought]) VALUES (1180, NULL, N'rqmscdork13arjbwuis1bhca', 3, NULL, NULL, NULL, 10001194, N'PASSES FICTIONAL TEST (Fails real test on ''ERROR: Please make sure the card number you''ve entered matched the card type you selected.''.', N'John Testing ', N'120921', N'9999999', N'a@b.c', N'Mr Tester', N'V', CAST(N'1931-12-12T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Orders] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [Bought]) VALUES (1181, NULL, N'w0xxpryimvqqt1fm3j1tuo1z', 3, NULL, NULL, NULL, 10001231, N'PASSES FICTIONAL TEST (Fails real test on ''ERROR: Please make sure the card number you''ve entered matched the card type you selected.''.', N'John Testing', N'120921 after add to SQL', N'9999999', N'a@b.c', N'Mr Tester', N'V', CAST(N'1931-12-14T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Orders] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [Bought]) VALUES (1182, NULL, N'w0xxpryimvqqt1fm3j1tuo1z', 3, NULL, NULL, NULL, 10001235, N'PASSES FICTIONAL TEST (Fails real test on ''ERROR: Please make sure the card number you''ve entered matched the card type you selected.''.', N'John Testing', N'2nd order on the same session', N'9999999', N'a@b.c', N'Mr Tester', N'V', CAST(N'1931-12-14T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Orders] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [Bought]) VALUES (1183, NULL, N'pzcbni4xn5mwemprnt25p3up', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Orders] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [Bought]) VALUES (1184, NULL, N'sbghwxdeesh5vc0tko3bsk1t', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Orders] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [Bought]) VALUES (1185, NULL, N'c11w2hb514xbay5n44rdojry', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Orders] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [Bought]) VALUES (1186, NULL, N'2bbocyihg0lhkay12by0u4s3', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Orders] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [Bought]) VALUES (1187, NULL, N'2tzbkwjam0rw1w52e3ihj55x', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Orders] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [Bought]) VALUES (1188, NULL, N'ipfdwtu53kyqfo5hhkr1xtlr', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Orders] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [Bought]) VALUES (1189, NULL, N'cw3tsbrqp4nugqf22ggk3pjg', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Orders] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [Bought]) VALUES (1190, NULL, N'qcf2xv3saeyxxsrvjz2gckl3', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Orders] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [Bought]) VALUES (1191, NULL, N'yykk4vaqmlb1jmz0rrdam0zt', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Orders] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [Bought]) VALUES (1192, NULL, N't3u05ql5kna3iwaqmsfosl5g', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Orders] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [Bought]) VALUES (1193, NULL, N't3u05ql5kna3iwaqmsfosl5g', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Orders] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [Bought]) VALUES (1194, NULL, N'p0govqjl2abehr11dlf3ktav', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Orders] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [Bought]) VALUES (1195, NULL, N'kxhglyfdt32kmseutr0azy0c', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Orders] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [Bought]) VALUES (1196, NULL, N'qjix3dcuxmkdjd5iot3nyeoh', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Orders] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [Bought]) VALUES (1197, NULL, N'gigoh0mqjqsppznj1c21ohgg', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Orders] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [Bought]) VALUES (1198, NULL, N'5cx0p1xh2y0izeboig1hl4m0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Orders] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [Bought]) VALUES (1199, NULL, N'ns412xbjvo0lf5xekxqr5dpp', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Orders] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [Bought]) VALUES (1200, NULL, N'yiir3mx0ollfrvowftzifw4v', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Orders] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [Bought]) VALUES (1201, NULL, N'1sim30jid2hrupm1mybhiehl', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Orders] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [Bought]) VALUES (1202, NULL, N't0i0j5q1tuio4llc0rt1hgok', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Orders] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [Bought]) VALUES (1203, NULL, N'ohti0ub0y3sbgmjvbpwumcmz', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Orders] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [Bought]) VALUES (1204, NULL, N'drmbbv03bpjt3qwgwekn1l5d', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Orders] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [Bought]) VALUES (1205, NULL, N'va1wdaaoejfs1mum2qkkmp5a', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Orders] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [Bought]) VALUES (1206, NULL, N'lw2qvqdn4ols1gp1b3d1tyvb', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Orders] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [Bought]) VALUES (1207, NULL, N'00u3rr51v3agcgedr3kowseh', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Orders] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [Bought]) VALUES (1208, NULL, N'otbnlngjrkbpaoirltqif5yk', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Orders] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [Bought]) VALUES (1209, NULL, N'fmhonjoqfnbh140ovpgnhydz', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Orders] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [Bought]) VALUES (1210, NULL, N'zvrxxhcb1tmiihqwooodfhqo', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Orders] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [Bought]) VALUES (1211, NULL, N'io4ihqzt5lcsbpvmy5duz2di', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Orders] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [Bought]) VALUES (1212, NULL, N'2djzogyp4wrvqm040lqqu3h5', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Orders] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [Bought]) VALUES (1213, NULL, N'punfoom20z1cklqlcebteci1', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Orders] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [Bought]) VALUES (1214, NULL, N'1vjlmn215jngl3quzmyqfw0e', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Orders] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [Bought]) VALUES (1215, NULL, N'i1r5r2oyyheetkvndq2ijmgo', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Orders] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [Bought]) VALUES (1216, NULL, N'zkqdtu2vp5welyg1nx0hvsyk', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Orders] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [Bought]) VALUES (1217, NULL, N'gtal1bsrnettr4n4nlszke0u', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Orders] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [Bought]) VALUES (1218, NULL, N'3gweujodd0nkw2zxdsfixpwi', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Orders] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [Bought]) VALUES (1219, NULL, N'xdwvprvbw3yxfpul1c3e4hmt', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Orders] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [Bought]) VALUES (1220, NULL, N's1jk1iyuyt0ng0h4axenr5i1', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Orders] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [Bought]) VALUES (1221, NULL, N'vusd2vmqihaxvsfs3wcg2gof', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Orders] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [Bought]) VALUES (1222, NULL, N'ztb5nnhsdtn3e1aci43r4ekg', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Orders] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [Bought]) VALUES (1223, NULL, N'0xvza3xg1ccbz3y3akofkyyc', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Orders] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [Bought]) VALUES (1224, NULL, N'pdvi4mpvsasrq1rz4lxmmxkt', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Orders] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [Bought]) VALUES (1225, NULL, N'rlovsx4j0kmdcw2zgd1xlvgx', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Orders] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [Bought]) VALUES (1226, NULL, N'5zbcnqk50dhkhvylzwtp10y0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Orders] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [Bought]) VALUES (1227, NULL, N'wg0qpkxn4ky3qktvji00jwxu', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Orders] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [Bought]) VALUES (1228, NULL, N'im1c435ngb4lzizj0vi5zr0c', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Orders] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [Bought]) VALUES (1229, NULL, N'tr4pqejraagiz2cjk1f21wvt', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Orders] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [Bought]) VALUES (1230, NULL, N'lohz4qskkagyqbwwv11vikn0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Orders] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [Bought]) VALUES (1231, NULL, N'2tpufrwasmdhzp0ychhaypyf', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Orders] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [Bought]) VALUES (1232, NULL, N'ggskfzhwm4hvunacyjjqfy2a', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Orders] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [Bought]) VALUES (1233, NULL, N'i3irry3j2wbwpuradpdcu1pq', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Orders] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [Bought]) VALUES (1234, NULL, N'j4goqedsseallapeeiclra0v', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Orders] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [Bought]) VALUES (1235, NULL, N'khe0i1huxfgsqnbzt0bpghuw', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Orders] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [Bought]) VALUES (1236, NULL, N'ujp3hbl5b2dhw0gawaxhgclb', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Orders] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [Bought]) VALUES (1237, NULL, N'qrgcdltulu3uhv0zdkxycg4w', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Orders] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [Bought]) VALUES (1238, NULL, N'133flewhzecqxxrzcdeinp2i', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Orders] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [Bought]) VALUES (1239, NULL, N'2bmrvcbbk0booxgccbayiw5p', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Orders] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [Bought]) VALUES (1240, NULL, N'uo4wdogfdr0lvshc4uavsy25', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Orders] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [Bought]) VALUES (1241, NULL, N'3bruhvh2hlcey25mp5thcp2u', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Orders] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [Bought]) VALUES (1242, NULL, N'coax23nh4o53lxq2wlky2523', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Orders] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [Bought]) VALUES (1243, NULL, N'xureexjqlx1p3xu4ygsixi5y', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Orders] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [Bought]) VALUES (1244, NULL, N'xrns4c3y0kfyo5pkkjpfphls', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Orders] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [Bought]) VALUES (1245, NULL, N'o1tl5pkhdxoswr4hvzsedj3h', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Orders] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [Bought]) VALUES (1246, NULL, N'niap0ahcr0q0asy1f3ge2ume', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Orders] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [Bought]) VALUES (1247, NULL, N'q5hrllwvbvmpjde2zj1pf1w3', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Orders] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [Bought]) VALUES (1248, NULL, N'0pmyzmxpqxnnqjqpoi1m4gho', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Orders] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [Bought]) VALUES (1249, NULL, N'bjdvhd1amhnn0b0w5pnduzqt', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Orders] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [Bought]) VALUES (1250, NULL, N'ryt4oefs1me4j3urzqnhj1gd', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Orders] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [Bought]) VALUES (1251, NULL, N'2hsdrsigujpo2j4tieows3kz', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Orders] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [Bought]) VALUES (1252, NULL, N'kukdpxhfnyxpdygpimm3ghjc', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Orders] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [Bought]) VALUES (1253, NULL, N'szhg3pxtfcokzskt5cfukih3', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Orders] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [Bought]) VALUES (1254, NULL, N'asajrqqhnoix5beteurtz32q', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Orders] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [Bought]) VALUES (1255, NULL, N'3dsakmlqx5m0jbod23ckr2re', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Orders] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [Bought]) VALUES (1256, NULL, N'eqpj4uv0xrhxnje1bd5fveoj', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[Orders] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [Bought]) VALUES (1257, NULL, N'pmr5b33drrvbqeaj4mhtqo10', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Orders] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [Bought]) VALUES (1258, NULL, N'lspwxrrlcflhotejegbmlurq', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Orders] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [Bought]) VALUES (1259, NULL, N'ogaagxrmk3rfssbsxi5a53ng', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Orders] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [Bought]) VALUES (1260, NULL, N'qvvnditdpvmebwm1440j0ier', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Orders] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [Bought]) VALUES (1261, NULL, N'h23aou3h2gmqnevpgdvtsmck', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Orders] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [Bought]) VALUES (1262, NULL, N'wu0aev0wpyodvuxmfqw3hrgs', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Orders] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [Bought]) VALUES (1263, NULL, N'pmplmgwj3bt1xwfnmpzkxy55', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Orders] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [Bought]) VALUES (1264, NULL, N'2avdt1uxj2gt2olr4klxtsom', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Orders] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [Bought]) VALUES (1265, NULL, N'i2mn1aj4ppltec4hkudyikk1', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Orders] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [Bought]) VALUES (1266, NULL, N'5af5q3wmcpe4owz1u4fdc424', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Orders] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [Bought]) VALUES (1267, NULL, N'ognuu3hddjx2xvkxj1lzwlrx', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Orders] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [Bought]) VALUES (1268, NULL, N'2bb5zwvmnzowamesgx02hjm1', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Orders] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [Bought]) VALUES (1269, NULL, N'man0utrkczp0lzot3pfzcpfv', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Orders] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [Bought]) VALUES (1270, NULL, N'jzqogybucmazn4sttoq055hz', 3, NULL, NULL, NULL, 10001638, N'PASSES FICTIONAL TEST (Fails real test on ''ERROR: Please make sure the card number you''ve entered matched the card type you selected.''.', N'aa', N'aa aa aaa aa', N' ', N' ', N'aa', N'Visa', NULL, 1)
INSERT [dbo].[Orders] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [Bought]) VALUES (1271, NULL, N'e0juguidk2am1qlyzi42kj00', 3, NULL, NULL, NULL, 10001641, N'PASSES FICTIONAL TEST (Fails real test on ''ERROR: Please make sure the card number you''ve entered matched the card type you selected.''.', N'John Tester', N'111 Imaginary Rd Henderson NZ 0612', N' ', N' ', N'Mr Tester', N'Visa', NULL, 1)
INSERT [dbo].[Orders] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [Bought]) VALUES (1272, NULL, N'trmpx4t4lu2haytjgekey2uu', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Orders] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [Bought]) VALUES (1273, NULL, N'uyus3fhjzrukaynipaoqv5dc', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Orders] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [Bought]) VALUES (1274, NULL, N'ur5dlrzccvmqa0biuwloncta', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Orders] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [Bought]) VALUES (1275, NULL, N'3maofg4lzel1fbwbkd2tev3q', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Orders] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [Bought]) VALUES (1276, NULL, N'u521zktr1oplw2jbnx15qc40', 3, NULL, NULL, NULL, 1000003, N'SUCCESS', N'Mr Tester', N'555 Imaginary Rd Henderson New Zealand 0612', N' ', N' ', N'Mr Tester', N'Visa', NULL, 1)
INSERT [dbo].[Orders] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [Bought]) VALUES (1277, NULL, N'4rkwxvgkicbrvcuvauur1j1i', 3, NULL, NULL, NULL, 1000004, N'SUCCESS', N'Mr Tester', N'555 Imaginary Rd Henderson New Zealand 0612', N' ', N' ', N'Mr Tester', N'Visa', NULL, 1)
INSERT [dbo].[Orders] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [Bought]) VALUES (1278, NULL, N'qna1trkaiefwbp21fkekr53z', 3, NULL, NULL, NULL, 1000005, N'SUCCESS', N'Mr Tester', N'555 Imaginary Rd Henderson New Zealand 0612', N' ', N' ', N'Mr Tester', N'Visa', NULL, 1)
INSERT [dbo].[Orders] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [Bought]) VALUES (1279, NULL, N'oqkrgyiypruf402xl01gsmot', 3, NULL, NULL, NULL, 1000102, N'SUCCESS', N'Mr Tester', N'555 Imaginary Rd Henderson New Zealand 0612', N' ', N' ', N'Mr Tester', N'Visa', NULL, 1)
INSERT [dbo].[Orders] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [Bought]) VALUES (1280, NULL, N'oqkrgyiypruf402xl01gsmot', 3, NULL, NULL, NULL, 1000103, N'SUCCESS', N'Mr Tester', N'555 Imaginary Rd Henderson New Zealand 0612', N' ', N' ', N'Mr Tester', N'Visa', NULL, 1)
INSERT [dbo].[Orders] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [Bought]) VALUES (1281, NULL, N'ctkohie0sewayjxy5stsddqy', 3, NULL, NULL, NULL, 1000104, N'SUCCESS', N'Mr Tester', N'555 Imaginary Rd Henderson New Zealand 0612', N' ', N' ', N'Mr Tester', N'Visa', NULL, 1)
INSERT [dbo].[Orders] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [Bought]) VALUES (1282, NULL, N'vlceuffr44ld2pi45qbb00on', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Orders] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [Bought]) VALUES (1283, NULL, N'cf0azx2120m3zamhtigs5nus', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Orders] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [Bought]) VALUES (1284, NULL, N'69556409-00f3-d368-740f-1a3d07373793', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Orders] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [Bought]) VALUES (1285, NULL, N'1fb90841-54a0-c0b3-86eb-8e7cf1723d79', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Orders] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [Bought]) VALUES (1286, NULL, N'ea0b5ba3-01c6-6876-6cc6-4d093d63c9b2', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Orders] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [Bought]) VALUES (2286, NULL, N'f0b33697-99b7-6f94-6131-b6ed594d0153', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Orders] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [Bought]) VALUES (2287, NULL, N'5966a5db-5176-c705-dc3e-c3a3b80a8ae8', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Orders] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [Bought]) VALUES (2288, NULL, N'6a2162cb-2369-9413-b502-2fa8edbc30a1', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Orders] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [Bought]) VALUES (2289, NULL, N'e6415e16-ccfc-2e88-4912-ea2dc520a017', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Orders] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [Bought]) VALUES (2290, NULL, N'b3f03ec2-5688-c196-7204-35d47a520441', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Orders] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [Bought]) VALUES (2291, NULL, N'd3c09649-cb60-1509-ea5d-56eae9c7ee61', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Orders] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [Bought]) VALUES (2292, NULL, N'76ab8d3d-ad4f-63cf-df1a-4acffa5c47e2', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Orders] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [Bought]) VALUES (2293, NULL, N'baa13388-838a-50cb-4911-bb2813740cd2', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Orders] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [Bought]) VALUES (2294, NULL, N'368cfa70-6b6f-1504-5669-cd52cb7bd9d5', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Orders] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [Bought]) VALUES (2295, NULL, N'7a8f7542-93d9-5a5d-bc9c-cf63f5afbf34', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Orders] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [Bought]) VALUES (2296, NULL, N'3e8e557a-04ab-4052-afb1-480883b58169', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Orders] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [Bought]) VALUES (2297, NULL, N'6252267b-cc87-4647-ae55-7b820e7ad2c4', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Orders] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [Bought]) VALUES (2298, NULL, N'7bbe9340-b71b-42a2-9323-e49e7e56e5b1', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Orders] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [Bought]) VALUES (2299, NULL, N'fbace232-79f2-484d-870e-63030ed7e152', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Orders] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [Bought]) VALUES (2300, NULL, N'ecdc1b7d-2cb9-4252-bef5-31054cb8bebe', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Orders] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [Bought]) VALUES (2301, NULL, N'3e8e557a-04ab-4052-afb1-480883b58169', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Orders] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [Bought]) VALUES (2302, NULL, N'3e8e557a-04ab-4052-afb1-480883b58169', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Orders] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [Bought]) VALUES (2303, NULL, N'3e8e557a-04ab-4052-afb1-480883b58169', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Orders] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [Bought]) VALUES (2304, NULL, N'3e8e557a-04ab-4052-afb1-480883b58169', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Orders] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [Bought]) VALUES (2305, NULL, N'3e8e557a-04ab-4052-afb1-480883b58169', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Orders] ([OrderId], [Username], [SessionId], [OrderStatusId], [DateOfSession], [DateOfOrder], [DateOfShipping], [TransactionId], [Notes], [CustomerName], [DeliveryAddress], [Phone], [EmailAddress], [CardOwner], [CardType], [ExpiryDate], [Bought]) VALUES (2306, NULL, N'3e8e557a-04ab-4052-afb1-480883b58169', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0)
SET IDENTITY_INSERT [dbo].[Orders] OFF
INSERT [dbo].[OrderStatus] ([OrderStatusId], [Description]) VALUES (0, N'New Empty Order')
INSERT [dbo].[OrderStatus] ([OrderStatusId], [Description]) VALUES (1, N'Being Assembled - in shopping cart')
INSERT [dbo].[OrderStatus] ([OrderStatusId], [Description]) VALUES (2, N'User confirms and Credit Card checks out Ok')
INSERT [dbo].[OrderStatus] ([OrderStatusId], [Description]) VALUES (3, N'User confirms and Credit Card is BAD.  Process stops there.')
INSERT [dbo].[OrderStatus] ([OrderStatusId], [Description]) VALUES (4, N'Goods all shipped, seller collects money.')
INSERT [dbo].[OrderStatus] ([OrderStatusId], [Description]) VALUES (5, N'Goods partly shipped, seller collects part of the money, send email explaining the situation, get missing goods on "back-order"')
INSERT [dbo].[OrderStatus] ([OrderStatusId], [Description]) VALUES (6, N'Customer is annoyed because Goods partly shipped.  Sends them back.  Seller needs to reverse Credit Card payment ( = refund).')
INSERT [dbo].[OrderStatus] ([OrderStatusId], [Description]) VALUES (7, N'Customer OK with part-delivery – Later, remaining goods sent out from back-order and Seller collects remaining money.')
SET IDENTITY_INSERT [dbo].[Premium] ON 

INSERT [dbo].[Premium] ([PremiumId], [PremiumTypeId], [DateOfBuy], [DateOfExpire], [IsActive], [UserId]) VALUES (31, 1, CAST(N'2018-09-10T12:55:03.820' AS DateTime), CAST(N'2019-09-10T12:55:03.820' AS DateTime), 1, N'ecdc1b7d-2cb9-4252-bef5-31054cb8bebe')
INSERT [dbo].[Premium] ([PremiumId], [PremiumTypeId], [DateOfBuy], [DateOfExpire], [IsActive], [UserId]) VALUES (32, 1, CAST(N'2018-09-11T13:44:10.790' AS DateTime), CAST(N'2019-09-11T13:44:10.790' AS DateTime), 0, N'3e8e557a-04ab-4052-afb1-480883b58169')
INSERT [dbo].[Premium] ([PremiumId], [PremiumTypeId], [DateOfBuy], [DateOfExpire], [IsActive], [UserId]) VALUES (33, 2, CAST(N'2018-09-11T14:16:21.680' AS DateTime), CAST(N'2019-09-11T14:16:21.680' AS DateTime), 0, N'3e8e557a-04ab-4052-afb1-480883b58169')
INSERT [dbo].[Premium] ([PremiumId], [PremiumTypeId], [DateOfBuy], [DateOfExpire], [IsActive], [UserId]) VALUES (34, 1, CAST(N'2018-09-11T15:03:56.327' AS DateTime), CAST(N'2019-09-11T15:03:56.327' AS DateTime), 1, N'3e8e557a-04ab-4052-afb1-480883b58169')
SET IDENTITY_INSERT [dbo].[Premium] OFF
SET IDENTITY_INSERT [dbo].[PremiumTypes] ON 

INSERT [dbo].[PremiumTypes] ([PremiumTypeId], [PremiumType], [Price], [Image]) VALUES (1, N'Gold', CAST(350.00 AS Decimal(18, 2)), N'Gold.png')
INSERT [dbo].[PremiumTypes] ([PremiumTypeId], [PremiumType], [Price], [Image]) VALUES (2, N'Silver', CAST(200.00 AS Decimal(18, 2)), N'Silver.png')
SET IDENTITY_INSERT [dbo].[PremiumTypes] OFF
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Id], [ProductId], [CategoryId], [Name], [UnitCost], [Description], [ImageFileName], [Password], [pccImage], [IdImage], [FirstAidImage], [Prize]) VALUES (1, N'1lusialor@gmail.com', 14, N'Lusia Lorence', 34, N'I am a good Nurse. I will take care of your baby. i have 10 years of experience.', N'1.jpg', N'mgm', N'pcc1.png', N'pass1.png', N'4f4d374ae8d24801b70c3c5fd7a3c70e.jpg', 22)
INSERT [dbo].[Products] ([Id], [ProductId], [CategoryId], [Name], [UnitCost], [Description], [ImageFileName], [Password], [pccImage], [IdImage], [FirstAidImage], [Prize]) VALUES (2, N'2mgm@gmail.com', 14, N'Margerette', 37, N'I am a good Nurse. I will take care of your baby. i have 10 years of experience.', N'2.jpg', N'mgm', N'pcc1.png', N'pass1.png', N'4f4d374ae8d24801b70c3c5fd7a3c70e.jpg', 23)
INSERT [dbo].[Products] ([Id], [ProductId], [CategoryId], [Name], [UnitCost], [Description], [ImageFileName], [Password], [pccImage], [IdImage], [FirstAidImage], [Prize]) VALUES (3, N'3lnj@gmail.com', 15, N'Lincy Joshua', 27, N'I am a good Nurse. I will take care of your baby. i have 10 years of experience.', N'3.jpg', N'mgm', N'pcc1.png', N'pass1.png', N'4f4d374ae8d24801b70c3c5fd7a3c70e.jpg', NULL)
INSERT [dbo].[Products] ([Id], [ProductId], [CategoryId], [Name], [UnitCost], [Description], [ImageFileName], [Password], [pccImage], [IdImage], [FirstAidImage], [Prize]) VALUES (4, N'4steph@gmail.com', 15, N'Lincy Joshua', 27, N'I am a good Nurse. I will take care of your baby. i have 10 years of experience.', N'4.jpg', N'mgm', N'pcc1.png', N'pass1.png', N'4f4d374ae8d24801b70c3c5fd7a3c70e.jpg', 25)
INSERT [dbo].[Products] ([Id], [ProductId], [CategoryId], [Name], [UnitCost], [Description], [ImageFileName], [Password], [pccImage], [IdImage], [FirstAidImage], [Prize]) VALUES (5, N'5kris@gmail.com', 16, N'Lincy Joshua', 27, N'I am a good Nurse. I will take care of your baby. i have 10 years of experience.', N'5.jpg', N'mgm', N'pcc1.png', N'pass1.png', N'4f4d374ae8d24801b70c3c5fd7a3c70e.jpg', 26)
INSERT [dbo].[Products] ([Id], [ProductId], [CategoryId], [Name], [UnitCost], [Description], [ImageFileName], [Password], [pccImage], [IdImage], [FirstAidImage], [Prize]) VALUES (6, N'6amanadas@gmail.com', 16, N'Lincy Joshua', 27, N'I am a good Nurse. I will take care of your baby. i have 10 years of experience.', N'6.jpg', N'mgm', N'pcc1.png', N'pass1.png', N'4f4d374ae8d24801b70c3c5fd7a3c70e.jpg', 27)
INSERT [dbo].[Products] ([Id], [ProductId], [CategoryId], [Name], [UnitCost], [Description], [ImageFileName], [Password], [pccImage], [IdImage], [FirstAidImage], [Prize]) VALUES (7, N'7steph@gmail.com', 17, N'Lincy Joshua', 27, N'I am a good Nurse. I will take care of your baby. i have 10 years of experience.', N'7.jpg', N'mgm', N'pcc1.png', N'pass1.png', N'4f4d374ae8d24801b70c3c5fd7a3c70e.jpg', 28)
INSERT [dbo].[Products] ([Id], [ProductId], [CategoryId], [Name], [UnitCost], [Description], [ImageFileName], [Password], [pccImage], [IdImage], [FirstAidImage], [Prize]) VALUES (8, N'8lusialor@gmail.com', 17, N'Lincy Joshua', 27, N'I am a good Nurse. I will take care of your baby. i have 10 years of experience.', N'8.jpg', N'mgm', N'pcc1.png', N'pass1.png', N'4f4d374ae8d24801b70c3c5fd7a3c70e.jpg', 29)
INSERT [dbo].[Products] ([Id], [ProductId], [CategoryId], [Name], [UnitCost], [Description], [ImageFileName], [Password], [pccImage], [IdImage], [FirstAidImage], [Prize]) VALUES (9, N'9lnj@gmail.com', 18, N'Lincy Joshua', 27, N'I am a good Nurse. I will take care of your baby. i have 10 years of experience.', N'9.jpg', N'mgm', N'pcc1.png', N'pass1.png', N'4f4d374ae8d24801b70c3c5fd7a3c70e.jpg', 30)
INSERT [dbo].[Products] ([Id], [ProductId], [CategoryId], [Name], [UnitCost], [Description], [ImageFileName], [Password], [pccImage], [IdImage], [FirstAidImage], [Prize]) VALUES (10, N'10lnj@gmail.com', 18, N'Lincy Joshua', 27, N'I am a good Nurse. I will take care of your baby. i have 10 years of experience.', N'10.jpg', N'mgm', N'pcc1.png', N'pass1.png', N'4f4d374ae8d24801b70c3c5fd7a3c70e.jpg', 31)
INSERT [dbo].[Products] ([Id], [ProductId], [CategoryId], [Name], [UnitCost], [Description], [ImageFileName], [Password], [pccImage], [IdImage], [FirstAidImage], [Prize]) VALUES (11, N'11steph@gmail.com', 19, N'Lincy Joshua', 27, N'I am a good Nurse. I will take care of your baby. i have 10 years of experience.', N'11.jpg', N'mgm', N'pcc1.png', N'pass1.png', N'4f4d374ae8d24801b70c3c5fd7a3c70e.jpg', 28)
INSERT [dbo].[Products] ([Id], [ProductId], [CategoryId], [Name], [UnitCost], [Description], [ImageFileName], [Password], [pccImage], [IdImage], [FirstAidImage], [Prize]) VALUES (12, N'12lnj@gmail.com', 19, N'Lincy Joshua', 27, N'I am a good Nurse. I will take care of your baby. i have 10 years of experience.', N'12.jpg', N'mgm', N'pcc1.png', N'pass1.png', N'4f4d374ae8d24801b70c3c5fd7a3c70e.jpg', 27)
INSERT [dbo].[Products] ([Id], [ProductId], [CategoryId], [Name], [UnitCost], [Description], [ImageFileName], [Password], [pccImage], [IdImage], [FirstAidImage], [Prize]) VALUES (13, N'13lnj@gmail.com', 20, N'Lincy Joshua', 27, N'I am a good Nurse. I will take care of your baby. i have 10 years of experience.', N'13.jpg', N'mgm', N'pcc1.png', N'pass1.png', N'4f4d374ae8d24801b70c3c5fd7a3c70e.jpg', 26)
INSERT [dbo].[Products] ([Id], [ProductId], [CategoryId], [Name], [UnitCost], [Description], [ImageFileName], [Password], [pccImage], [IdImage], [FirstAidImage], [Prize]) VALUES (14, N'14steph@gmail.com', 20, N'Lincy Joshua', 27, N'I am a good Nurse. I will take care of your baby. i have 10 years of experience.', N'14.jpg', N'mgm', N'pcc1.png', N'pass1.png', N'4f4d374ae8d24801b70c3c5fd7a3c70e.jpg', 25)
INSERT [dbo].[Products] ([Id], [ProductId], [CategoryId], [Name], [UnitCost], [Description], [ImageFileName], [Password], [pccImage], [IdImage], [FirstAidImage], [Prize]) VALUES (15, N'15lnj@gmail.com', 21, N'Lincy Joshua', 27, N'I am a good Nurse. I will take care of your baby. i have 10 years of experience.', N'15.jpg', N'mgm', N'pcc1.png', N'pass1.png', N'4f4d374ae8d24801b70c3c5fd7a3c70e.jpg', 24)
INSERT [dbo].[Products] ([Id], [ProductId], [CategoryId], [Name], [UnitCost], [Description], [ImageFileName], [Password], [pccImage], [IdImage], [FirstAidImage], [Prize]) VALUES (16, N'16lnj@gmail.com', 21, N'Lincy Joshua', 27, N'I am a good Nurse. I will take care of your baby. i have 10 years of experience.', N'16.jpg', N'mgm', N'pcc1.png', N'pass1.png', N'4f4d374ae8d24801b70c3c5fd7a3c70e.jpg', 23)
INSERT [dbo].[Products] ([Id], [ProductId], [CategoryId], [Name], [UnitCost], [Description], [ImageFileName], [Password], [pccImage], [IdImage], [FirstAidImage], [Prize]) VALUES (17, N'17mgm@gmail.com', 22, N'Margerette', 37, N'I am a good Nurse. I will take care of your baby. i have 10 years of experience.', N'17.jpg', N'mgm', N'pcc1.png', N'pass1.png', N'4f4d374ae8d24801b70c3c5fd7a3c70e.jpg', 22)
INSERT [dbo].[Products] ([Id], [ProductId], [CategoryId], [Name], [UnitCost], [Description], [ImageFileName], [Password], [pccImage], [IdImage], [FirstAidImage], [Prize]) VALUES (18, N'18mgm@gmail.com', 22, N'Margerette', 37, N'I am a good Nurse. I will take care of your baby. i have 10 years of experience.', N'18.jpg', N'mgm', N'pcc1.png', N'pass1.png', N'4f4d374ae8d24801b70c3c5fd7a3c70e.jpg', 21)
INSERT [dbo].[Products] ([Id], [ProductId], [CategoryId], [Name], [UnitCost], [Description], [ImageFileName], [Password], [pccImage], [IdImage], [FirstAidImage], [Prize]) VALUES (19, N'19mgm@gmail.com', 23, N'Margerette', 37, N'I am a good Nurse. I will take care of your baby. i have 10 years of experience.', N'19.jpg', N'mgm', N'pcc1.png', N'pass1.png', N'4f4d374ae8d24801b70c3c5fd7a3c70e.jpg', 19)
INSERT [dbo].[Products] ([Id], [ProductId], [CategoryId], [Name], [UnitCost], [Description], [ImageFileName], [Password], [pccImage], [IdImage], [FirstAidImage], [Prize]) VALUES (20, N'20mgm@gmail.com', 23, N'Margerette', 37, N'I am a good Nurse. I will take care of your baby. i have 10 years of experience.', N'20.jpg', N'mgm', N'pcc1.png', N'pass1.png', N'4f4d374ae8d24801b70c3c5fd7a3c70e.jpg', 24)
INSERT [dbo].[Products] ([Id], [ProductId], [CategoryId], [Name], [UnitCost], [Description], [ImageFileName], [Password], [pccImage], [IdImage], [FirstAidImage], [Prize]) VALUES (21, N'21mgm@gmail.com', 24, N'Margerette', 37, N'I am a good Nurse. I will take care of your baby. i have 10 years of experience.', N'21.jpg', N'mgm', N'pcc1.png', N'pass1.png', N'4f4d374ae8d24801b70c3c5fd7a3c70e.jpg', 28)
INSERT [dbo].[Products] ([Id], [ProductId], [CategoryId], [Name], [UnitCost], [Description], [ImageFileName], [Password], [pccImage], [IdImage], [FirstAidImage], [Prize]) VALUES (22, N'22mgm@gmail.com', 24, N'Margerette', 37, N'I am a good Nurse. I will take care of your baby. i have 10 years of experience.', N'22.jpg', N'mgm', N'pcc1.png', N'pass1.png', N'4f4d374ae8d24801b70c3c5fd7a3c70e.jpg', 22)
INSERT [dbo].[Products] ([Id], [ProductId], [CategoryId], [Name], [UnitCost], [Description], [ImageFileName], [Password], [pccImage], [IdImage], [FirstAidImage], [Prize]) VALUES (23, N'23mgm@gmail.com', 25, N'Margerette', 37, N'I am a good Nurse. I will take care of your baby. i have 10 years of experience.', N'23.jpg', N'mgm', N'pcc1.png', N'pass1.png', N'4f4d374ae8d24801b70c3c5fd7a3c70e.jpg', 31)
INSERT [dbo].[Products] ([Id], [ProductId], [CategoryId], [Name], [UnitCost], [Description], [ImageFileName], [Password], [pccImage], [IdImage], [FirstAidImage], [Prize]) VALUES (24, N'24mgm@gmail.com', 25, N'Margerette', 37, N'I am a good Nurse. I will take care of your baby. i have 10 years of experience.', N'24.jpg', N'mgm', N'pcc1.png', N'pass1.png', N'4f4d374ae8d24801b70c3c5fd7a3c70e.jpg', 27)
INSERT [dbo].[Products] ([Id], [ProductId], [CategoryId], [Name], [UnitCost], [Description], [ImageFileName], [Password], [pccImage], [IdImage], [FirstAidImage], [Prize]) VALUES (25, N'25mgm@gmail.com', 26, N'Margerette', 37, N'I am a good Nurse. I will take care of your baby. i have 10 years of experience.', N'25.jpg', N'mgm', N'pcc1.png', N'pass1.png', N'4f4d374ae8d24801b70c3c5fd7a3c70e.jpg', 25)
INSERT [dbo].[Products] ([Id], [ProductId], [CategoryId], [Name], [UnitCost], [Description], [ImageFileName], [Password], [pccImage], [IdImage], [FirstAidImage], [Prize]) VALUES (26, N'26mgm@gmail.com', 26, N'Margerette', 37, N'I am a good Nurse. I will take care of your baby. i have 10 years of experience.', N'26.jpg', N'mgm', N'pcc1.png', N'pass1.png', N'4f4d374ae8d24801b70c3c5fd7a3c70e.jpg', 24)
INSERT [dbo].[Products] ([Id], [ProductId], [CategoryId], [Name], [UnitCost], [Description], [ImageFileName], [Password], [pccImage], [IdImage], [FirstAidImage], [Prize]) VALUES (27, N'27mgm@gmail.com', 27, N'Margerette', 37, N'I am a good Nurse. I will take care of your baby. i have 10 years of experience.', N'27.jpg', N'mgm', N'pcc1.png', N'pass1.png', N'4f4d374ae8d24801b70c3c5fd7a3c70e.jpg', 23)
INSERT [dbo].[Products] ([Id], [ProductId], [CategoryId], [Name], [UnitCost], [Description], [ImageFileName], [Password], [pccImage], [IdImage], [FirstAidImage], [Prize]) VALUES (28, N'28mgm@gmail.com', 28, N'Margerette', 37, N'I am a good Nurse. I will take care of your baby. i have 10 years of experience.', N'28.jpg', N'mgm', N'pcc1.png', N'pass1.png', N'4f4d374ae8d24801b70c3c5fd7a3c70e.jpg', 24)
INSERT [dbo].[Products] ([Id], [ProductId], [CategoryId], [Name], [UnitCost], [Description], [ImageFileName], [Password], [pccImage], [IdImage], [FirstAidImage], [Prize]) VALUES (29, N'29mgm@gmail.com', 29, N'Margerette', 37, N'I am a good Nurse. I will take care of your baby. i have 10 years of experience.', N'29.jpg', N'mgm', N'pcc1.png', N'pass1.png', N'4f4d374ae8d24801b70c3c5fd7a3c70e.jpg', 25)
INSERT [dbo].[Products] ([Id], [ProductId], [CategoryId], [Name], [UnitCost], [Description], [ImageFileName], [Password], [pccImage], [IdImage], [FirstAidImage], [Prize]) VALUES (30, N'30mgm@gmail.com', 29, N'Margerette', 37, N'I am a good Nurse. I will take care of your baby. i have 10 years of experience.', N'29.jpg', N'mgm', N'pcc1.png', N'pass1.png', N'4f4d374ae8d24801b70c3c5fd7a3c70e.jpg', 30)
INSERT [dbo].[Products] ([Id], [ProductId], [CategoryId], [Name], [UnitCost], [Description], [ImageFileName], [Password], [pccImage], [IdImage], [FirstAidImage], [Prize]) VALUES (31, N'fadi@gmail.com', 15, N'Fadi', 40, N'I am a professional nurse', N'fa49bd3ddbf84980a7a73cd2424d8681.jpg', N'fadiad', N'd7afa89470314223a4cc32294e1e2893.png', N'f22de2090cdd479cb7f1e1f6696a72c0.png', N'25f7ff4f6501405294bf02967aee8d23.png', 20)
INSERT [dbo].[Products] ([Id], [ProductId], [CategoryId], [Name], [UnitCost], [Description], [ImageFileName], [Password], [pccImage], [IdImage], [FirstAidImage], [Prize]) VALUES (32, N'ana@ana.com', 14, N'ANa', 24, N'i am a good nurse', N'20ed2cc67a3e4db5aab0569b915a735a.jpg', N'mgm', N'3e6f85d5d69a4bd0bc72973d146d3b47.png', N'd627cd3f9aa34c58829b1d1db8f63ef7.png', N'aaea9c9314bd4b0dbecacae5214f2a28.jpg', 22)
INSERT [dbo].[Products] ([Id], [ProductId], [CategoryId], [Name], [UnitCost], [Description], [ImageFileName], [Password], [pccImage], [IdImage], [FirstAidImage], [Prize]) VALUES (33, N'ana1@ana1.com', 14, N'ana', 33, N'this is arpit nurse edited version', N'f43c1f410af34244bc48b8befed997cf.jpg', N'mgm', N'8d69e71b47744dad94a548149e67f99a.png', N'c5860a2c54ef40df9389d3f59fd570a5.png', N'e4aee17942d94166b3b590b4adbb6c63.png', 23)
SET IDENTITY_INSERT [dbo].[Products] OFF
SET IDENTITY_INSERT [dbo].[TempCart] ON 

INSERT [dbo].[TempCart] ([Id], [ProductId], [ProductName], [UserId], [ProductCount], [Datebook], [DateEnd], [Productnewid], [Payed]) VALUES (1, N'NTMBS1', N'Multi-Purpose Rubber Band', N'3e8e557a-04ab-4052-afb1-480883b58169', NULL, NULL, NULL, N'newNTMBS1', NULL)
INSERT [dbo].[TempCart] ([Id], [ProductId], [ProductName], [UserId], [ProductCount], [Datebook], [DateEnd], [Productnewid], [Payed]) VALUES (2, N'NTMBS1', N'Multi-Purpose Rubber Band', N'3e8e557a-04ab-4052-afb1-480883b58169', NULL, NULL, NULL, N'newNTMBS1', NULL)
INSERT [dbo].[TempCart] ([Id], [ProductId], [ProductName], [UserId], [ProductCount], [Datebook], [DateEnd], [Productnewid], [Payed]) VALUES (8, N'fadi@gmail.com', N'b18d47e7-0056-4a24-bbb9-f78e9d62d0c5', NULL, 0, CAST(N'2019-06-25T13:00:00.000' AS DateTime), CAST(N'2019-06-25T20:00:00.000' AS DateTime), N'12fef6b9306b47dfbf5c82917bf5cbe5fadi@gmail.com', NULL)
INSERT [dbo].[TempCart] ([Id], [ProductId], [ProductName], [UserId], [ProductCount], [Datebook], [DateEnd], [Productnewid], [Payed]) VALUES (14, N'fadi@gmail.com', N'b18d47e7-0056-4a24-bbb9-f78e9d62d0c5', NULL, 0, CAST(N'2019-07-22T13:00:00.000' AS DateTime), CAST(N'2019-07-22T13:00:00.000' AS DateTime), N'1a17684d669b4c728aa3234e3e3114b9fadi@gmail.com', N'True')
INSERT [dbo].[TempCart] ([Id], [ProductId], [ProductName], [UserId], [ProductCount], [Datebook], [DateEnd], [Productnewid], [Payed]) VALUES (15, N'fadi@gmail.com', N'b18d47e7-0056-4a24-bbb9-f78e9d62d0c5', NULL, 0, CAST(N'2019-07-17T13:00:00.000' AS DateTime), CAST(N'2019-07-17T21:00:00.000' AS DateTime), N'ef6340250feb47d2a0e40a2a7f6352d5fadi@gmail.com', N'True')
INSERT [dbo].[TempCart] ([Id], [ProductId], [ProductName], [UserId], [ProductCount], [Datebook], [DateEnd], [Productnewid], [Payed]) VALUES (16, N'fadi@gmail.com', N'b18d47e7-0056-4a24-bbb9-f78e9d62d0c5', NULL, 0, CAST(N'2019-07-26T13:00:00.000' AS DateTime), CAST(N'2019-07-26T15:00:00.000' AS DateTime), N'674b1fe74eab4df0810c330cac2c0fa7fadi@gmail.com', N'True')
INSERT [dbo].[TempCart] ([Id], [ProductId], [ProductName], [UserId], [ProductCount], [Datebook], [DateEnd], [Productnewid], [Payed]) VALUES (17, N'4steph@gmail.com', N'450fc45e-db67-4cd0-9f0e-69e9423c1a59', NULL, 0, CAST(N'2019-07-03T13:00:00.000' AS DateTime), CAST(N'2019-07-03T17:00:00.000' AS DateTime), N'bd8dd34e1b73445fa7d1fc803c07e4754steph@gmail.com', NULL)
INSERT [dbo].[TempCart] ([Id], [ProductId], [ProductName], [UserId], [ProductCount], [Datebook], [DateEnd], [Productnewid], [Payed]) VALUES (18, N'4steph@gmail.com', N'450fc45e-db67-4cd0-9f0e-69e9423c1a59', NULL, 0, CAST(N'2019-07-03T14:00:00.000' AS DateTime), CAST(N'2019-07-03T17:00:00.000' AS DateTime), N'690c66470bc642c29f848db098b697cf4steph@gmail.com', NULL)
INSERT [dbo].[TempCart] ([Id], [ProductId], [ProductName], [UserId], [ProductCount], [Datebook], [DateEnd], [Productnewid], [Payed]) VALUES (19, N'4steph@gmail.com', N'450fc45e-db67-4cd0-9f0e-69e9423c1a59', NULL, 0, CAST(N'2019-07-04T18:00:00.000' AS DateTime), CAST(N'2019-07-04T21:00:00.000' AS DateTime), N'1822241dad1b4133b7db8d16eea476364steph@gmail.com', NULL)
INSERT [dbo].[TempCart] ([Id], [ProductId], [ProductName], [UserId], [ProductCount], [Datebook], [DateEnd], [Productnewid], [Payed]) VALUES (20, N'4steph@gmail.com', N'450fc45e-db67-4cd0-9f0e-69e9423c1a59', NULL, 0, CAST(N'2019-07-05T04:00:00.000' AS DateTime), CAST(N'2019-07-05T07:00:00.000' AS DateTime), N'9753c4fc736c42548457dcd36d4729664steph@gmail.com', NULL)
INSERT [dbo].[TempCart] ([Id], [ProductId], [ProductName], [UserId], [ProductCount], [Datebook], [DateEnd], [Productnewid], [Payed]) VALUES (21, N'4steph@gmail.com', N'450fc45e-db67-4cd0-9f0e-69e9423c1a59', NULL, 0, CAST(N'2019-07-10T05:03:00.000' AS DateTime), CAST(N'2019-07-10T10:02:00.000' AS DateTime), N'5c541aec77cf4b8b8e7f85e29f35d8e94steph@gmail.com', N'True')
INSERT [dbo].[TempCart] ([Id], [ProductId], [ProductName], [UserId], [ProductCount], [Datebook], [DateEnd], [Productnewid], [Payed]) VALUES (22, N'3lnj@gmail.com', N'450fc45e-db67-4cd0-9f0e-69e9423c1a59', NULL, 0, CAST(N'2019-07-17T02:00:00.000' AS DateTime), CAST(N'2019-07-17T10:00:00.000' AS DateTime), N'cab955112078478eb92f5783e05e74103lnj@gmail.com', N'True')
INSERT [dbo].[TempCart] ([Id], [ProductId], [ProductName], [UserId], [ProductCount], [Datebook], [DateEnd], [Productnewid], [Payed]) VALUES (27, N'ana@ana.com', N'450fc45e-db67-4cd0-9f0e-69e9423c1a59', NULL, 0, CAST(N'2019-07-04T16:03:00.000' AS DateTime), CAST(N'2019-07-04T12:00:00.000' AS DateTime), N'7eda3629caa14ad397bab9643580f1e9', N'True')
INSERT [dbo].[TempCart] ([Id], [ProductId], [ProductName], [UserId], [ProductCount], [Datebook], [DateEnd], [Productnewid], [Payed]) VALUES (28, N'6amanadas@gmail.com', N'450fc45e-db67-4cd0-9f0e-69e9423c1a59', NULL, 0, CAST(N'2019-07-04T14:00:00.000' AS DateTime), CAST(N'2019-07-04T18:00:00.000' AS DateTime), N'47be4b7fd4fb4caaafadf73b03f0ec23', N'True')
INSERT [dbo].[TempCart] ([Id], [ProductId], [ProductName], [UserId], [ProductCount], [Datebook], [DateEnd], [Productnewid], [Payed]) VALUES (29, N'6amanadas@gmail.com', N'b18d47e7-0056-4a24-bbb9-f78e9d62d0c5', NULL, 0, CAST(N'2019-07-05T13:00:00.000' AS DateTime), CAST(N'2019-07-05T18:00:00.000' AS DateTime), N'4db76f89e3c049b09acabbca222142d0', N'True')
INSERT [dbo].[TempCart] ([Id], [ProductId], [ProductName], [UserId], [ProductCount], [Datebook], [DateEnd], [Productnewid], [Payed]) VALUES (30, N'5kris@gmail.com', N'450fc45e-db67-4cd0-9f0e-69e9423c1a59', NULL, 0, CAST(N'2019-07-04T10:00:00.000' AS DateTime), CAST(N'2019-07-04T18:00:00.000' AS DateTime), N'04a55232ec0d46cfaee057f483450d6c', N'True')
SET IDENTITY_INSERT [dbo].[TempCart] OFF
ALTER TABLE [dbo].[Premium] ADD  CONSTRAINT [DF_Premium_IsActive]  DEFAULT ((0)) FOR [IsActive]
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
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_OrderStatus] FOREIGN KEY([OrderStatusId])
REFERENCES [dbo].[OrderStatus] ([OrderStatusId])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_OrderStatus]
GO
ALTER TABLE [dbo].[Premium]  WITH CHECK ADD  CONSTRAINT [FK_Premium_Premium] FOREIGN KEY([PremiumId])
REFERENCES [dbo].[Premium] ([PremiumId])
GO
ALTER TABLE [dbo].[Premium] CHECK CONSTRAINT [FK_Premium_Premium]
GO
ALTER TABLE [dbo].[Premium]  WITH CHECK ADD  CONSTRAINT [FK_PremiumType] FOREIGN KEY([PremiumTypeId])
REFERENCES [dbo].[PremiumTypes] ([PremiumTypeId])
GO
ALTER TABLE [dbo].[Premium] CHECK CONSTRAINT [FK_PremiumType]
GO
USE [master]
GO
ALTER DATABASE [XSpy] SET  READ_WRITE 
GO
