
GO
/****** Object:  Database [ShoesStore]    Script Date: 10/25/2023 6:10:17 AM ******/
CREATE DATABASE [ShoesStore]

ALTER DATABASE [ShoesStore] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ShoesStore].[dbo].[sp_fulltext_database] @action = 'enable'
end

USE [ShoesStore]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[detailID] [nchar](10) NOT NULL,
	[productID] [nchar](10) NULL,
	[orderID] [nchar](10) NULL,
	[detailQuantity] [int] NULL,
	[detailPrice] [float] NULL,
 CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[detailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[orderID] [nchar](10) NOT NULL,
	[orderDate] [datetime2](7) NULL,
	[orderTotal] [float] NULL,
	[productName] [nvarchar](50) NULL,
	[productSize] [int]  NULL,
	[userID] [nchar](10) NOT NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[orderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[productID] [nchar](10) NOT NULL,
	[productName] [nvarchar](255c) NULL,
	[image][nvarchar](max)NULL,
	[productPrice] [float] NULL,
	[productQuantity] [int] NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[productID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[roleID] [nvarchar](50) NOT NULL,
	[roleName] [nvarchar](50) NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[roleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[userID] [nchar](10) NOT NULL,
	[userName] [nvarchar](50) NULL,
	[phoneNumber] [nchar](10) NULL,
	[Address] [nvarchar](50) NULL,
	[roleID] [nvarchar](50) NULL,
	[password] [nchar](10) NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[userID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

GO
INSERT [dbo].[Roles] ([roleID], [roleName]) VALUES (N'AD', N'Admin')
INSERT [dbo].[Roles] ([roleID], [roleName]) VALUES (N'US', N'User')
GO

GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Orders] FOREIGN KEY([orderID])
REFERENCES [dbo].[Orders] ([orderID])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Orders]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Products] FOREIGN KEY([productID])
REFERENCES [dbo].[Products] ([productID])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Products]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Users] FOREIGN KEY([userID])
REFERENCES [dbo].[Users] ([userID])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Users]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Roles] FOREIGN KEY([roleID])
REFERENCES [dbo].[Roles] ([roleID])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Roles]
GO
USE [master]
GO
ALTER DATABASE [ShoesStore] SET  READ_WRITE 


/***************************DATA**************************/
GO
SET IDENTITY_INSERT [dbo].[Products] ON 
GO
INSERT INTO [dbo].[Products] ([productID],[productName],[image],[productPrice],[productQuantity]) VALUES(1 ,N'THE GENT WOLF CHELSEA BOOT - BROWN',N'https://product.hstatic.net/200000033444/product/1_40eaa204cf374bc6a60bbe50e9d29bb2_grande.jpg',18.9,50)
GO
INSERT INTO [dbo].[Products] ([productID],[productName],[image],[productPrice],[productQuantity]) VALUES (2, N'THE GENT WOLF CHELSEA BOOT - BLACK', N'https://product.hstatic.net/200000033444/product/1_d9f30d08e5dc48e8992414d1343526b8_grande.jpg', 15.5, 50)
GO
INSERT [dbo].[Products] ([productID], [productName], [image], [productPrice], [productQuantity]) VALUES (3, N'THE MARS WOLF CHELSEA BOOT - TAN SUEDE', N'https://product.hstatic.net/200000033444/product/1_37683ec15b594dd79467d3a367f77090_grande.jpg', 19.9, 60)
GO
INSERT [dbo].[Products] ([productID], [productName], [image], [productPrice], [productQuantity]) VALUES (4, N'THE MARS WOLF CHELSEA BOOT - BLACK SUEDE', N'https://product.hstatic.net/200000033444/product/1_5854fa0ea7fa4b709f6a1f154c1ece8b_grande.jpg', 18.5, 20)
GO
INSERT [dbo].[Products] ([productID], [productName], [image], [productPrice], [productQuantity]) VALUES (5, N'THE MARS WOLF CHELSEA BOOT SPECIAL EDITION - BLACK', N'https://product.hstatic.net/200000033444/product/1_b4e517f8116943afbb687158c880a419_grande.jpg', 10.4, 30)
GO
INSERT [dbo].[Products] ([productID], [productName], [image], [productPrice], [productQuantity]) VALUES (6, N'THE LADY WOLF CHUNKY COMBAT BOOT - BLACK', N'https://product.hstatic.net/200000033444/product/1_d4efeaf52bf64b02bf224a10d56340b1_grande.jpg', 14.2, 40)
GO
INSERT [dbo].[Products] ([productID], [productName], [image], [productPrice], [productQuantity]) VALUES (7, N'THE LADY WOLF MARBE CHUNKY COMBAT BOOT - BEIGE', N'https://product.hstatic.net/200000033444/product/1_da1e999790294cf3b6de513851150fc8_grande.jpg', 20, 10)
GO
INSERT [dbo].[Products] ([productID], [productName], [image], [productPrice], [productQuantity]) VALUES (8, N'THE MARS LADY WOLF HIGH COMBAT BOOT - BLACK', N'https://product.hstatic.net/200000033444/product/1_764010d9901243a19b95a7a990abd499_grande.jpg', 10, 50)
GO
INSERT [dbo].[Products] ([productID], [productName], [image], [productPrice], [productQuantity]) VALUES (9, N'THE MARS LADY WOLF MID COMBAT BOOT - BLACK', N'https://product.hstatic.net/200000033444/product/1_35a828c87bcd46edbf4f06fdb6e7b4e1_grande.jpg', 17.2, 50)
GO
INSERT [dbo].[Products] ([productID], [productName], [image], [productPrice], [productQuantity]) VALUES (10, N'THE GENT WOLF DERBY - BROWN', N'https://product.hstatic.net/200000033444/product/1_4022617951674097baa2e631a6ec82c4_grande.jpg', 19.7, 50)
GO
SET IDENTITY_INSERT [dbo].[Products] OFF

GO
INSERT INTO [dbo].[Users] ([userID],[userName],[phoneNumber],[Address],[roleID],[password])VALUES('admin','nam nguyen','0387324605','DongNai','AD',12345678)
GO
GO
INSERT INTO [dbo].[Users] ([userID],[userName],[phoneNumber],[Address],[roleID],[password])VALUES('hieudt','do the hieu','0387324605','TP.HCM','US',00000000)
GO
INSERT INTO [dbo].[Users] ([userID],[userName],[phoneNumber],[Address],[roleID],[password])VALUES('quangts','truong sy quang','0387324623','DakLak','US',99999999)
GO
INSERT INTO [dbo].[Users] ([userID],[userName],[phoneNumber],[Address],[roleID],[password])VALUES('phuongdh','Dao Hoai Phuong','023423413','DongNai','US',88888888)
GO
INSERT INTO [dbo].[Users] ([userID],[userName],[phoneNumber],[Address],[roleID],[password])VALUES('Tuyettt','Tran Anh Tuyet','023812313','TP.HCM','US',3213132)
GO
INSERT INTO [dbo].[Users] ([userID],[userName],[phoneNumber],[Address],[roleID],[password])VALUES('thuchn','Thuc Hoang','0129321341','Binh Duong','US',1231312)
