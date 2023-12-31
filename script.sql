USE [scriptpen]
GO
/****** Object:  Table [dbo].[Color]    Script Date: 14.06.2023 22:03:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Color](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Color] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pen]    Script Date: 14.06.2023 22:03:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pen](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Price] [decimal](18, 0) NULL,
	[Image] [image] NULL,
	[TypeId] [int] NULL,
	[ColorId] [int] NULL,
	[ViewId] [int] NULL,
 CONSTRAINT [PK_Pen] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 14.06.2023 22:03:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Type]    Script Date: 14.06.2023 22:03:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Type](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Type] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Use]    Script Date: 14.06.2023 22:03:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Use](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Login] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
	[RoleId] [int] NULL,
 CONSTRAINT [PK_Use] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[View]    Script Date: 14.06.2023 22:03:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[View](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_View] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Color] ON 

INSERT [dbo].[Color] ([Id], [Name]) VALUES (1, N'Черная')
INSERT [dbo].[Color] ([Id], [Name]) VALUES (2, N'Синия')
INSERT [dbo].[Color] ([Id], [Name]) VALUES (3, N'Красаня')
INSERT [dbo].[Color] ([Id], [Name]) VALUES (4, N'Зеленая')
SET IDENTITY_INSERT [dbo].[Color] OFF
GO
SET IDENTITY_INSERT [dbo].[Pen] ON 

INSERT [dbo].[Pen] ([Id], [Name], [Price], [Image], [TypeId], [ColorId], [ViewId]) VALUES (2, N'китайская ручка', CAST(60 AS Decimal(18, 0)), NULL, 3, 4, 2)
INSERT [dbo].[Pen] ([Id], [Name], [Price], [Image], [TypeId], [ColorId], [ViewId]) VALUES (3, N'ручка-ластик', CAST(70 AS Decimal(18, 0)), NULL, 1, 2, 1)
INSERT [dbo].[Pen] ([Id], [Name], [Price], [Image], [TypeId], [ColorId], [ViewId]) VALUES (4, N'стирающая ручка', CAST(120 AS Decimal(18, 0)), NULL, 2, 1, 2)
INSERT [dbo].[Pen] ([Id], [Name], [Price], [Image], [TypeId], [ColorId], [ViewId]) VALUES (5, N'ручка брауберг', CAST(90 AS Decimal(18, 0)), NULL, 3, 2, 2)
INSERT [dbo].[Pen] ([Id], [Name], [Price], [Image], [TypeId], [ColorId], [ViewId]) VALUES (6, N'ручка - стилус', CAST(90 AS Decimal(18, 0)), NULL, 2, 3, 1)
INSERT [dbo].[Pen] ([Id], [Name], [Price], [Image], [TypeId], [ColorId], [ViewId]) VALUES (7, N'ручкка кохинор', CAST(30 AS Decimal(18, 0)), NULL, 2, 3, 3)
INSERT [dbo].[Pen] ([Id], [Name], [Price], [Image], [TypeId], [ColorId], [ViewId]) VALUES (8, N'pen1', CAST(11 AS Decimal(18, 0)), NULL, 1, 3, NULL)
INSERT [dbo].[Pen] ([Id], [Name], [Price], [Image], [TypeId], [ColorId], [ViewId]) VALUES (9, N'fffff', CAST(333 AS Decimal(18, 0)), NULL, 3, 2, NULL)
SET IDENTITY_INSERT [dbo].[Pen] OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([Id], [Name]) VALUES (1, N'Админ')
INSERT [dbo].[Role] ([Id], [Name]) VALUES (2, N'Клиент')
INSERT [dbo].[Role] ([Id], [Name]) VALUES (3, N'Пользователь')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[Type] ON 

INSERT [dbo].[Type] ([Id], [Name]) VALUES (1, N'Шариковая')
INSERT [dbo].[Type] ([Id], [Name]) VALUES (2, N'Гелевая')
INSERT [dbo].[Type] ([Id], [Name]) VALUES (3, N'Перо')
SET IDENTITY_INSERT [dbo].[Type] OFF
GO
SET IDENTITY_INSERT [dbo].[Use] ON 

INSERT [dbo].[Use] ([Id], [Name], [Login], [Password], [Phone], [RoleId]) VALUES (1, N'Иван', N'1', N'1', NULL, 1)
INSERT [dbo].[Use] ([Id], [Name], [Login], [Password], [Phone], [RoleId]) VALUES (2, N'Илья', N'2', N'2', NULL, 2)
INSERT [dbo].[Use] ([Id], [Name], [Login], [Password], [Phone], [RoleId]) VALUES (3, N'Игорь', N'3', N'3', NULL, 3)
INSERT [dbo].[Use] ([Id], [Name], [Login], [Password], [Phone], [RoleId]) VALUES (4, N'12', N'12', N'12', N'12', 3)
INSERT [dbo].[Use] ([Id], [Name], [Login], [Password], [Phone], [RoleId]) VALUES (5, N'UTHJ', N'123', N'12', N'674857678', 3)
INSERT [dbo].[Use] ([Id], [Name], [Login], [Password], [Phone], [RoleId]) VALUES (6, N'папа', N'13', N'13', N'888888888888', 3)
INSERT [dbo].[Use] ([Id], [Name], [Login], [Password], [Phone], [RoleId]) VALUES (7, N'gggg', N'1234', N'1', N'222', 3)
INSERT [dbo].[Use] ([Id], [Name], [Login], [Password], [Phone], [RoleId]) VALUES (8, N'ddd', N'111', N'111', N'222', 3)
INSERT [dbo].[Use] ([Id], [Name], [Login], [Password], [Phone], [RoleId]) VALUES (9, N'sss', N'124', N'111', N'222', 3)
INSERT [dbo].[Use] ([Id], [Name], [Login], [Password], [Phone], [RoleId]) VALUES (10, N'sss', N'1242', N'111', N'222', 3)
SET IDENTITY_INSERT [dbo].[Use] OFF
GO
SET IDENTITY_INSERT [dbo].[View] ON 

INSERT [dbo].[View] ([Id], [Name]) VALUES (1, N'Механическая')
INSERT [dbo].[View] ([Id], [Name]) VALUES (2, N'В пластиковом корпусе')
INSERT [dbo].[View] ([Id], [Name]) VALUES (3, N'Классик')
SET IDENTITY_INSERT [dbo].[View] OFF
GO
ALTER TABLE [dbo].[Pen]  WITH CHECK ADD  CONSTRAINT [FK_Pen_Color] FOREIGN KEY([ColorId])
REFERENCES [dbo].[Color] ([Id])
GO
ALTER TABLE [dbo].[Pen] CHECK CONSTRAINT [FK_Pen_Color]
GO
ALTER TABLE [dbo].[Pen]  WITH CHECK ADD  CONSTRAINT [FK_Pen_Type] FOREIGN KEY([TypeId])
REFERENCES [dbo].[Type] ([Id])
GO
ALTER TABLE [dbo].[Pen] CHECK CONSTRAINT [FK_Pen_Type]
GO
ALTER TABLE [dbo].[Pen]  WITH CHECK ADD  CONSTRAINT [FK_Pen_View] FOREIGN KEY([ViewId])
REFERENCES [dbo].[View] ([Id])
GO
ALTER TABLE [dbo].[Pen] CHECK CONSTRAINT [FK_Pen_View]
GO
ALTER TABLE [dbo].[Use]  WITH CHECK ADD  CONSTRAINT [FK_Use_Role] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Role] ([Id])
GO
ALTER TABLE [dbo].[Use] CHECK CONSTRAINT [FK_Use_Role]
GO
