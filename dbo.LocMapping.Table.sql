USE [is21olap]
GO
/****** Object:  Table [dbo].[LocMapping]    Script Date: 9/2/2021 2:49:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LocMapping](
	[location_id] [nvarchar](255) NULL,
	[NS_Loc] [nvarchar](255) NULL,
	[BI_Loc] [nvarchar](255) NULL,
	[Channel] [nvarchar](255) NULL,
	[Country] [nvarchar](255) NULL
) ON [PRIMARY]
GO
