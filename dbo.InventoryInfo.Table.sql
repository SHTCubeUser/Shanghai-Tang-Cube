USE [is21olap]
GO
/****** Object:  Table [dbo].[InventoryInfo]    Script Date: 9/2/2021 2:49:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InventoryInfo](
	[trandate] [datetime] NULL,
	[item_id] [float] NULL,
	[location_id] [float] NULL,
	[yr_opening] [int] NOT NULL,
	[qty] [float] NULL,
	[local_amount] [float] NULL,
	[us_amount] [float] NULL,
	[item_cost] [float] NULL
) ON [PRIMARY]
GO
