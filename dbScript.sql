USE [master]
GO
/****** Object:  Database [Almaz]    Script Date: 3/13/2019 6:58:09 PM ******/
CREATE DATABASE [Almaz]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Almaz', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Almaz.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Almaz_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Almaz_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Almaz] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Almaz].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Almaz] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Almaz] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Almaz] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Almaz] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Almaz] SET ARITHABORT OFF 
GO
ALTER DATABASE [Almaz] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Almaz] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Almaz] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Almaz] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Almaz] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Almaz] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Almaz] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Almaz] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Almaz] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Almaz] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Almaz] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Almaz] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Almaz] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Almaz] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Almaz] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Almaz] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Almaz] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Almaz] SET RECOVERY FULL 
GO
ALTER DATABASE [Almaz] SET  MULTI_USER 
GO
ALTER DATABASE [Almaz] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Almaz] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Almaz] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Almaz] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Almaz] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Almaz', N'ON'
GO
ALTER DATABASE [Almaz] SET QUERY_STORE = OFF
GO
USE [Almaz]
GO
/****** Object:  Table [dbo].[BusinessCategories]    Script Date: 3/13/2019 6:58:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BusinessCategories](
	[categoryID] [int] IDENTITY(1,1) NOT NULL,
	[categoryName] [varchar](20) NULL,
	[active] [int] NOT NULL,
 CONSTRAINT [PK_BusinessCategories] PRIMARY KEY CLUSTERED 
(
	[categoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Businesses]    Script Date: 3/13/2019 6:58:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Businesses](
	[businessID] [int] IDENTITY(1,1) NOT NULL,
	[businessName] [varchar](50) NULL,
	[businessLogoImage] [varchar](max) NULL,
	[businessCity] [varchar](20) NULL,
	[businessAddress] [varchar](50) NULL,
	[businessDescription] [varchar](max) NULL,
	[businessPhone] [varchar](15) NULL,
	[businessJoinDate] [varchar](50) NULL,
	[userID] [int] NULL,
	[openTime] [varchar](50) NULL,
	[closeTime] [varchar](50) NULL,
	[active] [int] NULL,
 CONSTRAINT [PK_Businesses] PRIMARY KEY CLUSTERED 
(
	[businessID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BusinessFTcategories]    Script Date: 3/13/2019 6:58:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BusinessFTcategories](
	[businessFTcategoryID] [int] IDENTITY(1,1) NOT NULL,
	[categoryID] [int] NULL,
	[businessID] [int] NULL,
	[active] [int] NULL,
 CONSTRAINT [PK_BusinessFTcategories] PRIMARY KEY CLUSTERED 
(
	[businessFTcategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BusinessImages]    Script Date: 3/13/2019 6:58:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BusinessImages](
	[imageID] [int] IDENTITY(1,1) NOT NULL,
	[businessID] [int] NULL,
	[imageDate] [varchar](50) NULL,
	[imageDesctiption] [varchar](30) NULL,
	[active] [int] NULL,
 CONSTRAINT [PK_BusinessImages] PRIMARY KEY CLUSTERED 
(
	[imageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JobCategories]    Script Date: 3/13/2019 6:58:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JobCategories](
	[jobCategoryID] [int] IDENTITY(1,1) NOT NULL,
	[jobCategoryName] [varchar](30) NULL,
	[active] [int] NULL,
 CONSTRAINT [PK_JobCategories] PRIMARY KEY CLUSTERED 
(
	[jobCategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Jobs]    Script Date: 3/13/2019 6:58:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Jobs](
	[jobID] [int] IDENTITY(1,1) NOT NULL,
	[jobTitle] [varchar](20) NULL,
	[companyName] [varchar](30) NULL,
	[jobCity] [varchar](30) NULL,
	[jobArea] [varchar](30) NULL,
	[jobDescription] [varchar](50) NULL,
	[jobCategoryID] [int] NULL,
	[jobEmail] [varchar](50) NULL,
	[active] [int] NULL,
 CONSTRAINT [PK_Jobs] PRIMARY KEY CLUSTERED 
(
	[jobID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 3/13/2019 6:58:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[userID] [int] IDENTITY(1,1) NOT NULL,
	[userName] [varchar](20) NULL,
	[userImage] [varchar](max) NULL,
	[userJoinDate] [varchar](20) NULL,
	[userEmail] [varchar](20) NULL,
	[userPassword] [varchar](20) NULL,
	[active] [int] NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[userID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[BusinessCategories] ON 

INSERT [dbo].[BusinessCategories] ([categoryID], [categoryName], [active]) VALUES (1, N'Loyers', 1)
INSERT [dbo].[BusinessCategories] ([categoryID], [categoryName], [active]) VALUES (2, N'Restaurants', 1)
INSERT [dbo].[BusinessCategories] ([categoryID], [categoryName], [active]) VALUES (3, N'logistics', 1)
INSERT [dbo].[BusinessCategories] ([categoryID], [categoryName], [active]) VALUES (4, N'Human Resources
', 1)
INSERT [dbo].[BusinessCategories] ([categoryID], [categoryName], [active]) VALUES (5, N'Manufacturing', 1)
SET IDENTITY_INSERT [dbo].[BusinessCategories] OFF
SET IDENTITY_INSERT [dbo].[Businesses] ON 

INSERT [dbo].[Businesses] ([businessID], [businessName], [businessLogoImage], [businessCity], [businessAddress], [businessDescription], [businessPhone], [businessJoinDate], [userID], [openTime], [closeTime], [active]) VALUES (1, N'gojo', N'cc', N'rehovot', N'milchen12', N'The best the best', N'0548111474', N'2/04/18', 1, N'9:00', N'19:00', 1)
INSERT [dbo].[Businesses] ([businessID], [businessName], [businessLogoImage], [businessCity], [businessAddress], [businessDescription], [businessPhone], [businessJoinDate], [userID], [openTime], [closeTime], [active]) VALUES (2, N'Tevs', N'vv', N'rehovot', N'KryatMoshe1', N'The best the best', N'0528222744', N'2/11/18', 2, N'10:00', N'18:00', 1)
INSERT [dbo].[Businesses] ([businessID], [businessName], [businessLogoImage], [businessCity], [businessAddress], [businessDescription], [businessPhone], [businessJoinDate], [userID], [openTime], [closeTime], [active]) VALUES (3, N'EdenHair', N'nn', N'nes-ziona', N'benGorion3', N'The best the best', N'0545333849', N'5/03/17', 3, N'9:00', N'18:00', 1)
INSERT [dbo].[Businesses] ([businessID], [businessName], [businessLogoImage], [businessCity], [businessAddress], [businessDescription], [businessPhone], [businessJoinDate], [userID], [openTime], [closeTime], [active]) VALUES (4, N'Keltem', N'mm', N'Gedera', N'narkis7', N'The best the best', N'0525444549', N'7/05/17', 4, N'9:00', N'19:00', 1)
SET IDENTITY_INSERT [dbo].[Businesses] OFF
SET IDENTITY_INSERT [dbo].[BusinessFTcategories] ON 

INSERT [dbo].[BusinessFTcategories] ([businessFTcategoryID], [categoryID], [businessID], [active]) VALUES (1, 1, 1, 1)
INSERT [dbo].[BusinessFTcategories] ([businessFTcategoryID], [categoryID], [businessID], [active]) VALUES (2, 2, 2, 1)
INSERT [dbo].[BusinessFTcategories] ([businessFTcategoryID], [categoryID], [businessID], [active]) VALUES (3, 3, 3, 1)
INSERT [dbo].[BusinessFTcategories] ([businessFTcategoryID], [categoryID], [businessID], [active]) VALUES (4, 4, 4, 1)
SET IDENTITY_INSERT [dbo].[BusinessFTcategories] OFF
SET IDENTITY_INSERT [dbo].[BusinessImages] ON 

INSERT [dbo].[BusinessImages] ([imageID], [businessID], [imageDate], [imageDesctiption], [active]) VALUES (1, 1, N'15/7/18', N'tree', 1)
INSERT [dbo].[BusinessImages] ([imageID], [businessID], [imageDate], [imageDesctiption], [active]) VALUES (2, 2, N'15/7/18', N'chair', 1)
INSERT [dbo].[BusinessImages] ([imageID], [businessID], [imageDate], [imageDesctiption], [active]) VALUES (3, 3, N'15/7/18', N'bloon', 1)
INSERT [dbo].[BusinessImages] ([imageID], [businessID], [imageDate], [imageDesctiption], [active]) VALUES (4, 4, N'15/7/18', N'gun', 1)
SET IDENTITY_INSERT [dbo].[BusinessImages] OFF
SET IDENTITY_INSERT [dbo].[JobCategories] ON 

INSERT [dbo].[JobCategories] ([jobCategoryID], [jobCategoryName], [active]) VALUES (1, N'hashmal', 1)
INSERT [dbo].[JobCategories] ([jobCategoryID], [jobCategoryName], [active]) VALUES (2, N'teacher', 1)
INSERT [dbo].[JobCategories] ([jobCategoryID], [jobCategoryName], [active]) VALUES (3, N'developer', 1)
INSERT [dbo].[JobCategories] ([jobCategoryID], [jobCategoryName], [active]) VALUES (4, N'actor', 1)
SET IDENTITY_INSERT [dbo].[JobCategories] OFF
SET IDENTITY_INSERT [dbo].[Jobs] ON 

INSERT [dbo].[Jobs] ([jobID], [jobTitle], [companyName], [jobCity], [jobArea], [jobDescription], [jobCategoryID], [jobEmail], [active]) VALUES (1, N'hasmal', N'yaniv company', N'haifa', N'north', N'yaniv', 1, N'yaniv@gmail.com', 1)
INSERT [dbo].[Jobs] ([jobID], [jobTitle], [companyName], [jobCity], [jobArea], [jobDescription], [jobCategoryID], [jobEmail], [active]) VALUES (2, N'teacher', N'2pac songs', N'beer sheva', N'south', N'2pac', 2, N'2pac@gmail.com', 1)
INSERT [dbo].[Jobs] ([jobID], [jobTitle], [companyName], [jobCity], [jobArea], [jobDescription], [jobCategoryID], [jobEmail], [active]) VALUES (3, N'developer', N'israel industries', N'tel aviv', N'center', N'israel', 3, N'israel@gmail.com', 1)
INSERT [dbo].[Jobs] ([jobID], [jobTitle], [companyName], [jobCity], [jobArea], [jobDescription], [jobCategoryID], [jobEmail], [active]) VALUES (4, N'actor', N'gomen flights', N'holon', N'center', N'gomen', 4, N'gomen@gmail.com', 1)
SET IDENTITY_INSERT [dbo].[Jobs] OFF
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([userID], [userName], [userImage], [userJoinDate], [userEmail], [userPassword], [active]) VALUES (1, N'Efi', N'a', N'10/03/19', N'Efi@gmail.com', N'123456', 1)
INSERT [dbo].[Users] ([userID], [userName], [userImage], [userJoinDate], [userEmail], [userPassword], [active]) VALUES (2, N'israel', N'b', N'7/02/18', N'israel@gmail.com', N'123123', 1)
INSERT [dbo].[Users] ([userID], [userName], [userImage], [userJoinDate], [userEmail], [userPassword], [active]) VALUES (3, N'yaniv', N'c', N'3/02/18', N'yaniv@gmail.com', N'112233', 1)
INSERT [dbo].[Users] ([userID], [userName], [userImage], [userJoinDate], [userEmail], [userPassword], [active]) VALUES (4, N'nati', N'd', N'1/09/18', N'nati@gmail.com', N'121212', 1)
SET IDENTITY_INSERT [dbo].[Users] OFF
ALTER TABLE [dbo].[Businesses]  WITH CHECK ADD  CONSTRAINT [FK_Businesses_Users] FOREIGN KEY([userID])
REFERENCES [dbo].[Users] ([userID])
GO
ALTER TABLE [dbo].[Businesses] CHECK CONSTRAINT [FK_Businesses_Users]
GO
ALTER TABLE [dbo].[BusinessFTcategories]  WITH CHECK ADD  CONSTRAINT [FK_BusinessFTcategories_BusinessCategories] FOREIGN KEY([categoryID])
REFERENCES [dbo].[BusinessCategories] ([categoryID])
GO
ALTER TABLE [dbo].[BusinessFTcategories] CHECK CONSTRAINT [FK_BusinessFTcategories_BusinessCategories]
GO
ALTER TABLE [dbo].[BusinessFTcategories]  WITH CHECK ADD  CONSTRAINT [FK_BusinessFTcategories_Businesses] FOREIGN KEY([businessID])
REFERENCES [dbo].[Businesses] ([businessID])
GO
ALTER TABLE [dbo].[BusinessFTcategories] CHECK CONSTRAINT [FK_BusinessFTcategories_Businesses]
GO
ALTER TABLE [dbo].[BusinessImages]  WITH CHECK ADD  CONSTRAINT [FK_BusinessImages_Businesses] FOREIGN KEY([businessID])
REFERENCES [dbo].[Businesses] ([businessID])
GO
ALTER TABLE [dbo].[BusinessImages] CHECK CONSTRAINT [FK_BusinessImages_Businesses]
GO
ALTER TABLE [dbo].[Jobs]  WITH CHECK ADD  CONSTRAINT [FK_Jobs_JobCategories] FOREIGN KEY([jobCategoryID])
REFERENCES [dbo].[JobCategories] ([jobCategoryID])
GO
ALTER TABLE [dbo].[Jobs] CHECK CONSTRAINT [FK_Jobs_JobCategories]
GO
USE [master]
GO
ALTER DATABASE [Almaz] SET  READ_WRITE 
GO
