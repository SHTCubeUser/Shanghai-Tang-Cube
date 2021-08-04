USE [is21olap]
GO
/****** Object:  Table [dbo].[CustomerMapping]    Script Date: 8/4/2021 4:57:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerMapping](
	[customer_id] [nvarchar](255) NULL,
	[NS_Name] [nvarchar](255) NULL,
	[BI_Loc] [nvarchar](255) NULL,
	[Channel] [nvarchar](255) NULL,
	[country] [nvarchar](255) NULL
) ON [PRIMARY]
GO
