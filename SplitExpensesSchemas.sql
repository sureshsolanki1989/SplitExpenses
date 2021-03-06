USE [Splito]
GO
/****** Object:  Table [dbo].[ExpenseComment_Mapping]    Script Date: 1/15/2019 12:27:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ExpenseComment_Mapping](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[User_Id] [int] NULL,
	[Expense_Id] [int] NULL,
	[Comment] [varchar](100) NULL,
	[CreatedBy] [varchar](20) NULL,
	[ModifiedBy] [varchar](20) NULL,
	[CreatedOn] [date] NULL,
	[ModifiedOn] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[expenses]    Script Date: 1/15/2019 12:27:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[expenses](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](50) NULL,
	[Amount] [decimal](18, 2) NULL,
	[Split_type] [int] NULL,
	[Group_id] [int] NULL,
	[Imag] [image] NULL,
	[CreatedBy] [varchar](50) NULL,
	[ModifiedBy] [varchar](50) NULL,
	[CreatedOn] [date] NULL,
	[ModifiedOn] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[expenseUser_Mapping]    Script Date: 1/15/2019 12:27:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[expenseUser_Mapping](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Expense_id] [int] NULL,
	[User_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[groups]    Script Date: 1/15/2019 12:27:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[groups](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](20) NULL,
	[Description] [varchar](50) NULL,
	[Type] [varchar](30) NULL,
	[Imag] [image] NULL,
	[CreatedBy] [varchar](20) NULL,
	[ModifiedBy] [varchar](20) NULL,
	[CreatedOn] [date] NULL,
	[ModifiedOn] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[groupUserMapping]    Script Date: 1/15/2019 12:27:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[groupUserMapping](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Group_Id] [int] NULL,
	[User_Id] [int] NULL,
	[ModifiedBy] [varchar](20) NULL,
	[CreatedOn] [date] NULL,
	[ModifiedOn] [date] NULL,
	[CreatedBy] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PaidBy_Mapping]    Script Date: 1/15/2019 12:27:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PaidBy_Mapping](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[User_Id] [int] NULL,
	[Expense_Id] [int] NULL,
	[Amount] [decimal](18, 2) NULL,
	[CreatedBy] [varchar](20) NULL,
	[ModifiedBy] [varchar](20) NULL,
	[CreatedOn] [date] NULL,
	[ModifiedOn] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SplitBy_Mapping]    Script Date: 1/15/2019 12:27:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SplitBy_Mapping](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[User_Id] [int] NULL,
	[Expense_Id] [int] NULL,
	[Amount] [decimal](18, 2) NULL,
	[unit] [int] NULL,
	[CreatedBy] [varchar](20) NULL,
	[ModifiedBy] [varchar](20) NULL,
	[CreatedOn] [date] NULL,
	[ModifiedOn] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SplitCode]    Script Date: 1/15/2019 12:27:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[SplitCode](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](20) NULL,
	[code] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[users]    Script Date: 1/15/2019 12:27:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](20) NULL,
	[Mobile] [varchar](20) NULL,
	[Email] [varchar](50) NULL,
	[Verification_Status] [varchar](30) NULL,
	[CreatedOn] [date] NULL,
	[ModifiedOn] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[ExpenseComment_Mapping] ADD  DEFAULT (NULL) FOR [User_Id]
GO
ALTER TABLE [dbo].[ExpenseComment_Mapping] ADD  DEFAULT (NULL) FOR [Expense_Id]
GO
ALTER TABLE [dbo].[ExpenseComment_Mapping] ADD  DEFAULT (NULL) FOR [Comment]
GO
ALTER TABLE [dbo].[ExpenseComment_Mapping] ADD  DEFAULT (NULL) FOR [CreatedBy]
GO
ALTER TABLE [dbo].[ExpenseComment_Mapping] ADD  DEFAULT (NULL) FOR [ModifiedBy]
GO
ALTER TABLE [dbo].[ExpenseComment_Mapping] ADD  DEFAULT (NULL) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[ExpenseComment_Mapping] ADD  DEFAULT (NULL) FOR [ModifiedOn]
GO
ALTER TABLE [dbo].[expenses] ADD  DEFAULT (NULL) FOR [Description]
GO
ALTER TABLE [dbo].[expenses] ADD  DEFAULT (NULL) FOR [Amount]
GO
ALTER TABLE [dbo].[expenses] ADD  DEFAULT (NULL) FOR [Split_type]
GO
ALTER TABLE [dbo].[expenses] ADD  DEFAULT (NULL) FOR [Group_id]
GO
ALTER TABLE [dbo].[expenses] ADD  DEFAULT (NULL) FOR [CreatedBy]
GO
ALTER TABLE [dbo].[expenses] ADD  DEFAULT (NULL) FOR [ModifiedBy]
GO
ALTER TABLE [dbo].[expenses] ADD  DEFAULT (NULL) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[expenses] ADD  DEFAULT (NULL) FOR [ModifiedOn]
GO
ALTER TABLE [dbo].[groups] ADD  DEFAULT (NULL) FOR [Name]
GO
ALTER TABLE [dbo].[groups] ADD  DEFAULT (NULL) FOR [Description]
GO
ALTER TABLE [dbo].[groups] ADD  DEFAULT (NULL) FOR [Type]
GO
ALTER TABLE [dbo].[groups] ADD  DEFAULT (NULL) FOR [CreatedBy]
GO
ALTER TABLE [dbo].[groups] ADD  DEFAULT (NULL) FOR [ModifiedBy]
GO
ALTER TABLE [dbo].[groups] ADD  DEFAULT (NULL) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[groups] ADD  DEFAULT (NULL) FOR [ModifiedOn]
GO
ALTER TABLE [dbo].[groupUserMapping] ADD  DEFAULT (NULL) FOR [Group_Id]
GO
ALTER TABLE [dbo].[groupUserMapping] ADD  DEFAULT (NULL) FOR [User_Id]
GO
ALTER TABLE [dbo].[groupUserMapping] ADD  DEFAULT (NULL) FOR [ModifiedBy]
GO
ALTER TABLE [dbo].[groupUserMapping] ADD  DEFAULT (NULL) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[groupUserMapping] ADD  DEFAULT (NULL) FOR [ModifiedOn]
GO
ALTER TABLE [dbo].[PaidBy_Mapping] ADD  DEFAULT (NULL) FOR [User_Id]
GO
ALTER TABLE [dbo].[PaidBy_Mapping] ADD  DEFAULT (NULL) FOR [Expense_Id]
GO
ALTER TABLE [dbo].[PaidBy_Mapping] ADD  DEFAULT (NULL) FOR [Amount]
GO
ALTER TABLE [dbo].[PaidBy_Mapping] ADD  DEFAULT (NULL) FOR [CreatedBy]
GO
ALTER TABLE [dbo].[PaidBy_Mapping] ADD  DEFAULT (NULL) FOR [ModifiedBy]
GO
ALTER TABLE [dbo].[PaidBy_Mapping] ADD  DEFAULT (NULL) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[PaidBy_Mapping] ADD  DEFAULT (NULL) FOR [ModifiedOn]
GO
ALTER TABLE [dbo].[SplitBy_Mapping] ADD  DEFAULT (NULL) FOR [User_Id]
GO
ALTER TABLE [dbo].[SplitBy_Mapping] ADD  DEFAULT (NULL) FOR [Expense_Id]
GO
ALTER TABLE [dbo].[SplitBy_Mapping] ADD  DEFAULT (NULL) FOR [Amount]
GO
ALTER TABLE [dbo].[SplitBy_Mapping] ADD  DEFAULT (NULL) FOR [unit]
GO
ALTER TABLE [dbo].[SplitBy_Mapping] ADD  DEFAULT (NULL) FOR [CreatedBy]
GO
ALTER TABLE [dbo].[SplitBy_Mapping] ADD  DEFAULT (NULL) FOR [ModifiedBy]
GO
ALTER TABLE [dbo].[SplitBy_Mapping] ADD  DEFAULT (NULL) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[SplitBy_Mapping] ADD  DEFAULT (NULL) FOR [ModifiedOn]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (NULL) FOR [Name]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (NULL) FOR [Mobile]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (NULL) FOR [Email]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (NULL) FOR [Verification_Status]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (NULL) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (NULL) FOR [ModifiedOn]
GO
ALTER TABLE [dbo].[ExpenseComment_Mapping]  WITH CHECK ADD FOREIGN KEY([Expense_Id])
REFERENCES [dbo].[expenses] ([Id])
GO
ALTER TABLE [dbo].[ExpenseComment_Mapping]  WITH CHECK ADD FOREIGN KEY([User_Id])
REFERENCES [dbo].[users] ([Id])
GO
ALTER TABLE [dbo].[expenses]  WITH CHECK ADD FOREIGN KEY([Group_id])
REFERENCES [dbo].[groups] ([Id])
GO
ALTER TABLE [dbo].[expenseUser_Mapping]  WITH CHECK ADD FOREIGN KEY([Expense_id])
REFERENCES [dbo].[expenses] ([Id])
GO
ALTER TABLE [dbo].[expenseUser_Mapping]  WITH CHECK ADD FOREIGN KEY([User_id])
REFERENCES [dbo].[users] ([Id])
GO
ALTER TABLE [dbo].[groupUserMapping]  WITH CHECK ADD FOREIGN KEY([Group_Id])
REFERENCES [dbo].[groups] ([Id])
GO
ALTER TABLE [dbo].[groupUserMapping]  WITH CHECK ADD FOREIGN KEY([User_Id])
REFERENCES [dbo].[users] ([Id])
GO
ALTER TABLE [dbo].[PaidBy_Mapping]  WITH CHECK ADD FOREIGN KEY([Expense_Id])
REFERENCES [dbo].[expenses] ([Id])
GO
ALTER TABLE [dbo].[PaidBy_Mapping]  WITH CHECK ADD FOREIGN KEY([User_Id])
REFERENCES [dbo].[users] ([Id])
GO
ALTER TABLE [dbo].[SplitBy_Mapping]  WITH CHECK ADD FOREIGN KEY([Expense_Id])
REFERENCES [dbo].[expenses] ([Id])
GO
ALTER TABLE [dbo].[SplitBy_Mapping]  WITH CHECK ADD FOREIGN KEY([User_Id])
REFERENCES [dbo].[users] ([Id])
GO
