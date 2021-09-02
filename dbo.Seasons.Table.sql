USE [is21olap]
GO
/****** Object:  Table [dbo].[Seasons]    Script Date: 9/2/2021 2:49:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Seasons](
	[DATE_CREATED] [datetime] NULL,
	[IS_INACTIVE] [nvarchar](1) NULL,
	[LAST_MODIFIED_DATE] [datetime] NULL,
	[PARENT_ID] [float] NULL,
	[SEASON_DESCRIPTION] [nvarchar](4000) NULL,
	[SEASON_EXTID] [nvarchar](255) NULL,
	[SEASON_ID] [float] NULL,
	[SEASON_NAME] [nvarchar](999) NULL
) ON [PRIMARY]
GO
