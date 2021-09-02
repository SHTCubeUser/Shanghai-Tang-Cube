USE [is21olap]
GO
/****** Object:  Table [dbo].[Traffic_Count]    Script Date: 9/2/2021 2:49:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Traffic_Count](
	[DATE_CREATED] [datetime] NULL,
	[LOCATION_ID] [float] NULL,
	[DATE_0] [datetime] NULL,
	[IS_INACTIVE] [nvarchar](1) NULL,
	[LAST_MODIFIED_DATE] [datetime] NULL,
	[PARENT_ID] [float] NULL,
	[DAILY_TRAFFIC_COUNT_EXTID] [nvarchar](255) NULL,
	[DAILY_TRAFFIC_COUNT_ID] [float] NULL,
	[VISITOR] [float] NULL
) ON [PRIMARY]
GO
