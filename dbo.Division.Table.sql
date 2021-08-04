USE [is21olap]
GO
/****** Object:  Table [dbo].[Division]    Script Date: 8/4/2021 4:57:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Division](
	[DATE_CREATED] [datetime] NULL,
	[IS_INACTIVE] [nvarchar](1) NULL,
	[LAST_MODIFIED_DATE] [datetime] NULL,
	[PARENT_ID] [float] NULL,
	[DIVISION_CODE] [nvarchar](4000) NULL,
	[DIVISION_EXTID] [nvarchar](255) NULL,
	[DIVISION_ID] [float] NULL,
	[DIVISION_NAME] [nvarchar](999) NULL
) ON [PRIMARY]
GO
