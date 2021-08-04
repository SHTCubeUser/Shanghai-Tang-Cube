USE [is21olap]
GO
/****** Object:  Table [dbo].[Targets]    Script Date: 8/4/2021 4:57:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Targets](
	[DATE_CREATED] [datetime] NULL,
	[LOCATION_ID] [float] NULL,
	[AMOUNT_USD] [float] NULL,
	[CUSTOMER_ID] [float] NULL,
	[DATE_0] [datetime] NULL,
	[IS_INACTIVE] [nvarchar](1) NULL,
	[LAST_MODIFIED_DATE] [datetime] NULL,
	[LOCATION_ALIAS] [nvarchar](4000) NULL,
	[PARENT_ID] [float] NULL,
	[TARGETS_FOR_REPORTING_EXTID] [nvarchar](255) NULL,
	[TARGETS_FOR_REPORTING_ID] [float] NULL,
	[VERSION_0] [nvarchar](4000) NULL
) ON [PRIMARY]
GO
