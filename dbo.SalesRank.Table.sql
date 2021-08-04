USE [is21olap]
GO
/****** Object:  Table [dbo].[SalesRank]    Script Date: 8/4/2021 4:57:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SalesRank](
	[BI_Loc] [nvarchar](255) NULL,
	[yr] [int] NULL,
	[mth] [int] NULL,
	[qty] [float] NULL,
	[local_amount] [float] NULL,
	[us_amount] [float] NULL
) ON [PRIMARY]
GO
