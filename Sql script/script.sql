USE [web]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 12/28/2021 11:29:39 AM ******/
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
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 12/28/2021 11:29:39 AM ******/
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
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 12/28/2021 11:29:39 AM ******/
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
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 12/28/2021 11:29:39 AM ******/
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
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 12/28/2021 11:29:39 AM ******/
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
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 12/28/2021 11:29:39 AM ******/
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
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 12/28/2021 11:29:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[FirstName] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
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
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 12/28/2021 11:29:39 AM ******/
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
/****** Object:  Table [dbo].[category]    Script Date: 12/28/2021 11:29:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[category](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL,
	[description] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[order]    Script Date: 12/28/2021 11:29:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[order](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[order_date] [varchar](50) NULL,
	[total] [int] NULL,
	[status] [int] NULL,
	[customer_id] [nvarchar](450) NULL,
	[ship_address] [varchar](255) NULL,
	[phone] [int] NULL,
 CONSTRAINT [PK_order] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[order_detail]    Script Date: 12/28/2021 11:29:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[order_detail](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[product_id] [int] NULL,
	[quanlity] [int] NULL,
	[price] [int] NULL,
	[order_id] [int] NOT NULL,
 CONSTRAINT [PK_order_detail] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[products]    Script Date: 12/28/2021 11:29:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[products](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL,
	[description] [varchar](255) NULL,
	[price] [int] NULL,
	[quality] [int] NULL,
	[imageURL] [varchar](255) NULL,
	[promotion_price] [int] NULL,
	[categoryId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211116033634_IdentityContextSchema', N'5.0.12')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211207090008_IdentityContextSchema1', N'5.0.12')
GO
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'28e92118-238b-4883-aa18-5dbd0260a691', N'Diệp', N'Thiên Thiên', N'thien.dt0530@sinhvien.hoasen.edu.vn', N'THIEN.DT0530@SINHVIEN.HOASEN.EDU.VN', N'thien.dt0530@sinhvien.hoasen.edu.vn', N'THIEN.DT0530@SINHVIEN.HOASEN.EDU.VN', 1, N'AQAAAAEAACcQAAAAEBy0GdezeWKkVc333NOyUITUbP9CWPlN+KbkbQ3g1i1BbtIGhpVw5wg8rq87hr2M4A==', N'7UY4HLSU4EZBEXZL4QE6FF6J5WC7ZY3E', N'2122c862-717b-4756-9987-35d18e29ccf0', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'597598af-94ef-4a60-aaa7-88659a515dd7', N'Diệp', N'Thiên Thiên', N'bananakind123@gmail.com', N'BANANAKIND123@GMAIL.COM', N'bananakind123@gmail.com', N'BANANAKIND123@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEKep/EZMv/G3ksE51ifxuHiBx+cBTZ/xx5FZKjBz+y8Wi1Buv9CILw0tCc6ZiCN5vw==', N'IB6P64NBB5UFKO4AQF27XLY2ZFY4T7KV', N'97e124f4-42ee-429a-85f2-6faade7d6d41', N'90421241', 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'b3cee956-8629-4963-9b87-7a5ee6f1bd65', N'Thien6', N'asd', N'test456@gmail.com', N'TEST456@GMAIL.COM', N'test456@gmail.com', N'TEST456@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEFo1kwbaqlHD5Q+PcdMhQOxgzexe0nzO3pFx/t/TJk8uFiJtJzHOYjg3ml06gRVv5w==', N'H2Z34UN374O532SO3FMP67UXVK7KQKL6', N'196eb24d-725b-49ba-8a21-1b91b8d72a74', N'0909', 0, 0, NULL, 1, 0)
GO
SET IDENTITY_INSERT [dbo].[category] ON 

INSERT [dbo].[category] ([id], [name], [description]) VALUES (4, N'Samsung', N'Dien thoai Samsung')
INSERT [dbo].[category] ([id], [name], [description]) VALUES (5, N'Oppo', N'Dien thoai oppo')
INSERT [dbo].[category] ([id], [name], [description]) VALUES (6, N'Vivo', N'Dien thoai vivo')
INSERT [dbo].[category] ([id], [name], [description]) VALUES (7, N'Xiaomi', N'Dien thoai Xiaomi')
INSERT [dbo].[category] ([id], [name], [description]) VALUES (8, N'Iphone', N'Dien thoai Iphone')
SET IDENTITY_INSERT [dbo].[category] OFF
GO
SET IDENTITY_INSERT [dbo].[order] ON 

INSERT [dbo].[order] ([id], [order_date], [total], [status], [customer_id], [ship_address], [phone]) VALUES (11, N'12/24/2021 10:53:47 AM', 120490000, 1, N'28e92118-238b-4883-aa18-5dbd0260a691', N'testing address', 123456)
INSERT [dbo].[order] ([id], [order_date], [total], [status], [customer_id], [ship_address], [phone]) VALUES (12, N'12/28/2021 10:54:58 AM', 83220000, 1, N'b3cee956-8629-4963-9b87-7a5ee6f1bd65', N'testing address', 123456)
INSERT [dbo].[order] ([id], [order_date], [total], [status], [customer_id], [ship_address], [phone]) VALUES (13, N'12/28/2021 10:55:56 AM', 145200000, 1, N'b3cee956-8629-4963-9b87-7a5ee6f1bd65', N'testing address', 123456)
SET IDENTITY_INSERT [dbo].[order] OFF
GO
SET IDENTITY_INSERT [dbo].[order_detail] ON 

INSERT [dbo].[order_detail] ([id], [product_id], [quanlity], [price], [order_id]) VALUES (10, 7, 7, 8290000, 11)
INSERT [dbo].[order_detail] ([id], [product_id], [quanlity], [price], [order_id]) VALUES (11, 9, 1, 9490000, 11)
INSERT [dbo].[order_detail] ([id], [product_id], [quanlity], [price], [order_id]) VALUES (12, 8, 2, 9490000, 11)
INSERT [dbo].[order_detail] ([id], [product_id], [quanlity], [price], [order_id]) VALUES (13, 15, 1, 33990000, 11)
INSERT [dbo].[order_detail] ([id], [product_id], [quanlity], [price], [order_id]) VALUES (14, 10, 5, 12990000, 12)
INSERT [dbo].[order_detail] ([id], [product_id], [quanlity], [price], [order_id]) VALUES (15, 6, 3, 6090000, 12)
INSERT [dbo].[order_detail] ([id], [product_id], [quanlity], [price], [order_id]) VALUES (16, 10, 5, 12990000, 13)
INSERT [dbo].[order_detail] ([id], [product_id], [quanlity], [price], [order_id]) VALUES (17, 6, 3, 6090000, 13)
INSERT [dbo].[order_detail] ([id], [product_id], [quanlity], [price], [order_id]) VALUES (18, 16, 2, 30990000, 13)
SET IDENTITY_INSERT [dbo].[order_detail] OFF
GO
SET IDENTITY_INSERT [dbo].[products] ON 

INSERT [dbo].[products] ([id], [name], [description], [price], [quality], [imageURL], [promotion_price], [categoryId]) VALUES (5, N'Ðien thoai Samsung Galaxy Z Fold3', N'Ðien thoai Samsung Galaxy Z Fold3 5G 256GB', 41990000, 34, N' /img/dummyimg.png', 41990000, 4)
INSERT [dbo].[products] ([id], [name], [description], [price], [quality], [imageURL], [promotion_price], [categoryId]) VALUES (6, N'Ðien thoai Samsung Galaxy A32', N'Ðien thoai Samsung Galaxy A32 camera 64 MP', 6090000, 23, N' /img/dummyimg.png', 6090000, 4)
INSERT [dbo].[products] ([id], [name], [description], [price], [quality], [imageURL], [promotion_price], [categoryId]) VALUES (7, N'Ðien thoai Samsung Galaxy A52', N'Ðien thoai Samsung Galaxy A52 128GB', 8290000, 23, N' /img/dummyimg.png', 8290000, 4)
INSERT [dbo].[products] ([id], [name], [description], [price], [quality], [imageURL], [promotion_price], [categoryId]) VALUES (8, N'Ðien thoai OPPO Reno6 Z', N'Ðien thoai OPPO Reno6 Z 5G', 9490000, 23, N' /img/dummyimg.png', 9490000, 5)
INSERT [dbo].[products] ([id], [name], [description], [price], [quality], [imageURL], [promotion_price], [categoryId]) VALUES (9, N'Ðien thoai OPPO Reno6 Pro', N'Ðien thoai OPPO Reno6 Pro 5G', 9490000, 12, N' /img/dummyimg.png', 9490000, 5)
INSERT [dbo].[products] ([id], [name], [description], [price], [quality], [imageURL], [promotion_price], [categoryId]) VALUES (10, N'Dien thoai OPPO Reno6', N'Dien thoai OPPO Reno6 5G', 12990000, 13, N' /img/dummyimg.png', 12990000, 5)
INSERT [dbo].[products] ([id], [name], [description], [price], [quality], [imageURL], [promotion_price], [categoryId]) VALUES (11, N'Ðien thoai Vivo V23e', N'Ðien thoai Vivo V23e', 8190000, 13, N' /img/dummyimg.png', 8190000, 6)
INSERT [dbo].[products] ([id], [name], [description], [price], [quality], [imageURL], [promotion_price], [categoryId]) VALUES (12, N'Ðien thoai Vivo X70 Pro', N'Ðien thoai Vivo X70 Pro 5g', 18990000, 16, N' /img/dummyimg.png', 18990000, 6)
INSERT [dbo].[products] ([id], [name], [description], [price], [quality], [imageURL], [promotion_price], [categoryId]) VALUES (13, N'Ðien thoai Xiaomi 11T', N'Ðien thoai Xiaomi 11T 5G 128GB', 10390000, 16, N' /img/dummyimg.png', 10390000, 7)
INSERT [dbo].[products] ([id], [name], [description], [price], [quality], [imageURL], [promotion_price], [categoryId]) VALUES (14, N'Ðien thoai Xiaomi 11T Pro', N'Ðien thoai Xiaomi 11T Pro 5G 12GB', 14490000, 16, N' /img/dummyimg.png', 14490000, 7)
INSERT [dbo].[products] ([id], [name], [description], [price], [quality], [imageURL], [promotion_price], [categoryId]) VALUES (15, N'Ðien thoai iPhone 13 Pro', N'Ðien thoai iPhone 13 Pro Max 128GB', 33990000, 16, N' /img/dummyimg.png', 33990000, 8)
INSERT [dbo].[products] ([id], [name], [description], [price], [quality], [imageURL], [promotion_price], [categoryId]) VALUES (16, N'Ðien thoai iPhone 13 Pro', N'Ðien thoai iPhone 13 Pro 128GB', 30990000, 14, N' /img/dummyimg.png', 30990000, 8)
SET IDENTITY_INSERT [dbo].[products] OFF
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
ALTER TABLE [dbo].[order]  WITH CHECK ADD  CONSTRAINT [FK_order_AspNetUsers1] FOREIGN KEY([customer_id])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[order] CHECK CONSTRAINT [FK_order_AspNetUsers1]
GO
ALTER TABLE [dbo].[order_detail]  WITH CHECK ADD  CONSTRAINT [FK_order_detail_order] FOREIGN KEY([order_id])
REFERENCES [dbo].[order] ([id])
GO
ALTER TABLE [dbo].[order_detail] CHECK CONSTRAINT [FK_order_detail_order]
GO
ALTER TABLE [dbo].[order_detail]  WITH CHECK ADD  CONSTRAINT [FK_order_detail_products] FOREIGN KEY([product_id])
REFERENCES [dbo].[products] ([id])
GO
ALTER TABLE [dbo].[order_detail] CHECK CONSTRAINT [FK_order_detail_products]
GO
ALTER TABLE [dbo].[products]  WITH CHECK ADD FOREIGN KEY([categoryId])
REFERENCES [dbo].[category] ([id])
GO
