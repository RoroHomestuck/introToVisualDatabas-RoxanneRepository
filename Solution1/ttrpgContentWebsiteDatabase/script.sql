USE [master]
GO
/****** Object:  Database [ttrpgContentWebsiteDatabase]    Script Date: 9/25/2023 12:30:07 AM ******/
CREATE DATABASE [ttrpgContentWebsiteDatabase]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ttrpgContentWebsiteDatabase', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\ttrpgContentWebsiteDatabase.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ttrpgContentWebsiteDatabase_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\ttrpgContentWebsiteDatabase_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [ttrpgContentWebsiteDatabase] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ttrpgContentWebsiteDatabase].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ttrpgContentWebsiteDatabase] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ttrpgContentWebsiteDatabase] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ttrpgContentWebsiteDatabase] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ttrpgContentWebsiteDatabase] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ttrpgContentWebsiteDatabase] SET ARITHABORT OFF 
GO
ALTER DATABASE [ttrpgContentWebsiteDatabase] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ttrpgContentWebsiteDatabase] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ttrpgContentWebsiteDatabase] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ttrpgContentWebsiteDatabase] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ttrpgContentWebsiteDatabase] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ttrpgContentWebsiteDatabase] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ttrpgContentWebsiteDatabase] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ttrpgContentWebsiteDatabase] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ttrpgContentWebsiteDatabase] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ttrpgContentWebsiteDatabase] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ttrpgContentWebsiteDatabase] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ttrpgContentWebsiteDatabase] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ttrpgContentWebsiteDatabase] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ttrpgContentWebsiteDatabase] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ttrpgContentWebsiteDatabase] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ttrpgContentWebsiteDatabase] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ttrpgContentWebsiteDatabase] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ttrpgContentWebsiteDatabase] SET RECOVERY FULL 
GO
ALTER DATABASE [ttrpgContentWebsiteDatabase] SET  MULTI_USER 
GO
ALTER DATABASE [ttrpgContentWebsiteDatabase] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ttrpgContentWebsiteDatabase] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ttrpgContentWebsiteDatabase] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ttrpgContentWebsiteDatabase] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ttrpgContentWebsiteDatabase] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ttrpgContentWebsiteDatabase] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'ttrpgContentWebsiteDatabase', N'ON'
GO
ALTER DATABASE [ttrpgContentWebsiteDatabase] SET QUERY_STORE = OFF
GO
USE [ttrpgContentWebsiteDatabase]
GO
/****** Object:  Table [dbo].[account]    Script Date: 9/25/2023 12:30:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[account](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[email] [nvarchar](50) NOT NULL,
	[username] [nchar](15) NOT NULL,
	[userType_ID] [int] NOT NULL,
 CONSTRAINT [PK_account] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Books]    Script Date: 9/25/2023 12:30:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Books](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NOT NULL,
	[page_Number] [int] NOT NULL,
	[dateAdded] [date] NOT NULL,
	[authorAccount_ID] [int] NOT NULL,
	[viewCount] [int] NOT NULL,
 CONSTRAINT [PK_Books] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[creatureStatBlocks]    Script Date: 9/25/2023 12:30:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[creatureStatBlocks](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NOT NULL,
	[challengeRating] [int] NOT NULL,
	[size_ID] [int] NOT NULL,
	[hitDice] [int] NOT NULL,
	[str] [int] NOT NULL,
	[chr] [int] NOT NULL,
	[int] [int] NOT NULL,
	[wis] [int] NOT NULL,
	[dex] [int] NOT NULL,
	[con] [int] NOT NULL,
	[dateAdded] [date] NOT NULL,
	[authorAccount_ID] [int] NOT NULL,
	[viewCount] [int] NOT NULL,
 CONSTRAINT [PK_creatureStatBlocks] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[savedContent]    Script Date: 9/25/2023 12:30:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[savedContent](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[user_ID] [int] NOT NULL,
	[typeOfContent_ID] [int] NOT NULL,
	[content_ID] [int] NOT NULL,
 CONSTRAINT [PK_savedContent] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sizes]    Script Date: 9/25/2023 12:30:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sizes](
	[ID] [int] IDENTITY(0,1) NOT NULL,
	[sizeName] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_sizes] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[typeOfContent]    Script Date: 9/25/2023 12:30:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[typeOfContent](
	[ID] [int] IDENTITY(0,1) NOT NULL,
	[nameOfContentType] [nchar](10) NOT NULL,
 CONSTRAINT [PK_typeOfContent] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[userTypes]    Script Date: 9/25/2023 12:30:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[userTypes](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_userTypes] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[account] ON 

INSERT [dbo].[account] ([ID], [email], [username], [userType_ID]) VALUES (0, N'arealemail@anemailwebsite.com', N'Person_Name    ', 0)
INSERT [dbo].[account] ([ID], [email], [username], [userType_ID]) VALUES (1, N'notarealemailadress@anemailwebsite.com', N'JeffJacobson   ', 0)
INSERT [dbo].[account] ([ID], [email], [username], [userType_ID]) VALUES (2, N'adminofwebsite@websitename.com', N'Admin          ', 1)
INSERT [dbo].[account] ([ID], [email], [username], [userType_ID]) VALUES (3, N'coadminofwebsite@waytoopersonalofanemail.com', N'CoolAdmin      ', 1)
INSERT [dbo].[account] ([ID], [email], [username], [userType_ID]) VALUES (4, N'coolcat@kitties.org', N'AnimalLVR      ', 2)
INSERT [dbo].[account] ([ID], [email], [username], [userType_ID]) VALUES (5, N'iwritestuff@gmail.com', N'BookMastr      ', 2)
SET IDENTITY_INSERT [dbo].[account] OFF
GO
SET IDENTITY_INSERT [dbo].[Books] ON 

INSERT [dbo].[Books] ([ID], [name], [page_Number], [dateAdded], [authorAccount_ID], [viewCount]) VALUES (0, N'Derral''s Real Book of Monsters (A 5e Expansion)', 453, CAST(N'2000-07-01' AS Date), 5, 10)
INSERT [dbo].[Books] ([ID], [name], [page_Number], [dateAdded], [authorAccount_ID], [viewCount]) VALUES (1, N'The Wizard''z Tomb (A 5e Campaign Setting)', 230, CAST(N'2000-07-01' AS Date), 5, 2)
INSERT [dbo].[Books] ([ID], [name], [page_Number], [dateAdded], [authorAccount_ID], [viewCount]) VALUES (2, N'My Really Cool Beastiary (A Radical Exploration of Animals in 5e)', 201, CAST(N'2012-09-09' AS Date), 4, 40201)
SET IDENTITY_INSERT [dbo].[Books] OFF
GO
SET IDENTITY_INSERT [dbo].[creatureStatBlocks] ON 

INSERT [dbo].[creatureStatBlocks] ([ID], [name], [challengeRating], [size_ID], [hitDice], [str], [chr], [int], [wis], [dex], [con], [dateAdded], [authorAccount_ID], [viewCount]) VALUES (0, N'Minotaur', 2, 2, 3, 15, 5, 13, 14, 18, 15, CAST(N'2020-12-01' AS Date), 4, 1023)
INSERT [dbo].[creatureStatBlocks] ([ID], [name], [challengeRating], [size_ID], [hitDice], [str], [chr], [int], [wis], [dex], [con], [dateAdded], [authorAccount_ID], [viewCount]) VALUES (1, N'Wizard King', 19, 2, 8, 9, 15, 29, 29, 16, 4, CAST(N'2001-01-04' AS Date), 5, 1)
SET IDENTITY_INSERT [dbo].[creatureStatBlocks] OFF
GO
SET IDENTITY_INSERT [dbo].[savedContent] ON 

INSERT [dbo].[savedContent] ([ID], [user_ID], [typeOfContent_ID], [content_ID]) VALUES (0, 1, 2, 0)
INSERT [dbo].[savedContent] ([ID], [user_ID], [typeOfContent_ID], [content_ID]) VALUES (1, 0, 1, 1)
SET IDENTITY_INSERT [dbo].[savedContent] OFF
GO
SET IDENTITY_INSERT [dbo].[sizes] ON 

INSERT [dbo].[sizes] ([ID], [sizeName]) VALUES (0, N'Tiny')
INSERT [dbo].[sizes] ([ID], [sizeName]) VALUES (1, N'Small')
INSERT [dbo].[sizes] ([ID], [sizeName]) VALUES (2, N'Medium')
INSERT [dbo].[sizes] ([ID], [sizeName]) VALUES (3, N'Large')
INSERT [dbo].[sizes] ([ID], [sizeName]) VALUES (4, N'Gigantic')
SET IDENTITY_INSERT [dbo].[sizes] OFF
GO
SET IDENTITY_INSERT [dbo].[typeOfContent] ON 

INSERT [dbo].[typeOfContent] ([ID], [nameOfContentType]) VALUES (0, N'Book      ')
INSERT [dbo].[typeOfContent] ([ID], [nameOfContentType]) VALUES (1, N'StatBlock ')
SET IDENTITY_INSERT [dbo].[typeOfContent] OFF
GO
SET IDENTITY_INSERT [dbo].[userTypes] ON 

INSERT [dbo].[userTypes] ([ID], [name]) VALUES (0, N'DefaultUser')
INSERT [dbo].[userTypes] ([ID], [name]) VALUES (1, N'PrimaryAdmin')
INSERT [dbo].[userTypes] ([ID], [name]) VALUES (2, N'Creator')
SET IDENTITY_INSERT [dbo].[userTypes] OFF
GO
USE [master]
GO
ALTER DATABASE [ttrpgContentWebsiteDatabase] SET  READ_WRITE 
GO
