USE [master]
GO
/****** Object:  Database [R51_ProjectDB]    Script Date: 1/18/2023 9:23:24 PM ******/
CREATE DATABASE [R51_ProjectDB]
GO
USE [R51_ProjectDB]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 1/18/2023 9:23:24 PM ******/
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
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 1/18/2023 9:23:24 PM ******/
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
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 1/18/2023 9:23:24 PM ******/
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
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 1/18/2023 9:23:24 PM ******/
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
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 1/18/2023 9:23:24 PM ******/
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
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 1/18/2023 9:23:24 PM ******/
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
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 1/18/2023 9:23:24 PM ******/
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
	[CellPhone] [nvarchar](max) NULL,
	[Country] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 1/18/2023 9:23:24 PM ******/
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
/****** Object:  Table [dbo].[Courses]    Script Date: 1/18/2023 9:23:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Courses](
	[CourseId] [int] IDENTITY(1,1) NOT NULL,
	[CourseName] [nvarchar](max) NULL,
	[Fee] [decimal](18, 2) NOT NULL,
	[Available] [bit] NOT NULL,
	[CourseTitleId] [int] NOT NULL,
 CONSTRAINT [PK_Courses] PRIMARY KEY CLUSTERED 
(
	[CourseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CourseTitles]    Script Date: 1/18/2023 9:23:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CourseTitles](
	[CourseTitleId] [int] IDENTITY(1,1) NOT NULL,
	[CourseTitleName] [nvarchar](max) NULL,
 CONSTRAINT [PK_CourseTitles] PRIMARY KEY CLUSTERED 
(
	[CourseTitleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EntryCourses]    Script Date: 1/18/2023 9:23:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EntryCourses](
	[EntryCourseId] [int] IDENTITY(1,1) NOT NULL,
	[StudentId] [int] NOT NULL,
	[CourseId] [int] NOT NULL,
 CONSTRAINT [PK_EntryCourses] PRIMARY KEY CLUSTERED 
(
	[EntryCourseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Students]    Script Date: 1/18/2023 9:23:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Students](
	[StudentId] [int] IDENTITY(1,1) NOT NULL,
	[StudentName] [nvarchar](max) NULL,
	[Age] [int] NOT NULL,
	[BirthDate] [datetime2](7) NOT NULL,
	[Picture] [nvarchar](max) NULL,
 CONSTRAINT [PK_Students] PRIMARY KEY CLUSTERED 
(
	[StudentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'00000000000000_CreateIdentitySchema', N'6.0.13')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230113101037_Ra', N'6.0.13')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230116153102_ScriptR', N'6.0.13')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'118abafe-8f23-4c90-a9f8-b63352832729', N'Stuff', N'STUFF', N'18c709d5-325d-42bc-a568-104b2a3ead34')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'a429c6df-210f-4e62-a0a0-913627344711', N'Admin', N'ADMIN', N'c515ac17-bed5-44d4-b543-219e12c315bd')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'6889a34a-ed54-407b-82b0-fe87423ec2b7', N'118abafe-8f23-4c90-a9f8-b63352832729')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'26c368c8-a683-4a47-83f6-26de48752d3c', N'a429c6df-210f-4e62-a0a0-913627344711')
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [CellPhone], [Country], [Name]) VALUES (N'26c368c8-a683-4a47-83f6-26de48752d3c', N'Rakim', N'RAKIM', N'rakimhasib786@gmail.com', N'RAKIMHASIB786@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEOM+1VFFcyLqAWWCmy6Kv/gAHYJxRVrduWgEWIj0SkoQ9i93pR0hlNqaIDIoRWK2hg==', N'C7D6IDJTHIG52HO6ZIIRSGUSFQXUZ7OM', N'124e6888-c07d-4fe4-bd90-b2e791c91e8b', NULL, 0, 0, NULL, 1, 0, N'01646053194', N'Bangladesh', N'Rakim')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [CellPhone], [Country], [Name]) VALUES (N'6889a34a-ed54-407b-82b0-fe87423ec2b7', N'Ahad', N'AHAD', N'hakimhasib786@gmai.com', N'HAKIMHASIB786@GMAI.COM', 0, N'AQAAAAEAACcQAAAAELqgHhDrsUaf3vUkGA+tY3In/XRBLPFbWZdgkAiE8MDnJhEbQJ6gc/6SWtVK8tKDPw==', N'6OJGEV6H7DCSTNSA5NSWG7YJXOOP656A', N'a4c12713-0d8c-48e8-b046-76e328c46bdc', NULL, 0, 0, NULL, 1, 0, N'01646053194', N'Bangladesh', N'Ahad')
GO
SET IDENTITY_INSERT [dbo].[Courses] ON 

INSERT [dbo].[Courses] ([CourseId], [CourseName], [Fee], [Available], [CourseTitleId]) VALUES (1, N'Sql', CAST(5000.00 AS Decimal(18, 2)), 1, 1)
INSERT [dbo].[Courses] ([CourseId], [CourseName], [Fee], [Available], [CourseTitleId]) VALUES (2, N'C#', CAST(16000.00 AS Decimal(18, 2)), 1, 1)
INSERT [dbo].[Courses] ([CourseId], [CourseName], [Fee], [Available], [CourseTitleId]) VALUES (3, N'UML', CAST(7000.00 AS Decimal(18, 2)), 1, 1)
INSERT [dbo].[Courses] ([CourseId], [CourseName], [Fee], [Available], [CourseTitleId]) VALUES (5, N'HTML', CAST(6000.00 AS Decimal(18, 2)), 1, 1)
SET IDENTITY_INSERT [dbo].[Courses] OFF
GO
SET IDENTITY_INSERT [dbo].[CourseTitles] ON 

INSERT [dbo].[CourseTitles] ([CourseTitleId], [CourseTitleName]) VALUES (1, N'C#')
INSERT [dbo].[CourseTitles] ([CourseTitleId], [CourseTitleName]) VALUES (2, N'GAVE')
INSERT [dbo].[CourseTitles] ([CourseTitleId], [CourseTitleName]) VALUES (3, N'Networking')
INSERT [dbo].[CourseTitles] ([CourseTitleId], [CourseTitleName]) VALUES (4, N'DDD')
INSERT [dbo].[CourseTitles] ([CourseTitleId], [CourseTitleName]) VALUES (5, N'Java')
INSERT [dbo].[CourseTitles] ([CourseTitleId], [CourseTitleName]) VALUES (6, N'PHP')
SET IDENTITY_INSERT [dbo].[CourseTitles] OFF
GO
SET IDENTITY_INSERT [dbo].[EntryCourses] ON 

INSERT [dbo].[EntryCourses] ([EntryCourseId], [StudentId], [CourseId]) VALUES (18, 2, 3)
INSERT [dbo].[EntryCourses] ([EntryCourseId], [StudentId], [CourseId]) VALUES (19, 2, 2)
INSERT [dbo].[EntryCourses] ([EntryCourseId], [StudentId], [CourseId]) VALUES (20, 2, 1)
INSERT [dbo].[EntryCourses] ([EntryCourseId], [StudentId], [CourseId]) VALUES (21, 2, 2)
INSERT [dbo].[EntryCourses] ([EntryCourseId], [StudentId], [CourseId]) VALUES (22, 3, 1)
INSERT [dbo].[EntryCourses] ([EntryCourseId], [StudentId], [CourseId]) VALUES (23, 3, 2)
INSERT [dbo].[EntryCourses] ([EntryCourseId], [StudentId], [CourseId]) VALUES (24, 3, 3)
INSERT [dbo].[EntryCourses] ([EntryCourseId], [StudentId], [CourseId]) VALUES (25, 4, 1)
INSERT [dbo].[EntryCourses] ([EntryCourseId], [StudentId], [CourseId]) VALUES (26, 4, 2)
INSERT [dbo].[EntryCourses] ([EntryCourseId], [StudentId], [CourseId]) VALUES (27, 4, 3)
INSERT [dbo].[EntryCourses] ([EntryCourseId], [StudentId], [CourseId]) VALUES (28, 5, 1)
INSERT [dbo].[EntryCourses] ([EntryCourseId], [StudentId], [CourseId]) VALUES (29, 5, 2)
INSERT [dbo].[EntryCourses] ([EntryCourseId], [StudentId], [CourseId]) VALUES (30, 5, 3)
SET IDENTITY_INSERT [dbo].[EntryCourses] OFF
GO
SET IDENTITY_INSERT [dbo].[Students] ON 

INSERT [dbo].[Students] ([StudentId], [StudentName], [Age], [BirthDate], [Picture]) VALUES (2, N'Rakim', 26, CAST(N'2023-01-27T00:00:00.0000000' AS DateTime2), N'/Images/Rakim picture.png')
INSERT [dbo].[Students] ([StudentId], [StudentName], [Age], [BirthDate], [Picture]) VALUES (3, N'Hasib', 26, CAST(N'2023-01-28T00:00:00.0000000' AS DateTime2), N'/Images/IMG_1642056124733.jpg')
INSERT [dbo].[Students] ([StudentId], [StudentName], [Age], [BirthDate], [Picture]) VALUES (4, N'Rakibul Hasib', 26, CAST(N'2023-02-04T00:00:00.0000000' AS DateTime2), N'/Images/IMG_1642056124733_1.jpg')
INSERT [dbo].[Students] ([StudentId], [StudentName], [Age], [BirthDate], [Picture]) VALUES (5, N'Shawon', 27, CAST(N'2023-01-19T00:00:00.0000000' AS DateTime2), N'/Images/Rakim picture.png')
SET IDENTITY_INSERT [dbo].[Students] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 1/18/2023 9:23:25 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 1/18/2023 9:23:25 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 1/18/2023 9:23:25 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 1/18/2023 9:23:25 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 1/18/2023 9:23:25 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 1/18/2023 9:23:25 PM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 1/18/2023 9:23:25 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Courses_CourseTitleId]    Script Date: 1/18/2023 9:23:25 PM ******/
CREATE NONCLUSTERED INDEX [IX_Courses_CourseTitleId] ON [dbo].[Courses]
(
	[CourseTitleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_EntryCourses_CourseId]    Script Date: 1/18/2023 9:23:25 PM ******/
CREATE NONCLUSTERED INDEX [IX_EntryCourses_CourseId] ON [dbo].[EntryCourses]
(
	[CourseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_EntryCourses_StudentId]    Script Date: 1/18/2023 9:23:25 PM ******/
CREATE NONCLUSTERED INDEX [IX_EntryCourses_StudentId] ON [dbo].[EntryCourses]
(
	[StudentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
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
ALTER TABLE [dbo].[Courses]  WITH CHECK ADD  CONSTRAINT [FK_Courses_CourseTitles_CourseTitleId] FOREIGN KEY([CourseTitleId])
REFERENCES [dbo].[CourseTitles] ([CourseTitleId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Courses] CHECK CONSTRAINT [FK_Courses_CourseTitles_CourseTitleId]
GO
ALTER TABLE [dbo].[EntryCourses]  WITH CHECK ADD  CONSTRAINT [FK_EntryCourses_Courses_CourseId] FOREIGN KEY([CourseId])
REFERENCES [dbo].[Courses] ([CourseId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EntryCourses] CHECK CONSTRAINT [FK_EntryCourses_Courses_CourseId]
GO
ALTER TABLE [dbo].[EntryCourses]  WITH CHECK ADD  CONSTRAINT [FK_EntryCourses_Students_StudentId] FOREIGN KEY([StudentId])
REFERENCES [dbo].[Students] ([StudentId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EntryCourses] CHECK CONSTRAINT [FK_EntryCourses_Students_StudentId]
GO
USE [master]
GO
ALTER DATABASE [R51_ProjectDB] SET  READ_WRITE 
GO
