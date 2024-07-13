create database EShopper
use EShopper
GO
CREATE TABLE [dbo].[bill](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[created_date] [date] NULL,
	[status] [nvarchar](50) NULL,
	[order_id] [int] NULL,
	[user_id] [int] NULL,
 CONSTRAINT [PK_bill] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[brand]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[brand](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL,
 CONSTRAINT [PK_brand] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[order]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[order](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[created_date] [date] NULL,
	[user_id] [int] NULL,
 CONSTRAINT [PK_order] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[order_detail]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[order_detail](
	[product_quantity] [int] NOT NULL,
	[product_id] [int] NOT NULL,
	[order_id] [int] NOT NULL,
	[price] [float] NOT NULL,
 CONSTRAINT [PK_order_detail] PRIMARY KEY CLUSTERED 
(
	[product_id] ASC,
	[order_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product]    ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](100) NULL,
	[price] [float] NULL,
	[quantity] [int] NULL,
	[description] [text] NULL,
	[image_url] [varchar](max) NULL,
	[brand_id] [int] NULL,
	[release_date] [date] NULL,
 CONSTRAINT [PK_product] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[role]    ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[role](
	[id] [int] NOT NULL,
	[name] [varchar](50) NULL,
 CONSTRAINT [PK_role] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](50) NULL,
	[password] [varchar](50) NULL,
	[fullname] [nvarchar](50) NULL,
	[email] [varchar](50) NULL,
	[phone] [varchar](10) NULL,
	[address] [nvarchar](50) NULL,
	[role_id] [int] NULL,
	[banned] [bit] NULL,
 CONSTRAINT [PK_user] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[bill] ON 

INSERT [dbo].[bill] ([id], [created_date], [status], [order_id], [user_id]) VALUES (72, CAST(N'2023-07-13' AS Date), N'done', 78, 12)
INSERT [dbo].[bill] ([id], [created_date], [status], [order_id], [user_id]) VALUES (73, CAST(N'2023-07-13' AS Date), N'process', 79, 12)
INSERT [dbo].[bill] ([id], [created_date], [status], [order_id], [user_id]) VALUES (74, CAST(N'2023-07-13' AS Date), N'done', 80, 12)
INSERT [dbo].[bill] ([id], [created_date], [status], [order_id], [user_id]) VALUES (75, CAST(N'2023-07-14' AS Date), N'wait', 81, 9)
INSERT [dbo].[bill] ([id], [created_date], [status], [order_id], [user_id]) VALUES (76, CAST(N'2023-07-17' AS Date), N'process', 82, 2)
INSERT [dbo].[bill] ([id], [created_date], [status], [order_id], [user_id]) VALUES (77, CAST(N'2023-07-20' AS Date), N'wait', 83, 13)
INSERT [dbo].[bill] ([id], [created_date], [status], [order_id], [user_id]) VALUES (78, CAST(N'2023-07-20' AS Date), N'wait', 84, 13)
SET IDENTITY_INSERT [dbo].[bill] OFF
GO
SET IDENTITY_INSERT [dbo].[brand] ON 

INSERT [dbo].[brand] ([id], [name]) VALUES (1, N'Macbook (Apple)')
INSERT [dbo].[brand] ([id], [name]) VALUES (2, N'Dell')
INSERT [dbo].[brand] ([id], [name]) VALUES (3, N'Lenovo')
INSERT [dbo].[brand] ([id], [name]) VALUES (4, N'Asus')
INSERT [dbo].[brand] ([id], [name]) VALUES (5, N'Acer')
INSERT [dbo].[brand] ([id], [name]) VALUES (6, N'Galaxy Book (Samsung)')
SET IDENTITY_INSERT [dbo].[brand] OFF
GO
SET IDENTITY_INSERT [dbo].[order] ON 

INSERT [dbo].[order] ([id], [created_date], [user_id]) VALUES (78, CAST(N'2023-07-13' AS Date), 12)
INSERT [dbo].[order] ([id], [created_date], [user_id]) VALUES (79, CAST(N'2023-07-13' AS Date), 12)
INSERT [dbo].[order] ([id], [created_date], [user_id]) VALUES (80, CAST(N'2023-07-13' AS Date), 12)
INSERT [dbo].[order] ([id], [created_date], [user_id]) VALUES (81, CAST(N'2023-07-14' AS Date), 9)
INSERT [dbo].[order] ([id], [created_date], [user_id]) VALUES (82, CAST(N'2023-07-17' AS Date), 2)
INSERT [dbo].[order] ([id], [created_date], [user_id]) VALUES (83, CAST(N'2023-07-20' AS Date), 13)
INSERT [dbo].[order] ([id], [created_date], [user_id]) VALUES (84, CAST(N'2023-07-20' AS Date), 13)
SET IDENTITY_INSERT [dbo].[order] OFF
GO
INSERT [dbo].[order_detail] ([product_quantity], [product_id], [order_id], [price]) VALUES (3, 1, 78, 784.6)
INSERT [dbo].[order_detail] ([product_quantity], [product_id], [order_id], [price]) VALUES (3, 1, 81, 780.6)
INSERT [dbo].[order_detail] ([product_quantity], [product_id], [order_id], [price]) VALUES (5, 1, 83, 784.6)
INSERT [dbo].[order_detail] ([product_quantity], [product_id], [order_id], [price]) VALUES (5, 2, 81, 1158.2)
INSERT [dbo].[order_detail] ([product_quantity], [product_id], [order_id], [price]) VALUES (2, 2, 82, 1158.2)
INSERT [dbo].[order_detail] ([product_quantity], [product_id], [order_id], [price]) VALUES (7, 3, 78, 1450)
INSERT [dbo].[order_detail] ([product_quantity], [product_id], [order_id], [price]) VALUES (3, 4, 78, 2150.2)
INSERT [dbo].[order_detail] ([product_quantity], [product_id], [order_id], [price]) VALUES (1, 4, 79, 2150.2)
INSERT [dbo].[order_detail] ([product_quantity], [product_id], [order_id], [price]) VALUES (3, 4, 80, 2150.2)
INSERT [dbo].[order_detail] ([product_quantity], [product_id], [order_id], [price]) VALUES (5, 5, 82, 1250.7)
INSERT [dbo].[order_detail] ([product_quantity], [product_id], [order_id], [price]) VALUES (2, 6, 78, 2551.2)
INSERT [dbo].[order_detail] ([product_quantity], [product_id], [order_id], [price]) VALUES (1, 6, 79, 2551.2)
INSERT [dbo].[order_detail] ([product_quantity], [product_id], [order_id], [price]) VALUES (3, 8, 81, 2064.9)
INSERT [dbo].[order_detail] ([product_quantity], [product_id], [order_id], [price]) VALUES (3, 8, 82, 2064.9)
INSERT [dbo].[order_detail] ([product_quantity], [product_id], [order_id], [price]) VALUES (1, 9, 79, 1896.3)
INSERT [dbo].[order_detail] ([product_quantity], [product_id], [order_id], [price]) VALUES (5, 9, 80, 1896.3)
INSERT [dbo].[order_detail] ([product_quantity], [product_id], [order_id], [price]) VALUES (8, 10, 82, 3245.1)
INSERT [dbo].[order_detail] ([product_quantity], [product_id], [order_id], [price]) VALUES (7, 17, 80, 1050)
INSERT [dbo].[order_detail] ([product_quantity], [product_id], [order_id], [price]) VALUES (3, 23, 80, 1176.9)
INSERT [dbo].[order_detail] ([product_quantity], [product_id], [order_id], [price]) VALUES (5, 35, 80, 999.9)
INSERT [dbo].[order_detail] ([product_quantity], [product_id], [order_id], [price]) VALUES (3, 37, 80, 876.5)
INSERT [dbo].[order_detail] ([product_quantity], [product_id], [order_id], [price]) VALUES (3, 59, 82, 1888.8)
INSERT [dbo].[order_detail] ([product_quantity], [product_id], [order_id], [price]) VALUES (1, 63, 84, 4000)
GO
SET IDENTITY_INSERT [dbo].[product] ON 

INSERT [dbo].[product] ([id], [name], [price], [quantity], [description], [image_url], [brand_id], [release_date]) VALUES (1, N'MacBook Air 13 inch M1 2020 8CPU 7GPU 8GB/256GB', 784.6, 73, N'Apple''s stylish, high-performance laptop, delivering a seamless user experience and exceptional power in a compact design.', N'img/macbook-1.png', 1, CAST(N'2020-07-06' AS Date))
INSERT [dbo].[product] ([id], [name], [price], [quantity], [description], [image_url], [brand_id], [release_date]) VALUES (2, N'MacBook Air 13 inch M2 2022 8CPU 8GPU 8GB/256GB', 1158.2, 199, N'Apple''s stylish, high-performance laptop, delivering a seamless user experience and exceptional power in a compact design.', N'img/macbook-2.png', 1, CAST(N'2022-09-06' AS Date))
INSERT [dbo].[product] ([id], [name], [price], [quantity], [description], [image_url], [brand_id], [release_date]) VALUES (3, N'MacBook Pro 13 inch M2 2022 8CPU 10GPU 8GB/512GB', 1450, 176, N'Apple''s stylish, high-performance laptop, delivering a seamless user experience and exceptional power in a compact design.', N'img/macbook-3.png', 1, CAST(N'2022-09-06' AS Date))
INSERT [dbo].[product] ([id], [name], [price], [quantity], [description], [image_url], [brand_id], [release_date]) VALUES (4, N'MacBook Pro 14 inch M2 Pro 2023 10CPU 16GPU 16GB/512GB', 2150.2, 64, N'Apple''s stylish, high-performance laptop, delivering a seamless user experience and exceptional power in a compact design.', N'img/macbook-4.png', 1, CAST(N'2023-04-06' AS Date))
INSERT [dbo].[product] ([id], [name], [price], [quantity], [description], [image_url], [brand_id], [release_date]) VALUES (5, N'MacBook Air 13 inch M2 2022 8CPU 8GPU 16GB/256GB', 1250.7, 75, N'Apple''s stylish, high-performance laptop, delivering a seamless user experience and exceptional power in a compact design.', N'img/macbook-1.png', 1, CAST(N'2022-07-04' AS Date))
INSERT [dbo].[product] ([id], [name], [price], [quantity], [description], [image_url], [brand_id], [release_date]) VALUES (6, N'MacBook Pro 14 inch M2 Pro 2023 12CPU 19GPU 16GB/1TB', 2551.2, 60, N'Apple''s stylish, high-performance laptop, delivering a seamless user experience and exceptional power in a compact design.', N'img/macbook-6.png', 1, CAST(N'2023-04-06' AS Date))
INSERT [dbo].[product] ([id], [name], [price], [quantity], [description], [image_url], [brand_id], [release_date]) VALUES (7, N'MacBook Pro 16 inch M2 Pro 2023 12CPU 19GPU 16GB/512GB', 2486.4, 45, N'Apple''s stylish, high-performance laptop, delivering a seamless user experience and exceptional power in a compact design.', N'img/macbook-7.png', 1, CAST(N'2023-04-06' AS Date))
INSERT [dbo].[product] ([id], [name], [price], [quantity], [description], [image_url], [brand_id], [release_date]) VALUES (8, N'MacBook Pro 16 inch M1 Pro 2021 10CPU 16GPU 16GB/1TB', 2064.9, 74, N'Apple''s stylish, high-performance laptop, delivering a seamless user experience and exceptional power in a compact design.', N'img/macbook-8.png', 1, CAST(N'2021-06-17' AS Date))
INSERT [dbo].[product] ([id], [name], [price], [quantity], [description], [image_url], [brand_id], [release_date]) VALUES (9, N'MacBook Pro 14 inch M1 Pro 2021 10CPU 16GPU 16GB/1TB', 1896.3, 34, N'Apple''s stylish, high-performance laptop, delivering a seamless user experience and exceptional power in a compact design.', N'img/macbook-8.png', 1, CAST(N'2021-09-22' AS Date))
INSERT [dbo].[product] ([id], [name], [price], [quantity], [description], [image_url], [brand_id], [release_date]) VALUES (10, N'MacBook Pro 16 inch M2 Pro 2023 12CPU 19GPU 32GB/512GB', 3245.1, 21, N'Apple''s stylish, high-performance laptop, delivering a seamless user experience and exceptional power in a compact design.', N'img/macbook-10.png', 1, CAST(N'2023-04-06' AS Date))
INSERT [dbo].[product] ([id], [name], [price], [quantity], [description], [image_url], [brand_id], [release_date]) VALUES (11, N'MacBook Air 15 inch M2 2023 8CPU 10GPU 16GB/256GB', 1597.6, 160, N'Apple''s stylish, high-performance laptop, delivering a seamless user experience and exceptional power in a compact design.', N'img/macbook-11.png', 1, CAST(N'2023-04-07' AS Date))
INSERT [dbo].[product] ([id], [name], [price], [quantity], [description], [image_url], [brand_id], [release_date]) VALUES (12, N'MacBook Air 15 inch M2 2023 8CPU 10GPU 8GB/256GB', 1386.3, 61, N'Apple''s stylish, high-performance laptop, delivering a seamless user experience and exceptional power in a compact design.', N'img/macbook-12.png', 1, CAST(N'2023-06-07' AS Date))
INSERT [dbo].[product] ([id], [name], [price], [quantity], [description], [image_url], [brand_id], [release_date]) VALUES (13, N'Laptop Dell Vostro 16 V5620 i5 1240P/16GB/512GB/16"FHD+', 992.6, 48, N'The Dell laptop is a sleek and powerful device, featuring cutting-edge technology and a user-friendly interface for optimal productivity.', N'img/dell-vostro-1.png', 2, CAST(N'2022-11-21' AS Date))
INSERT [dbo].[product] ([id], [name], [price], [quantity], [description], [image_url], [brand_id], [release_date]) VALUES (14, N'Laptop Dell Vostro 15 V3520 i3 1215U/8GB/256GB/15.6"FHD', 525.5, 98, N'The Dell laptop is a sleek and powerful device, featuring cutting-edge technology and a user-friendly interface for optimal productivity.', N'img/dell-vostro-2.png', 2, CAST(N'2023-03-04' AS Date))
INSERT [dbo].[product] ([id], [name], [price], [quantity], [description], [image_url], [brand_id], [release_date]) VALUES (15, N'Laptop Dell Inspiron 15 N3520 i5 1235U/8GB/256GB/15.6"FHD', 681.7, 111, N'The Dell laptop is a sleek and powerful device, featuring cutting-edge technology and a user-friendly interface for optimal productivity.', N'img/dell-inspiron-3.png', 2, CAST(N'2022-11-06' AS Date))
INSERT [dbo].[product] ([id], [name], [price], [quantity], [description], [image_url], [brand_id], [release_date]) VALUES (16, N'Laptop Dell Inspiron 15 N3520 i3 1215U/8GB/256GB/15.6"FHD', 525.5, 88, N'The Dell laptop is a sleek and powerful device, featuring cutting-edge technology and a user-friendly interface for optimal productivity.', N'img/dell-inspiron-3.png', 2, CAST(N'2022-11-06' AS Date))
INSERT [dbo].[product] ([id], [name], [price], [quantity], [description], [image_url], [brand_id], [release_date]) VALUES (17, N'Laptop Dell Inspiron 16 N5620 i5 1240P/16GB/512GB/16.0"FHD', 1050, 160, N'The Dell laptop is a sleek and powerful device, featuring cutting-edge technology and a user-friendly interface for optimal productivity.', N'img/dell-inspiron-5.png', 2, CAST(N'2022-12-11' AS Date))
INSERT [dbo].[product] ([id], [name], [price], [quantity], [description], [image_url], [brand_id], [release_date]) VALUES (18, N'Laptop Dell Inspiron 16 N5620 i7 1255U/16GB/512GB/16.0"FHD+', 1219.8, 117, N'The Dell laptop is a sleek and powerful device, featuring cutting-edge technology and a user-friendly interface for optimal productivity.', N'img/dell-inspiron-5.png', 2, CAST(N'2022-12-11' AS Date))
INSERT [dbo].[product] ([id], [name], [price], [quantity], [description], [image_url], [brand_id], [release_date]) VALUES (19, N'Laptop Dell Inspiron 16 5620 i5 1240P/16GB/512GB/16.0" FHD+', 1050, 66, N'The Dell laptop is a sleek and powerful device, featuring cutting-edge technology and a user-friendly interface for optimal productivity.', N'img/dell-inspiron-5.png', 2, CAST(N'2022-12-11' AS Date))
INSERT [dbo].[product] ([id], [name], [price], [quantity], [description], [image_url], [brand_id], [release_date]) VALUES (20, N'Laptop Dell Inspiron 16 N5620 i7-1255U/16GB/512GB/16.0"FHD+', 1175.4, 89, N'The Dell laptop is a sleek and powerful device, featuring cutting-edge technology and a user-friendly interface for optimal productivity.', N'img/dell-inspiron-3.png', 2, CAST(N'2022-12-11' AS Date))
INSERT [dbo].[product] ([id], [name], [price], [quantity], [description], [image_url], [brand_id], [release_date]) VALUES (21, N'Laptop Dell Vostro V5620 i7 1260P/16GB/512GB/16.0"FHD+', 1289.6, 44, N'The Dell laptop is a sleek and powerful device, featuring cutting-edge technology and a user-friendly interface for optimal productivity.', N'img/dell-vostro-1.png', 2, CAST(N'2023-04-03' AS Date))
INSERT [dbo].[product] ([id], [name], [price], [quantity], [description], [image_url], [brand_id], [release_date]) VALUES (22, N'Laptop Lenovo Gaming Legion 5 15ARH7H R7 6800H/16GB/512GB/15.6"WQHD/Nvidia RTX 3060 6GB', 1265.9, 75, N'The Lenovo laptop is a sleek and powerful device, designed for optimal performance and productivity on the go.', N'img/lenovo-legion-5.png', 3, CAST(N'2022-09-11' AS Date))
INSERT [dbo].[product] ([id], [name], [price], [quantity], [description], [image_url], [brand_id], [release_date]) VALUES (23, N'Laptop Lenovo Gaming Legion 5 15IAH7H i5 12500H/16G/512G/15.6"2K/GeForce RTX 3060 6GB', 1176.9, 124, N'The Lenovo laptop is a sleek and powerful device, designed for optimal performance and productivity on the go.', N'img/lenovo-legion-5.png', 3, CAST(N'2022-09-11' AS Date))
INSERT [dbo].[product] ([id], [name], [price], [quantity], [description], [image_url], [brand_id], [release_date]) VALUES (24, N'Laptop Lenovo Gaming Legion 5 15ARH7H R5 6600H/16GB/512GB/15.6"WQHD/Nividia RTX 3060 6GB', 1145.9, 65, N'The Lenovo laptop is a sleek and powerful device, designed for optimal performance and productivity on the go.', N'img/lenovo-legion-5.png', 3, CAST(N'2022-09-11' AS Date))
INSERT [dbo].[product] ([id], [name], [price], [quantity], [description], [image_url], [brand_id], [release_date]) VALUES (25, N'Laptop Lenovo ThinkPad T14s Gen 2 i5 1135G7/16GB/512GB/14.0FHD', 1030.2, 44, N'The Lenovo laptop is a sleek and powerful device, designed for optimal performance and productivity on the go.', N'img/lenovo-thinkpad-t14s.png', 3, CAST(N'2022-09-12' AS Date))
INSERT [dbo].[product] ([id], [name], [price], [quantity], [description], [image_url], [brand_id], [release_date]) VALUES (26, N'Laptop Lenovo ThinkPad P15s G2 T i5 1135G7/16GB/512GB/15.6"FHD/Quadro T500 4GB', 1289.6, 23, N'The Lenovo laptop is a sleek and powerful device, designed for optimal performance and productivity on the go.', N'img/lenovo-thinkpad-p15s.png', 3, CAST(N'2021-06-06' AS Date))
INSERT [dbo].[product] ([id], [name], [price], [quantity], [description], [image_url], [brand_id], [release_date]) VALUES (27, N'Laptop Lenovo IdeaPad 3 14IAU7 i3 1215U/8GB/512GB/14"FHD', 420.9, 125, N'The Lenovo laptop is a sleek and powerful device, designed for optimal performance and productivity on the go.', N'img/lenovo-ideapad-3.png', 3, CAST(N'2022-06-09' AS Date))
INSERT [dbo].[product] ([id], [name], [price], [quantity], [description], [image_url], [brand_id], [release_date]) VALUES (28, N'Laptop Lenovo Ideapad 3 15IAU7 i5 1235U/8GB/512GB/15.6"FHD', 567.8, 56, N'The Lenovo laptop is a sleek and powerful device, designed for optimal performance and productivity on the go.', N'img/lenovo-ideapad-3.png', 3, CAST(N'2022-06-09' AS Date))
INSERT [dbo].[product] ([id], [name], [price], [quantity], [description], [image_url], [brand_id], [release_date]) VALUES (29, N'Laptop Lenovo IdeaPad 5 15ABA7 R5 5625U/8GB/512GB/15.6" FHD', 543.2, 45, N'The Lenovo laptop is a sleek and powerful device, designed for optimal performance and productivity on the go.', N'img/lenovo-ideapad-5.png', 3, CAST(N'2022-11-12' AS Date))
INSERT [dbo].[product] ([id], [name], [price], [quantity], [description], [image_url], [brand_id], [release_date]) VALUES (30, N'Laptop Lenovo IdeaPad 1 15AMN7 R5 7520U/8GB/512GB/15.6"FHD', 567.8, 34, N'The Lenovo laptop is a sleek and powerful device, designed for optimal performance and productivity on the go.', N'img/lenovo-ideapad-1.png', 3, CAST(N'2022-11-12' AS Date))
INSERT [dbo].[product] ([id], [name], [price], [quantity], [description], [image_url], [brand_id], [release_date]) VALUES (31, N'Laptop Lenovo ThinkBook 14 G3 ACL R7 5700U/8GB/512GB/14.0"FHD', 567.8, 49, N'The Lenovo laptop is a sleek and powerful device, designed for optimal performance and productivity on the go.', N'img/lenovo-thinkbook-14.png', 3, CAST(N'2023-04-06' AS Date))
INSERT [dbo].[product] ([id], [name], [price], [quantity], [description], [image_url], [brand_id], [release_date]) VALUES (32, N'Laptop Lenovo ThinkPad E14 Gen 3 R5 5500U/8GB/512GB/14.0"FHD', 845.9, 16, N'The Lenovo laptop is a sleek and powerful device, designed for optimal performance and productivity on the go.', N'img/lenovo-thinkpad-e14.png', 3, CAST(N'2022-09-06' AS Date))
INSERT [dbo].[product] ([id], [name], [price], [quantity], [description], [image_url], [brand_id], [release_date]) VALUES (33, N'Laptop Lenovo Ideapad Slim 5 Light 14ABR8 R7 7730/16GB/512GB/14.0"FHD', 699.9, 43, N'The Lenovo laptop is a sleek and powerful device, designed for optimal performance and productivity on the go.', N'img/lenovo-ideapad-slim5.png', 3, CAST(N'2021-07-09' AS Date))
INSERT [dbo].[product] ([id], [name], [price], [quantity], [description], [image_url], [brand_id], [release_date]) VALUES (34, N'Laptop Lenovo Ideapad Gaming 3 15ARH7 R5 6600H/8GB/512GB/15.6"FHD/GeForce RTX 3050 4GB', 845.9, 22, N'The Lenovo laptop is a sleek and powerful device, designed for optimal performance and productivity on the go.', N'img/lenovo-ideapad-gaming-3.png', 3, CAST(N'2022-08-08' AS Date))
INSERT [dbo].[product] ([id], [name], [price], [quantity], [description], [image_url], [brand_id], [release_date]) VALUES (35, N'Laptop Asus TUF Gaming FX517ZE-HN045W i5 12450H/8GB/512GB/Geforce RTX 3050 Ti 4GB/15.6"FHD', 999.9, 44, N'The ASUS gaming laptop is a high-performance device designed for gaming enthusiasts, offering powerful hardware, impressive graphics, and a sleek design.', N'img/asus-tuf-1.png', 4, CAST(N'2023-04-06' AS Date))
INSERT [dbo].[product] ([id], [name], [price], [quantity], [description], [image_url], [brand_id], [release_date]) VALUES (36, N'Laptop Asus TUF Gaming FX706HC-HX579W i5 11400H/8GB/512GB/GeForce RTX 3050 4GB/17.3"FHD', 888.8, 78, N'The ASUS gaming laptop is a high-performance device designed for gaming enthusiasts, offering powerful hardware, impressive graphics, and a sleek design.', N'img/asus-tuf-2.png', 4, CAST(N'2023-04-06' AS Date))
INSERT [dbo].[product] ([id], [name], [price], [quantity], [description], [image_url], [brand_id], [release_date]) VALUES (37, N'Laptop Asus Zenbook UX3402ZA-KM218W i5 1240P/8GB/512GB/14.0"OLED WQXGA', 876.5, 44, N'ASUS laptops combine sleek designs with reliable performance, offering a range of models suited for various needs, from everyday tasks to gaming and creative work.', N'img/asus-zenbook-1.png', 4, CAST(N'2022-11-12' AS Date))
INSERT [dbo].[product] ([id], [name], [price], [quantity], [description], [image_url], [brand_id], [release_date]) VALUES (38, N'Laptop Asus Gaming ROG G513IC-HN729W R7 4800H/8GB/512GB/15.6" FHD/GeForce RTX 3050 4GB', 888.8, 76, N'The ASUS gaming laptop is a high-performance device designed for gaming enthusiasts, offering powerful hardware, impressive graphics, and a sleek design.', N'img/asus-rog-1.png', 4, CAST(N'2022-04-09' AS Date))
INSERT [dbo].[product] ([id], [name], [price], [quantity], [description], [image_url], [brand_id], [release_date]) VALUES (39, N'Laptop Asus Vivobook M3500QC-L1516W R9 5900HX/16GB/512GB/RTX3050 4GB/15.6" OLED', 1001.9, 66, N'ASUS laptops combine sleek designs with reliable performance, offering a range of models suited for various needs, from everyday tasks to gaming and creative work.', N'img/asus-vivobook-1.png', 4, CAST(N'2023-04-06' AS Date))
INSERT [dbo].[product] ([id], [name], [price], [quantity], [description], [image_url], [brand_id], [release_date]) VALUES (40, N'Laptop Asus Vivobook A1503ZA-L1139W i5 12500H/8GB/512GB/15.6"FHD', 777.7, 77, N'ASUS laptops combine sleek designs with reliable performance, offering a range of models suited for various needs, from everyday tasks to gaming and creative work.', N'img/asus-vivobook-2.png', 4, CAST(N'2021-02-12' AS Date))
INSERT [dbo].[product] ([id], [name], [price], [quantity], [description], [image_url], [brand_id], [release_date]) VALUES (41, N'Laptop Asus Vivobook A1405VA-KM059W i5 13500H/8GB/512GB/14" OLED WQXGA+', 741.6, 45, N'ASUS laptops combine sleek designs with reliable performance, offering a range of models suited for various needs, from everyday tasks to gaming and creative work.', N'img/asus-vivobook-3.png', 4, CAST(N'2021-04-04' AS Date))
INSERT [dbo].[product] ([id], [name], [price], [quantity], [description], [image_url], [brand_id], [release_date]) VALUES (42, N'Laptop Asus Zenbook UX5304VA-NQ125W i7 1355U/16GB/512GB/13.3" 2.8K OLED', 1454.9, 23, N'ASUS laptops combine sleek designs with reliable performance, offering a range of models suited for various needs, from everyday tasks to gaming and creative work.', N'img/asus-zenbook-2.png', 4, CAST(N'2022-06-04' AS Date))
INSERT [dbo].[product] ([id], [name], [price], [quantity], [description], [image_url], [brand_id], [release_date]) VALUES (43, N'Laptop Asus Zenbook UX3402VA-KM203W i5 1340P/16GB/512GB/14" WQXGA+', 1011.1, 44, N'ASUS laptops combine sleek designs with reliable performance, offering a range of models suited for various needs, from everyday tasks to gaming and creative work.', N'img/asus-zenbook-3.png', 4, CAST(N'2023-04-06' AS Date))
INSERT [dbo].[product] ([id], [name], [price], [quantity], [description], [image_url], [brand_id], [release_date]) VALUES (44, N'Laptop Asus Vivobook M513UA-EJ704W R7 5700U/8GB/512GB SSD/15.6" FHD', 777.7, 77, N'ASUS laptops combine sleek designs with reliable performance, offering a range of models suited for various needs, from everyday tasks to gaming and creative work.', N'img/asus-vivobook-4.png', 4, CAST(N'2022-06-09' AS Date))
INSERT [dbo].[product] ([id], [name], [price], [quantity], [description], [image_url], [brand_id], [release_date]) VALUES (45, N'Laptop Asus Vivobook X415EA-EK1387W i3 1115G4/8GB/256GB/14" FHD', 455.5, 55, N'ASUS laptops combine sleek designs with reliable performance, offering a range of models suited for various needs, from everyday tasks to gaming and creative work.', N'img/asus-vivobook-5.png', 4, CAST(N'2023-05-05' AS Date))
INSERT [dbo].[product] ([id], [name], [price], [quantity], [description], [image_url], [brand_id], [release_date]) VALUES (46, N'Laptop Asus Vivobook X1605VA-MB105W i5 1335U/8GB/512GB SSD/16" WUXGA', 777.6, 44, N'ASUS laptops combine sleek designs with reliable performance, offering a range of models suited for various needs, from everyday tasks to gaming and creative work.', N'img/asus-vivobook-3.png', 4, CAST(N'2022-04-05' AS Date))
INSERT [dbo].[product] ([id], [name], [price], [quantity], [description], [image_url], [brand_id], [release_date]) VALUES (47, N'Laptop Asus Vivobook Flip TN3402YA-LZ026W R5 7530U/16GB/512GB/14" WUXGA', 888.8, 88, N'ASUS laptops combine sleek designs with reliable performance, offering a range of models suited for various needs, from everyday tasks to gaming and creative work.', N'img/asus-vivobook-1.png', 4, CAST(N'2022-05-09' AS Date))
INSERT [dbo].[product] ([id], [name], [price], [quantity], [description], [image_url], [brand_id], [release_date]) VALUES (48, N'Laptop Asus Zenbook Flip UP3404VA-KN038W i5 1340P/16GB/512GB/14" OLED Touch', 1111.1, 11, N'ASUS laptops combine sleek designs with reliable performance, offering a range of models suited for various needs, from everyday tasks to gaming and creative work.', N'img/asus-zenbook-2.png', 4, CAST(N'2023-03-02' AS Date))
INSERT [dbo].[product] ([id], [name], [price], [quantity], [description], [image_url], [brand_id], [release_date]) VALUES (49, N'Laptop Asus Vivobook Pro K3405VC-KM070W i9 13900H/16GB/512GB/14" OLED 2.8K/GeForce RTX3050 4GB', 1221.2, 21, N'ASUS laptops combine sleek designs with reliable performance, offering a range of models suited for various needs, from everyday tasks to gaming and creative work.', N'img/asus-vivobook-2.png', 4, CAST(N'2023-04-04' AS Date))
INSERT [dbo].[product] ([id], [name], [price], [quantity], [description], [image_url], [brand_id], [release_date]) VALUES (50, N'Laptop Asus Vivobook X515EA-EJ322W i3 1115G4/8GB/512GB', 555.5, 88, N'ASUS laptops combine sleek designs with reliable performance, offering a range of models suited for various needs, from everyday tasks to gaming and creative work.', N'img/asus-vivobook-5.png', 4, CAST(N'2023-05-06' AS Date))
INSERT [dbo].[product] ([id], [name], [price], [quantity], [description], [image_url], [brand_id], [release_date]) VALUES (51, N'Laptop Acer Swift 3 SF314-43-R4X3 R5 5500U/16GB/512GB SSD', 777.7, 77, N'Acer is a laptop brand known for its affordable and reliable devices with various models offering different specifications to suit user needs.', N'img/acer-swift-3.png', 5, CAST(N'2022-02-02' AS Date))
INSERT [dbo].[product] ([id], [name], [price], [quantity], [description], [image_url], [brand_id], [release_date]) VALUES (52, N'Laptop Acer Aspire 3 A315-57G-573F i5 1035G1/8GB/512GB SSD/GeForce MX330 2GB', 455.4, 45, N'Acer is a laptop brand known for its affordable and reliable devices with various models offering different specifications to suit user needs.', N'img/acer-aspire-3.png', 5, CAST(N'2021-04-06' AS Date))
INSERT [dbo].[product] ([id], [name], [price], [quantity], [description], [image_url], [brand_id], [release_date]) VALUES (53, N'Laptop Acer Nitro Gaming AN515-45-R86D R7 5800H/8GB/512GB/15.6"FHD/GeForce RTX 3060 6GB', 876.7, 76, N'Acer gaming laptops are designed specifically for gaming enthusiasts, offering high-performance hardware, dedicated graphics cards, and features optimized for an immersive gaming experience.', N'img/acer-nitro-5.png', 5, CAST(N'2021-12-12' AS Date))
INSERT [dbo].[product] ([id], [name], [price], [quantity], [description], [image_url], [brand_id], [release_date]) VALUES (54, N'Laptop Acer Aspire A315-59-321N i3 1215U/8GB/256GB/15.6''''FHD', 555.5, 55, N'Acer is a laptop brand known for its affordable and reliable devices with various models offering different specifications to suit user needs.', N'img/acer-aspire.png', 5, CAST(N'2022-02-14' AS Date))
INSERT [dbo].[product] ([id], [name], [price], [quantity], [description], [image_url], [brand_id], [release_date]) VALUES (55, N'Laptop Acer Aspire 7 Gaming A715-76-57CY i5 12450H/8G/512G/15.6"FHD', 666.6, 66, N'Acer is a laptop brand known for its affordable and reliable devices with various models offering different specifications to suit user needs.', N'img/acer-aspire-7.png', 5, CAST(N'2021-02-19' AS Date))
INSERT [dbo].[product] ([id], [name], [price], [quantity], [description], [image_url], [brand_id], [release_date]) VALUES (56, N'Laptop Acer Nitro 5 Tiger Gaming AN515-58-52SP i5 12500H/8GB/512GB SSD/GeForce RTX 3050 4GB', 987.6, 65, N'Acer gaming laptops are designed specifically for gaming enthusiasts, offering high-performance hardware, dedicated graphics cards, and features optimized for an immersive gaming experience.', N'img/nitro-5-tiger.png', 5, CAST(N'2022-12-12' AS Date))
INSERT [dbo].[product] ([id], [name], [price], [quantity], [description], [image_url], [brand_id], [release_date]) VALUES (57, N'Laptop Acer Nitro Gaming AN515-57-54MV i5 11400H/8GB/512GB/15.6"FHD/NVIDIA GeForce RTX 3050 4GB', 899.9, 89, N'Acer gaming laptops are designed specifically for gaming enthusiasts, offering high-performance hardware, dedicated graphics cards, and features optimized for an immersive gaming experience.', N'img/nitro-2.png', 5, CAST(N'2021-11-12' AS Date))
INSERT [dbo].[product] ([id], [name], [price], [quantity], [description], [image_url], [brand_id], [release_date]) VALUES (58, N'Laptop Acer Predator Helios Neo Gaming PHN16-71-7460 i7 13700HX/8GB/512GB/16"WQXGA/RTX4050', 2112.3, 11, N'Acer gaming laptops are designed specifically for gaming enthusiasts, offering high-performance hardware, dedicated graphics cards, and features optimized for an immersive gaming experience.', N'img/helios.png', 5, CAST(N'2022-12-12' AS Date))
INSERT [dbo].[product] ([id], [name], [price], [quantity], [description], [image_url], [brand_id], [release_date]) VALUES (59, N'Laptop Acer Predator Gaming Helios PH315-54-99S6 i9 11900H/16G/512G/15.6', 1888.8, 22, N'Acer gaming laptops are designed specifically for gaming enthusiasts, offering high-performance hardware, dedicated graphics cards, and features optimized for an immersive gaming experience.', N'img/helios-2.png', 5, CAST(N'2022-12-11' AS Date))
INSERT [dbo].[product] ([id], [name], [price], [quantity], [description], [image_url], [brand_id], [release_date]) VALUES (60, N'Laptop Acer Aspire 5 A514-54-5127 i5 1135G7/8GB/512GB SSD/14.0''''FHD', 676.6, 141, N'Acer is a laptop brand known for its affordable and reliable devices with various models offering different specifications to suit user needs.', N'img/acer-aspire-5.png', 5, CAST(N'2020-12-11' AS Date))
INSERT [dbo].[product] ([id], [name], [price], [quantity], [description], [image_url], [brand_id], [release_date]) VALUES (61, N'Laptop Acer Nitro 17 Gaming AN17-51-50B9 i5 13500H/8GB/512GB/17.3"FHD/RTX 4050 6GB', 2002.7, 14, N'Acer gaming laptops are designed specifically for gaming enthusiasts, offering high-performance hardware, dedicated graphics cards, and features optimized for an immersive gaming experience.', N'img/nitro-17.png', 5, CAST(N'2023-05-06' AS Date))
INSERT [dbo].[product] ([id], [name], [price], [quantity], [description], [image_url], [brand_id], [release_date]) VALUES (63, N'Samsung Galaxy Book3 Ultra', 4000, 5, N'The most expensive Samsung laptop', N'https://lapvip.vn/upload/products/original/samsung-galaxy-book3-ultra-16-2023-1678505860.jpg', 6, CAST(N'2023-07-06' AS Date))
SET IDENTITY_INSERT [dbo].[product] OFF
GO
INSERT [dbo].[role] ([id], [name]) VALUES (0, N'admin')
INSERT [dbo].[role] ([id], [name]) VALUES (1, N'customer')
GO
SET IDENTITY_INSERT [dbo].[user] ON 

INSERT [dbo].[user] ([id], [username], [password], [fullname], [email], [phone], [address], [role_id], [banned]) VALUES (1, N'admin', N'admin', N'admin', N'admin@gmail.com', N'0123456789', N'FU-Hola', 0, NULL)
INSERT [dbo].[user] ([id], [username], [password], [fullname], [email], [phone], [address], [role_id], [banned]) VALUES (2, N'customer1', N'customer1', N'Customer 1', N'customer1@gmail.com', N'0123456789', N'FU-Hola', 1, 1)
INSERT [dbo].[user] ([id], [username], [password], [fullname], [email], [phone], [address], [role_id], [banned]) VALUES (3, N'customer2', N'customer2', N'Customer 2', N'customer2@gmail.com', N'0123456789', N'FU-Hola', 1, NULL)
INSERT [dbo].[user] ([id], [username], [password], [fullname], [email], [phone], [address], [role_id], [banned]) VALUES (4, N'customer3', N'customer3', N'Customer 3', N'customer3@gmail.com', N'0123456789', N'FU-Hola', 1, NULL)
INSERT [dbo].[user] ([id], [username], [password], [fullname], [email], [phone], [address], [role_id], [banned]) VALUES (5, N'cus1', N'cus1', N'cus1', N'cus1@gmail.com', N'1234567890', N'FU-HL', 1, NULL)
INSERT [dbo].[user] ([id], [username], [password], [fullname], [email], [phone], [address], [role_id], [banned]) VALUES (7, N'cus4', N'cus4', N'cus4', N'cus4', N'cus4', N'cus4', 1, NULL)
INSERT [dbo].[user] ([id], [username], [password], [fullname], [email], [phone], [address], [role_id], [banned]) VALUES (8, N'cus5', N'cus5', N'cus5', N'cus5', N'cus5', N'cus5', 1, 1)
INSERT [dbo].[user] ([id], [username], [password], [fullname], [email], [phone], [address], [role_id], [banned]) VALUES (9, N'c5', N'c5', N'c5', N'c5', N'c5', N'c5', 1, 1)
INSERT [dbo].[user] ([id], [username], [password], [fullname], [email], [phone], [address], [role_id], [banned]) VALUES (12, N'tuanvmhe173334', N'admin2003', N'Văn Minh Tuấn', N'tuanvmhe173334@fpt.edu.vn', N'0346415679', N'Yên Thành, Nghệ An', 1, NULL)
INSERT [dbo].[user] ([id], [username], [password], [fullname], [email], [phone], [address], [role_id], [banned]) VALUES (13, N'tuan', N'99222003', N'Tran Huy Tuan', N'tuan@gm.com', N'0123456789', N'HN', 1, NULL)
SET IDENTITY_INSERT [dbo].[user] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ_Username]    ******/
ALTER TABLE [dbo].[user] ADD  CONSTRAINT [UQ_Username] UNIQUE NONCLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[bill]  WITH CHECK ADD  CONSTRAINT [FK_bill_order] FOREIGN KEY([order_id])
REFERENCES [dbo].[order] ([id])
GO
ALTER TABLE [dbo].[bill] CHECK CONSTRAINT [FK_bill_order]
GO
ALTER TABLE [dbo].[bill]  WITH CHECK ADD  CONSTRAINT [FK_bill_user] FOREIGN KEY([user_id])
REFERENCES [dbo].[user] ([id])
GO
ALTER TABLE [dbo].[bill] CHECK CONSTRAINT [FK_bill_user]
GO
ALTER TABLE [dbo].[order]  WITH CHECK ADD  CONSTRAINT [FK_order_user] FOREIGN KEY([user_id])
REFERENCES [dbo].[user] ([id])
GO
ALTER TABLE [dbo].[order] CHECK CONSTRAINT [FK_order_user]
GO
ALTER TABLE [dbo].[order_detail]  WITH CHECK ADD  CONSTRAINT [FK_order_detail_order] FOREIGN KEY([order_id])
REFERENCES [dbo].[order] ([id])
GO
ALTER TABLE [dbo].[order_detail] CHECK CONSTRAINT [FK_order_detail_order]
GO
ALTER TABLE [dbo].[order_detail]  WITH CHECK ADD  CONSTRAINT [FK_order_detail_product] FOREIGN KEY([product_id])
REFERENCES [dbo].[product] ([id])
GO
ALTER TABLE [dbo].[order_detail] CHECK CONSTRAINT [FK_order_detail_product]
GO
ALTER TABLE [dbo].[product]  WITH CHECK ADD  CONSTRAINT [FK_product_brand] FOREIGN KEY([brand_id])
REFERENCES [dbo].[brand] ([id])
GO
ALTER TABLE [dbo].[product] CHECK CONSTRAINT [FK_product_brand]
GO
ALTER TABLE [dbo].[user]  WITH CHECK ADD  CONSTRAINT [FK_user_role] FOREIGN KEY([role_id])
REFERENCES [dbo].[role] ([id])
GO
ALTER TABLE [dbo].[user] CHECK CONSTRAINT [FK_user_role]
GO
USE [master]
GO
ALTER DATABASE [EShopper] SET  READ_WRITE 
GO
