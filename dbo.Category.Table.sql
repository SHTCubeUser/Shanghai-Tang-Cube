USE [is21olap]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 9/2/2021 2:49:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[DATE_CREATED] [datetime] NULL,
	[IS_INACTIVE] [nvarchar](1) NULL,
	[LAST_MODIFIED_DATE] [datetime] NULL,
	[PARENT_ID] [float] NULL,
	[CATEGORY1_EXTID] [nvarchar](255) NULL,
	[CATEGORY1_ID] [float] NULL,
	[CATEGORY1_NAME] [nvarchar](999) NULL,
	[CATEGORY_CODE] [nvarchar](4000) NULL
) ON [PRIMARY]
GO
