USE [master]
GO
/****** Object:  Database [cleanUpIndia1]    Script Date: 08/30/2022 20:41:20 ******/
CREATE DATABASE [cleanUpIndia1] ON  PRIMARY 
( NAME = N'cleanUpIndia1', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\cleanUpIndia1.mdf' , SIZE = 2048KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'cleanUpIndia1_log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\cleanUpIndia1_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [cleanUpIndia1] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [cleanUpIndia1].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [cleanUpIndia1] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [cleanUpIndia1] SET ANSI_NULLS OFF
GO
ALTER DATABASE [cleanUpIndia1] SET ANSI_PADDING OFF
GO
ALTER DATABASE [cleanUpIndia1] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [cleanUpIndia1] SET ARITHABORT OFF
GO
ALTER DATABASE [cleanUpIndia1] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [cleanUpIndia1] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [cleanUpIndia1] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [cleanUpIndia1] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [cleanUpIndia1] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [cleanUpIndia1] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [cleanUpIndia1] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [cleanUpIndia1] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [cleanUpIndia1] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [cleanUpIndia1] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [cleanUpIndia1] SET  DISABLE_BROKER
GO
ALTER DATABASE [cleanUpIndia1] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [cleanUpIndia1] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [cleanUpIndia1] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [cleanUpIndia1] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [cleanUpIndia1] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [cleanUpIndia1] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [cleanUpIndia1] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [cleanUpIndia1] SET  READ_WRITE
GO
ALTER DATABASE [cleanUpIndia1] SET RECOVERY SIMPLE
GO
ALTER DATABASE [cleanUpIndia1] SET  MULTI_USER
GO
ALTER DATABASE [cleanUpIndia1] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [cleanUpIndia1] SET DB_CHAINING OFF
GO
USE [cleanUpIndia1]
GO
/****** Object:  Table [dbo].[TBL_registration]    Script Date: 08/30/2022 20:41:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TBL_registration](
	[name] [varchar](50) NULL,
	[Father_name] [varchar](50) NULL,
	[Mother_name] [varchar](50) NULL,
	[address] [varchar](50) NULL,
	[Mobile_number] [varchar](50) NULL,
	[Email_address] [varchar](50) NULL,
	[gender] [varchar](50) NULL,
	[city] [varchar](50) NULL,
	[pic] [varchar](max) NULL,
	[regId] [int] NOT NULL,
	[RegDate] [datetime] NULL,
 CONSTRAINT [PK_TBL_registration] PRIMARY KEY CLUSTERED 
(
	[regId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[TBL_registration] ([name], [Father_name], [Mother_name], [address], [Mobile_number], [Email_address], [gender], [city], [pic], [regId], [RegDate]) VALUES (N'shruti tiwari', N'Ramesh kumar tiwari', N'seema tiwari', N'ballia', N'234385456362', N'shrutig1731@gmail.com', N'female', N'varansi', N'IMG-20210916-WA0051.jpg', 5, CAST(0x0000AF0101408DEF AS DateTime))
INSERT [dbo].[TBL_registration] ([name], [Father_name], [Mother_name], [address], [Mobile_number], [Email_address], [gender], [city], [pic], [regId], [RegDate]) VALUES (N'Nitu prajapati', N'Mohan Prajapati', N'Pramila Devi', N'Harpur', N'9794469275', N'nituballia2004@gmail.com', N'female', N'lucknow', N'IMG-20210914-WA0016.jpg', 7, CAST(0x0000AF0101418937 AS DateTime))
/****** Object:  Table [dbo].[TBL_membership]    Script Date: 08/30/2022 20:41:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TBL_membership](
	[name] [varchar](50) NULL,
	[email] [varchar](50) NOT NULL,
	[phone] [varchar](50) NULL,
	[address] [varchar](50) NULL,
	[message] [varchar](50) NULL,
 CONSTRAINT [PK_TBL_membership] PRIMARY KEY CLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[TBL_membership] ([name], [email], [phone], [address], [message]) VALUES (N'shruti tiwari', N'shrutig1731@gmail.com', N'9129853893', N'ballia', N'it my second form')
/****** Object:  Table [dbo].[TBL_Contact]    Script Date: 08/30/2022 20:41:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TBL_Contact](
	[fname] [varchar](50) NULL,
	[lname] [varchar](50) NULL,
	[emailId] [varchar](50) NULL,
	[mobileNo] [varchar](50) NOT NULL,
	[msg] [varchar](max) NULL,
 CONSTRAINT [PK_TBL_Contact] PRIMARY KEY CLUSTERED 
(
	[mobileNo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[TBL_Contact] ([fname], [lname], [emailId], [mobileNo], [msg]) VALUES (N'Shruti', N'Tiwari', N'shrutig1731@gmail.com', N'9129853893', N'This is My first Website')
