
USE [ApexRestaurantDB]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Customers]
(
    [Id] [int] IDENTITY(1,1) NOT NULL,
    [FirstName] [nvarchar](200) NULL,
    [LastName] [nvarchar](200) NULL,
    [Address] [nvarchar](500) NULL,
    [PhoneRes] [nvarchar](50) NULL,
    [PhoneMob] [nvarchar](50) NULL,
    [EnrollDate] [datetime] NULL,
    [IsActive] [bit] NULL,
    [CreatedBy] [nvarchar](200) NULL,
    [CreatedOn] [datetime] NULL,
    [UpdatedBy] [nvarchar](200) NULL,
    [UpdatedOn] [datetime] NULL,
    PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [MealDishes]
(
    [MealDishesId] [int] IDENTITY(1,1) NOT NULL,
    [MealId] [int] NULL,
    [MenuItemId] [int] NULL,
    [Quantity] [nvarchar](60) NULL,
    [IsActive] [bit] NULL,
    [CreatedBy] [nvarchar](200) NULL,
    [CreatedOn] [datetime] NULL,
    [UpdatedBy] [nvarchar](200) NULL,
    [UpdatedOn] [datetime] NULL,
    PRIMARY KEY CLUSTERED 
(
	[MealDishesId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Meals]
(
    [MealId] [int] IDENTITY(1,1) NOT NULL,
    [StaffId] [int] NULL,
    [CustomerId] [int] NULL,
    [Date_of_Meal] [datetime] NULL,
    [Cost_of_Meal] [nvarchar](50) NULL,
    [IsActive] [bit] NULL,
    [CreatedBy] [nvarchar](200) NULL,
    [CreatedOn] [datetime] NULL,
    [UpdatedBy] [nvarchar](200) NULL,
    [UpdatedOn] [datetime] NULL,
    PRIMARY KEY CLUSTERED 
(
	[MealId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [MenuItems]
(
    [MenuItemId] [int] IDENTITY(1,1) NOT NULL,
    [MenuId] [int] NULL,
    [Menu_Items_Name] [nvarchar](200) NULL,
    [IsActive] [bit] NULL,
    [CreatedBy] [nvarchar](200) NULL,
    [CreatedOn] [datetime] NULL,
    [UpdatedBy] [nvarchar](200) NULL,
    [UpdatedOn] [datetime] NULL,
    PRIMARY KEY CLUSTERED 
(
	[MenuItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Menus]
(
    [Id] [int] IDENTITY(1,1) NOT NULL,
    [Menu_Name] [nvarchar](200) NULL,
    [Available_Date_From] [datetime] NULL,
    [Available_Date_To] [datetime] NULL,
    [IsActive] [bit] NULL,
    [CreatedBy] [nvarchar](200) NULL,
    [CreatedOn] [datetime] NULL,
    [UpdatedBy] [nvarchar](200) NULL,
    [UpdatedOn] [datetime] NULL,
    PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [StaffRoles]
(
    [Staff_Roles_Id] [int] IDENTITY(1,1) NOT NULL,
    [Staff_Roles_Description] [nvarchar](200) NULL,
    [IsActive] [bit] NULL,
    [CreatedBy] [nvarchar](200) NULL,
    [CreatedOn] [datetime] NULL,
    [UpdatedBy] [nvarchar](200) NULL,
    [UpdatedOn] [datetime] NULL,
    PRIMARY KEY CLUSTERED 
(
	[Staff_Roles_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Staffs]
(
    [Id] [int] IDENTITY(1,1) NOT NULL,
    [Staff_Role_Id] [int] NULL,
    [FirstName] [nvarchar](200) NULL,
    [LastName] [nvarchar](200) NULL,
    [Address] [nvarchar](500) NULL,
    [PhoneRes] [nvarchar](50) NULL,
    [PhoneMob] [nvarchar](50) NULL,
    [EnrollDate] [datetime] NULL,
    [IsActive] [bit] NULL,
    [CreatedBy] [nvarchar](200) NULL,
    [CreatedOn] [datetime] NULL,
    [UpdatedBy] [nvarchar](200) NULL,
    [UpdatedOn] [datetime] NULL,
    PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [Customers] ON

INSERT [Customers]
    ([Id], [FirstName], [LastName], [Address], [PhoneRes], [PhoneMob], [EnrollDate], [IsActive], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn])
VALUES
    (1, N'Bishwo', N'Adhikari', N'Kathmandu', N'0101010101', N'99999999', CAST(N'2020-01-01T00:00:00.000' AS DateTime), 1, N'admin', CAST(N'2020-01-01T00:00:00.000' AS DateTime), N'admin', CAST(N'2020-01-01T00:00:00.000' AS DateTime))
INSERT [Customers]
    ([Id], [FirstName], [LastName], [Address], [PhoneRes], [PhoneMob], [EnrollDate], [IsActive], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn])
VALUES
    (2, N'Test', N'User', N'Addr', N'01', N'99', CAST(N'2020-01-01T00:00:00.000' AS DateTime), 1, N'a', CAST(N'2020-04-18T00:00:00.000' AS DateTime), N'a', CAST(N'2020-04-18T00:00:00.000' AS DateTime))
INSERT [Customers]
    ([Id], [FirstName], [LastName], [Address], [PhoneRes], [PhoneMob], [EnrollDate], [IsActive], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn])
VALUES
    (3, N'first_name', N'last_name', N'address', N'00000001', N'99999999', CAST(N'2020-04-18T16:51:30.127' AS DateTime), 1, N'admin', CAST(N'2020-04-18T16:51:30.127' AS DateTime), N'admin', CAST(N'2020-04-18T16:51:30.127' AS DateTime))
INSERT [Customers]
    ([Id], [FirstName], [LastName], [Address], [PhoneRes], [PhoneMob], [EnrollDate], [IsActive], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn])
VALUES
    (4, N'apex', N'lab', N'old baneshwor', N'0123456789', N'987654321', CAST(N'2020-04-19T11:50:42.427' AS DateTime), 1, N'admin', CAST(N'2020-04-19T11:50:42.427' AS DateTime), N'admin', CAST(N'2020-04-19T11:50:42.427' AS DateTime))
SET IDENTITY_INSERT [Customers] OFF
SET IDENTITY_INSERT [MealDishes] ON

INSERT [MealDishes]
    ([MealDishesId], [MealId], [MenuItemId], [Quantity], [IsActive], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn])
VALUES
    (3, 1, 2, N'10', 1, N'admin', CAST(N'2020-04-26T00:00:00.000' AS DateTime), N'admin', CAST(N'2020-04-26T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [MealDishes] OFF
SET IDENTITY_INSERT [Meals] ON

INSERT [Meals]
    ([MealId], [StaffId], [CustomerId], [Date_of_Meal], [Cost_of_Meal], [IsActive], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn])
VALUES
    (1, 1, 1, CAST(N'2020-04-20T00:00:00.000' AS DateTime), N'1500', 1, N'admin', CAST(N'2020-04-26T00:00:00.000' AS DateTime), N'admin', CAST(N'2020-04-26T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [Meals] OFF
SET IDENTITY_INSERT [MenuItems] ON

INSERT [MenuItems]
    ([MenuItemId], [MenuId], [Menu_Items_Name], [IsActive], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn])
VALUES
    (1, 1, N'momo', 1, N'admin', CAST(N'2020-04-26T00:00:00.000' AS DateTime), N'admin', CAST(N'2020-04-26T00:00:00.000' AS DateTime))
INSERT [MenuItems]
    ([MenuItemId], [MenuId], [Menu_Items_Name], [IsActive], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn])
VALUES
    (2, 2, N'achar', 1, N'admin', CAST(N'2020-04-26T00:00:00.000' AS DateTime), N'admin', CAST(N'2020-04-26T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [MenuItems] OFF
SET IDENTITY_INSERT [Menus] ON

INSERT [Menus]
    ([Id], [Menu_Name], [Available_Date_From], [Available_Date_To], [IsActive], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn])
VALUES
    (1, N'continental', CAST(N'2020-04-26T00:00:00.000' AS DateTime), CAST(N'2020-04-30T00:00:00.000' AS DateTime), 1, N'admin', CAST(N'2020-04-26T00:00:00.000' AS DateTime), N'admin', CAST(N'2020-04-26T00:00:00.000' AS DateTime))
INSERT [Menus]
    ([Id], [Menu_Name], [Available_Date_From], [Available_Date_To], [IsActive], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn])
VALUES
    (2, N'local', CAST(N'2020-04-26T00:00:00.000' AS DateTime), CAST(N'2020-04-26T00:00:00.000' AS DateTime), 1, N'admin', CAST(N'2020-04-26T00:00:00.000' AS DateTime), N'admin', CAST(N'2020-04-26T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [Menus] OFF
SET IDENTITY_INSERT [StaffRoles] ON

INSERT [StaffRoles]
    ([Staff_Roles_Id], [Staff_Roles_Description], [IsActive], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn])
VALUES
    (1, N'waiter', 1, N'admin', CAST(N'2020-04-26T00:00:00.000' AS DateTime), N'admin', CAST(N'2020-04-26T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [StaffRoles] OFF
SET IDENTITY_INSERT [Staffs] ON

INSERT [Staffs]
    ([Id], [Staff_Role_Id], [FirstName], [LastName], [Address], [PhoneRes], [PhoneMob], [EnrollDate], [IsActive], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn])
VALUES
    (1, 1, N'first waiter', N'last waiter', N'first address', N'11111', N'999999', CAST(N'2020-04-20T00:00:00.000' AS DateTime), 1, N'admin', CAST(N'2020-04-26T00:00:00.000' AS DateTime), N'admin', CAST(N'2020-04-26T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [Staffs] OFF