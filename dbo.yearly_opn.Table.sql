USE [is21olap]
GO
/****** Object:  Table [dbo].[yearly_opn]    Script Date: 8/4/2021 4:57:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[yearly_opn](
	[opn_date] [date] NULL,
	[item_id] [float] NULL,
	[location_id] [float] NULL,
	[opn_qty] [int] NULL
) ON [PRIMARY]
GO
