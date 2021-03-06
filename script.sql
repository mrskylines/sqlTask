USE [new_db]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 04.06.2018 21:22:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ProdCategory] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Products]    Script Date: 04.06.2018 21:22:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ProdName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProductsCategories]    Script Date: 04.06.2018 21:22:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductsCategories](
	[ProdID] [int] NOT NULL,
	[CatID] [int] NOT NULL
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([ID], [ProdCategory]) VALUES (1, N'Овощи')
INSERT [dbo].[Categories] ([ID], [ProdCategory]) VALUES (2, N'Фрукты')
SET IDENTITY_INSERT [dbo].[Categories] OFF
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([ID], [ProdName]) VALUES (1, N'Банан')
INSERT [dbo].[Products] ([ID], [ProdName]) VALUES (2, N'Ананас')
INSERT [dbo].[Products] ([ID], [ProdName]) VALUES (3, N'Картошка')
INSERT [dbo].[Products] ([ID], [ProdName]) VALUES (4, N'Помидоры')
INSERT [dbo].[Products] ([ID], [ProdName]) VALUES (5, N'Огурцы')
INSERT [dbo].[Products] ([ID], [ProdName]) VALUES (6, N'Греча')
SET IDENTITY_INSERT [dbo].[Products] OFF
INSERT [dbo].[ProductsCategories] ([ProdID], [CatID]) VALUES (1, 2)
INSERT [dbo].[ProductsCategories] ([ProdID], [CatID]) VALUES (2, 2)
INSERT [dbo].[ProductsCategories] ([ProdID], [CatID]) VALUES (3, 1)
INSERT [dbo].[ProductsCategories] ([ProdID], [CatID]) VALUES (4, 1)
INSERT [dbo].[ProductsCategories] ([ProdID], [CatID]) VALUES (5, 1)
