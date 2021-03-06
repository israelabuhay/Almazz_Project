USE [master]
GO
/****** Object:  Database [Almaz]    Script Date: 17/03/2019 21:45:08 ******/
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
/****** Object:  Table [dbo].[AcademicInstitution]    Script Date: 17/03/2019 21:45:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AcademicInstitution](
	[insID] [int] IDENTITY(1,1) NOT NULL,
	[insName] [varchar](max) NULL,
	[insDesc] [varchar](max) NULL,
	[insCat] [varchar](max) NULL,
	[insCity] [varchar](max) NULL,
	[insAddress] [varchar](max) NULL,
	[insPhone] [varchar](15) NULL,
	[insWebsite] [varchar](max) NULL,
	[insEmail] [varchar](max) NULL,
	[active] [int] NULL,
 CONSTRAINT [PK_AcademicInstitution] PRIMARY KEY CLUSTERED 
(
	[insID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AlmazBusinessClients]    Script Date: 17/03/2019 21:45:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AlmazBusinessClients](
	[userID] [int] IDENTITY(1,1) NOT NULL,
	[userFirstName] [varchar](20) NULL,
	[userLastName] [varchar](20) NULL,
	[userImage] [varchar](max) NULL,
	[userJoinDate] [varchar](20) NULL,
	[userEmail] [varchar](max) NULL,
	[userPassword] [varchar](max) NULL,
	[active] [int] NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[userID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BusinessCategories]    Script Date: 17/03/2019 21:45:08 ******/
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
/****** Object:  Table [dbo].[Businesses]    Script Date: 17/03/2019 21:45:08 ******/
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
	[businessEmail] [varchar](max) NULL,
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
/****** Object:  Table [dbo].[BusinessFTcategories]    Script Date: 17/03/2019 21:45:08 ******/
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
/****** Object:  Table [dbo].[BusinessImages]    Script Date: 17/03/2019 21:45:09 ******/
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
/****** Object:  Table [dbo].[JobCategories]    Script Date: 17/03/2019 21:45:09 ******/
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
/****** Object:  Table [dbo].[Jobs]    Script Date: 17/03/2019 21:45:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Jobs](
	[jobID] [int] IDENTITY(1,1) NOT NULL,
	[userID] [int] NOT NULL,
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
ALTER TABLE [dbo].[Businesses]  WITH CHECK ADD  CONSTRAINT [FK_Businesses_Users] FOREIGN KEY([userID])
REFERENCES [dbo].[AlmazBusinessClients] ([userID])
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
ALTER TABLE [dbo].[Jobs]  WITH CHECK ADD  CONSTRAINT [FK_Jobs_AlmazBusinessClients] FOREIGN KEY([userID])
REFERENCES [dbo].[AlmazBusinessClients] ([userID])
GO
ALTER TABLE [dbo].[Jobs] CHECK CONSTRAINT [FK_Jobs_AlmazBusinessClients]
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
