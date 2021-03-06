USE [master]
GO
create database ShoppingOnlineText
GO
USE [ShoppingOnlineText]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 03/16/2022 10:24:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[categoryName] [nvarchar](250) NULL,
	[status] [int] NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Category] ON
INSERT [dbo].[Category] ([id], [categoryName], [status]) VALUES (1, N'Quartz Movement', 1)
INSERT [dbo].[Category] ([id], [categoryName], [status]) VALUES (2, N'Smart Watch', 1)
INSERT [dbo].[Category] ([id], [categoryName], [status]) VALUES (3, N'Mechanical Watches', 1)
INSERT [dbo].[Category] ([id], [categoryName], [status]) VALUES (4, N'Digital Watches', 1)
INSERT [dbo].[Category] ([id], [categoryName], [status]) VALUES (5, N'WristWatches', 5)
SET IDENTITY_INSERT [dbo].[Category] OFF
/****** Object:  Table [dbo].[Account]    Script Date: 03/16/2022 10:24:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](255) NULL,
	[password] [nvarchar](255) NULL,
	[displayName] [nvarchar](255) NULL,
	[address] [nvarchar](255) NULL,
	[email] [nvarchar](255) NULL,
	[phone] [nvarchar](255) NULL,
	[role] [nvarchar](50) NULL,
	[passwordEmail] [nvarchar](50) NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON
INSERT [dbo].[Account] ([id], [username], [password], [displayName], [address], [email], [phone], [role], [passwordEmail]) VALUES (1, N'admin', N'123456', N'Administrator', N'Ha Noi 2', N'hoangtthhe153437@fpt.edu.vn', N'0987123555', N'ADMIN', N'huyhoang')
INSERT [dbo].[Account] ([id], [username], [password], [displayName], [address], [email], [phone], [role], [passwordEmail]) VALUES (2, N'user', N'12345', N'User', N'Hoa Binh', N'user@gmail.com', N'0987233212', N'ADMIN', NULL)
INSERT [dbo].[Account] ([id], [username], [password], [displayName], [address], [email], [phone], [role], [passwordEmail]) VALUES (3, N'Hoang', N'123456', N'Hoàng Trần', N'xóm Trung Thành Ha noi', N'hoang@gmail.com', N'0356068480', N'USER', N'hoang1234')
INSERT [dbo].[Account] ([id], [username], [password], [displayName], [address], [email], [phone], [role], [passwordEmail]) VALUES (4, N'Linh', N'12345', N'Nguyen Linh', N'Ha Noi', N'linh@gmail.com', N'012345678', N'USER', N'linh1234')
INSERT [dbo].[Account] ([id], [username], [password], [displayName], [address], [email], [phone], [role], [passwordEmail]) VALUES (5, N'Truong', N'12345', N'Nam Truong', N'Ha Noi', N'truong@gmail.com', N'0987654321', N'USER', N'truong1234')
INSERT [dbo].[Account] ([id], [username], [password], [displayName], [address], [email], [phone], [role], [passwordEmail]) VALUES (6, N'nam', N'12345', N'Nguyen Nam', N'Ha Noi 2', N'nam@gmail.com', N'0998232131', N'USER', N'nam1234')
SET IDENTITY_INSERT [dbo].[Account] OFF
/****** Object:  Table [dbo].[Shipping]    Script Date: 03/16/2022 10:24:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shipping](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NULL,
	[phone] [nvarchar](255) NULL,
	[address] [nvarchar](255) NULL,
 CONSTRAINT [PK_Shipping] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Shipping] ON
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (1, N'Hoàng Trần', N'0356068480', N'xóm Trung Thành')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (2, N'Hoàng Trần Trung', N'0356068420', N'Hà Nội')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (3, N'Hoàng Trần Trung', N'0356068420', N'Hà Nội')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (4, N'lala', N'12345', N'Hoa Binh')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (5, N'Pro', N'123231', N'Hai Duong')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (6, N'Hoàng Trần', N'0356068480', N'xóm Trung Thành')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (7, N'abc', N'0356068480', N'Ha noi')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (8, N'Hoàng Trần', N'0356068480', N'xóm Trung Thành')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (9, N'Hoan ', N'0123213123', N'Ha Noi')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (10, N'Trần Cao', N'01232132321', N'xã Mông Hóa  Huyện Kỳ Sơn')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (11, N'Nguyen van A', N'02132132', N'Ha Noi')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (12, N'nana', N'0826219183', N'Ha Noi')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (13, N'Cu Be', N'012312', N'Ha Giang')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (14, N'Hoang dev', N'0356068480', N'Trung Thành ,Ky Son, Hoa Binh')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (15, N'Hoàng Trần', N'0356068480', N'Trần Duy Hưng Hà Nội')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (16, N'test', N'01232131', N'Hà nội')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (17, N'Admin Mua het', N'012323321', N'Hà Nội')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (18, N'Admin', N'0356068480', N'Hồ Chí Minh')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (19, N'Hoàng Trần', N'0356068480', N'xóm Trung Thành Ha Noi')
SET IDENTITY_INSERT [dbo].[Shipping] OFF
/****** Object:  Table [dbo].[Product]    Script Date: 03/16/2022 10:24:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[categoryId] [int] NOT NULL,
	[code] [nvarchar](250) NULL,
	[name] [nvarchar](250) NULL,
	[quantity] [int] NULL,
	[price] [float] NULL,
	[description] [nvarchar](1000) NULL,
	[img] [nvarchar](250) NULL,
	[createDate] [date] NULL,
 CONSTRAINT [PK_Product1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Product] ON
INSERT [dbo].[Product] ([id], [categoryId], [code], [name], [quantity], [price], [description], [img], [createDate]) VALUES (1, 1, N'SP001', N'SKMEI shashow', 0, 98, N'Custom Brand Cheap Price Wholesale Luxury Wrist Men Man Boys Style Used Sale Online Shop Digital Bands Quartz Watch', N'images/1.jpg', CAST(0xA3430B00 AS Date))
INSERT [dbo].[Product] ([id], [categoryId], [code], [name], [quantity], [price], [description], [img], [createDate]) VALUES (2, 4, N'SP002', N'Bomaxe', 1, 123, N'Popular Custom Japan Movement Luminous Three eyes Sapphire Glass Water Resistant Genuine Leather Strap Black Men Wrist Watches', N'https://www.watchshopping.com/media/catalog/product/cache/e231feaa2addd479874dd18655e9e1d1/N/o/Nomos_Glash_tte-Metro-1104_5.jpg', CAST(0xA3430B00 AS Date))
INSERT [dbo].[Product] ([id], [categoryId], [code], [name], [quantity], [price], [description], [img], [createDate]) VALUES (3, 1, N'SP003', N'Date Moon', 28, 77, N'Fashion Mens Watch Wood Auto Date Moon Phase Function Wooden Wristwatch Wholesale Luxury Brand relogio masculino', N'images/3.jpg', CAST(0xA3430B00 AS Date))
INSERT [dbo].[Product] ([id], [categoryId], [code], [name], [quantity], [price], [description], [img], [createDate]) VALUES (4, 2, N'SP004', N'MAFAM', 15, 40, N'Smartwatch MX12 Waterproof IP68 IPS 1.3 Inch BT Music Player 256M USB Store File Smart Watch BT Call For Sport Men Ladies', N'images/4.jpg', CAST(0xA3430B00 AS Date))
INSERT [dbo].[Product] ([id], [categoryId], [code], [name], [quantity], [price], [description], [img], [createDate]) VALUES (5, 2, N'SP005', N'DT No.1', 40, 30, N'DT7pro W26 Heart Rate HD Color Touchscreen Health Monitor Online Series 7 Smart Watch For Android & iOS', N'images/5.jpg', CAST(0xA3430B00 AS Date))
INSERT [dbo].[Product] ([id], [categoryId], [code], [name], [quantity], [price], [description], [img], [createDate]) VALUES (6, 2, N'SP006', N'Reloj ', 56, 100, N'New Arrivals Online Android Smart Watch Reloj Smartwatch Bands Bracelet for Phone with Sports Fitness Health Tracker', N'images/6.jpg', CAST(0xA3430B00 AS Date))
INSERT [dbo].[Product] ([id], [categoryId], [code], [name], [quantity], [price], [description], [img], [createDate]) VALUES (7, 3, N'SP007', N'SKMEI 9226 ', 34, 23, N'skmei 9209 3atm men waterproof automatic watch custom logo leather skeleton wristwatch', N'images/7.jpg', CAST(0xA3430B00 AS Date))
INSERT [dbo].[Product] ([id], [categoryId], [code], [name], [quantity], [price], [description], [img], [createDate]) VALUES (8, 3, N'SP008', N'BEDATE', 14, 20, N'Custom private label watch wood luxury watches for men dropshipping automatic watch wholesale online', N'images/8.jpg', CAST(0xA3430B00 AS Date))
INSERT [dbo].[Product] ([id], [categoryId], [code], [name], [quantity], [price], [description], [img], [createDate]) VALUES (9, 3, N'SP009', N'SKMEI 9209', 16, 27, N'9226 Men Japan Movement Genuine Leather 3atm Waterproof Automatic Mechanical Wrist Watches', N'images/9.jpg', CAST(0xA3430B00 AS Date))
INSERT [dbo].[Product] ([id], [categoryId], [code], [name], [quantity], [price], [description], [img], [createDate]) VALUES (10, 4, N'SP010', N'SKMEI 1900', 10, 20, N'SKMEI 1900 digital watches men wrist LED Display Digital Stainless Steel Mesh Band online watches from china', N'images/10.jpg', CAST(0xA3430B00 AS Date))
INSERT [dbo].[Product] ([id], [categoryId], [code], [name], [quantity], [price], [description], [img], [createDate]) VALUES (11, 4, N'SP011', N'SKMEI 1355', 12, 24, N'skmei 1355 waterproof digital sport man watches online led digital wristwatch sport electronic hand watch', N'images/11.jpg', CAST(0xA3430B00 AS Date))
INSERT [dbo].[Product] ([id], [categoryId], [code], [name], [quantity], [price], [description], [img], [createDate]) VALUES (13, 5, N'SP013', N'SKMEI 1016', 14, 19, N'multi function popular promotional dual movement wristwatch analog digital wrist watch relojes digitales mens', N'images/13.jpg', CAST(0xA3430B00 AS Date))
INSERT [dbo].[Product] ([id], [categoryId], [code], [name], [quantity], [price], [description], [img], [createDate]) VALUES (17, 5, N'SP014', N'GOLDEN HOUR', 10, 14, N'Good durability, waterproof and many new features', N'images/14.jpg', CAST(0xB2430B00 AS Date))
INSERT [dbo].[Product] ([id], [categoryId], [code], [name], [quantity], [price], [description], [img], [createDate]) VALUES (20, 5, N'SP015', N'SOPEWOD', 12, 31, N'an elegant and luxurious appearance, attracting all eyes from you, becoming a dainty florist', N'images/15.jpg', CAST(0xB2430B00 AS Date))
INSERT [dbo].[Product] ([id], [categoryId], [code], [name], [quantity], [price], [description], [img], [createDate]) VALUES (25, 2, N'SP01231231', N'Apple watch series  6', 4, 321, N'verry good for you , luxyry', N'https://www.techone.vn/wp-content/uploads/2022/02/mkga3-vw-34fr-watch-45-stainless-spaceblack-cell-hermes7s-vw-34fr-wf-co-watch-face-45-hermes7s-noir-vw-34fr-wf-co-500x500.jpg', CAST(0xB5430B00 AS Date))
SET IDENTITY_INSERT [dbo].[Product] OFF
/****** Object:  Table [dbo].[Orders]    Script Date: 03/16/2022 10:24:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[account_id] [int] NULL,
	[totalPrice] [float] NULL,
	[note] [nvarchar](250) NULL,
	[created_date] [date] NULL,
	[shipping_id] [int] NULL,
	[status] [int] NULL,
 CONSTRAINT [PK_Orders1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Orders] ON
INSERT [dbo].[Orders] ([id], [account_id], [totalPrice], [note], [created_date], [shipping_id], [status]) VALUES (1, 1, 140, N'vui lòng nhẹ tay, cảm ơn', CAST(0xAA430B00 AS Date), 1, 1)
INSERT [dbo].[Orders] ([id], [account_id], [totalPrice], [note], [created_date], [shipping_id], [status]) VALUES (2, 1, 274, N'Vui Lòng Cẩn Thận, hàng dễ vỡ', CAST(0xAF430B00 AS Date), 2, 1)
INSERT [dbo].[Orders] ([id], [account_id], [totalPrice], [note], [created_date], [shipping_id], [status]) VALUES (3, 1, 274, N'Vui Lòng Cẩn Thận, hàng dễ vỡ', CAST(0xAF430B00 AS Date), 3, 1)
INSERT [dbo].[Orders] ([id], [account_id], [totalPrice], [note], [created_date], [shipping_id], [status]) VALUES (4, 1, 55, N'Can than', CAST(0xAF430B00 AS Date), 4, 1)
INSERT [dbo].[Orders] ([id], [account_id], [totalPrice], [note], [created_date], [shipping_id], [status]) VALUES (5, 1, 296, N'Please care fully', CAST(0xAF430B00 AS Date), 5, 1)
INSERT [dbo].[Orders] ([id], [account_id], [totalPrice], [note], [created_date], [shipping_id], [status]) VALUES (6, 2, 129, N'hay can than', CAST(0xB1430B00 AS Date), 6, 1)
INSERT [dbo].[Orders] ([id], [account_id], [totalPrice], [note], [created_date], [shipping_id], [status]) VALUES (7, 2, 55, N'Can than', CAST(0xB1430B00 AS Date), 7, 1)
INSERT [dbo].[Orders] ([id], [account_id], [totalPrice], [note], [created_date], [shipping_id], [status]) VALUES (8, 1, 274, N'can than', CAST(0xB2430B00 AS Date), 8, 0)
INSERT [dbo].[Orders] ([id], [account_id], [totalPrice], [note], [created_date], [shipping_id], [status]) VALUES (9, 1, 62, N'Hay Nhe Tay', CAST(0xB2430B00 AS Date), 9, 1)
INSERT [dbo].[Orders] ([id], [account_id], [totalPrice], [note], [created_date], [shipping_id], [status]) VALUES (10, 2, 395, N'Can than 1 chut', CAST(0xB3430B00 AS Date), 10, 1)
INSERT [dbo].[Orders] ([id], [account_id], [totalPrice], [note], [created_date], [shipping_id], [status]) VALUES (11, 2, 77, N'hehe', CAST(0xB3430B00 AS Date), 12, 0)
INSERT [dbo].[Orders] ([id], [account_id], [totalPrice], [note], [created_date], [shipping_id], [status]) VALUES (12, 2, 40, N'So beauty', CAST(0xB3430B00 AS Date), 13, 0)
INSERT [dbo].[Orders] ([id], [account_id], [totalPrice], [note], [created_date], [shipping_id], [status]) VALUES (13, 3, 227, N'cẩn thận làm xước', CAST(0xB3430B00 AS Date), 14, 1)
INSERT [dbo].[Orders] ([id], [account_id], [totalPrice], [note], [created_date], [shipping_id], [status]) VALUES (14, 3, 219, N'Vui lòng ship nhanh', CAST(0xB4430B00 AS Date), 15, 0)
INSERT [dbo].[Orders] ([id], [account_id], [totalPrice], [note], [created_date], [shipping_id], [status]) VALUES (15, 1, 197, N'Hay Can than', CAST(0xB4430B00 AS Date), 16, 1)
INSERT [dbo].[Orders] ([id], [account_id], [totalPrice], [note], [created_date], [shipping_id], [status]) VALUES (16, 1, 1764, N'hay can than', CAST(0xB4430B00 AS Date), 17, 0)
INSERT [dbo].[Orders] ([id], [account_id], [totalPrice], [note], [created_date], [shipping_id], [status]) VALUES (17, 1, 99, N'please care fully', CAST(0xB4430B00 AS Date), 18, 1)
INSERT [dbo].[Orders] ([id], [account_id], [totalPrice], [note], [created_date], [shipping_id], [status]) VALUES (18, 3, 2178, N'Ship can Than', CAST(0xB5430B00 AS Date), 19, 0)
SET IDENTITY_INSERT [dbo].[Orders] OFF
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 03/16/2022 10:24:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[order_id] [int] NULL,
	[productName] [nvarchar](255) NULL,
	[productImage] [nvarchar](255) NULL,
	[productPrice] [float] NULL,
	[quantity] [int] NULL,
 CONSTRAINT [PK_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[OrderDetail] ON
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (1, 1, N'DT No.1', N'images/5.jpg', 30, 3)
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (2, 1, N'Reloj ', N'images/6.jpg', 25, 2)
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (3, 2, N'BELUSHI', N'images/1.jpg', 98, 1)
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (4, 2, N'Bomaxe', N'images/2.jpg', 99, 1)
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (5, 2, N'Date Moon', N'images/3.jpg', 77, 1)
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (6, 3, N'BELUSHI', N'images/1.jpg', 98, 1)
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (7, 3, N'Bomaxe', N'images/2.jpg', 99, 1)
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (8, 3, N'Date Moon', N'images/3.jpg', 77, 1)
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (9, 4, N'DT No.1', N'images/5.jpg', 30, 1)
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (10, 4, N'Reloj ', N'images/6.jpg', 25, 1)
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (11, 5, N'BELUSHI', N'images/1.jpg', 98, 1)
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (12, 5, N'Bomaxe', N'images/2.jpg', 99, 2)
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (13, 6, N'Bomaxe', N'images/2.jpg', 99, 1)
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (14, 6, N'DT No.1', N'images/5.jpg', 30, 1)
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (15, 7, N'DT No.1', N'images/5.jpg', 30, 1)
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (16, 7, N'Reloj ', N'images/6.jpg', 25, 1)
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (17, 8, N'SKMEI shashow', N'images/1.jpg', 98, 1)
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (18, 8, N'Bomaxe', N'images/2.jpg', 99, 1)
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (19, 8, N'Date Moon', N'images/3.jpg', 77, 1)
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (20, 9, N'SOPEWOD', N'images/15.jpg', 31, 2)
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (21, 10, N'Bomaxe', N'images/2.jpg', 99, 3)
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (22, 10, N'SKMEI shashow', N'images/1.jpg', 98, 1)
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (24, 11, N'Date Moon', N'images/3.jpg', 77, 1)
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (25, 12, N'MAFAM', N'images/4.jpg', 40, 1)
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (26, 13, N'SKMEI shashow', N'images/1.jpg', 98, 1)
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (27, 13, N'Bomaxe', N'images/2.jpg', 99, 1)
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (28, 13, N'DT No.1', N'images/5.jpg', 30, 1)
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (29, 14, N'BEDATE', N'images/8.jpg', 20, 1)
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (30, 14, N'Date Moon', N'images/3.jpg', 77, 1)
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (31, 14, N'DT No.1', N'images/5.jpg', 30, 2)
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (32, 14, N'SOPEWOD', N'images/15.jpg', 31, 2)
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (33, 15, N'SKMEI shashow', N'images/1.jpg', 98, 1)
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (34, 15, N'Bomaxe', N'images/2.jpg', 99, 1)
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (35, 16, N'SKMEI shashow', N'images/1.jpg', 98, 18)
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (36, 17, N'Bomaxe', N'images/2.jpg', 99, 1)
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (37, 18, N'Bomaxe', N'images/2.jpg', 99, 22)
SET IDENTITY_INSERT [dbo].[OrderDetail] OFF
/****** Object:  Default [DF_Product1_createDate]    Script Date: 03/16/2022 10:24:32 ******/
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product1_createDate]  DEFAULT (getdate()) FOR [createDate]
GO
/****** Object:  Default [DF_Orders1_created_date]    Script Date: 03/16/2022 10:24:32 ******/
ALTER TABLE [dbo].[Orders] ADD  CONSTRAINT [DF_Orders1_created_date]  DEFAULT (getdate()) FOR [created_date]
GO
/****** Object:  Default [DF_Orders_status]    Script Date: 03/16/2022 10:24:32 ******/
ALTER TABLE [dbo].[Orders] ADD  CONSTRAINT [DF_Orders_status]  DEFAULT ((0)) FOR [status]
GO
/****** Object:  ForeignKey [FK__Product__categor__0AD2A005]    Script Date: 03/16/2022 10:24:32 ******/
ALTER TABLE [dbo].[Product]  WITH CHECK ADD FOREIGN KEY([categoryId])
REFERENCES [dbo].[Category] ([id])
GO
/****** Object:  ForeignKey [FK__Orders__account___2F10007B]    Script Date: 03/16/2022 10:24:32 ******/
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK__Orders__account___2F10007B] FOREIGN KEY([account_id])
REFERENCES [dbo].[Account] ([id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK__Orders__account___2F10007B]
GO
/****** Object:  ForeignKey [FK__Orders__shipping__300424B4]    Script Date: 03/16/2022 10:24:32 ******/
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK__Orders__shipping__300424B4] FOREIGN KEY([shipping_id])
REFERENCES [dbo].[Shipping] ([id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK__Orders__shipping__300424B4]
GO
/****** Object:  ForeignKey [FK__OrderDeta__order__30F848ED]    Script Date: 03/16/2022 10:24:32 ******/
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK__OrderDeta__order__30F848ED] FOREIGN KEY([order_id])
REFERENCES [dbo].[Orders] ([id])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK__OrderDeta__order__30F848ED]
GO
