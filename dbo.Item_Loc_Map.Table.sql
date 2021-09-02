USE [is21olap]
GO
/****** Object:  Table [dbo].[Item_Loc_Map]    Script Date: 9/2/2021 2:49:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Item_Loc_Map](
	[Item_ID] [varchar](10) NULL,
	[Location_ID] [varchar](10) NULL,
	[On_Hand_Count] [int] NULL,
	[Average_Cost] [decimal](13, 2) NULL
) ON [PRIMARY]
GO
