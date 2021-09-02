USE [is21olap]
GO
/****** Object:  Table [dbo].[Currency]    Script Date: 9/2/2021 2:49:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Currency](
	[DATE_LAST_MODIFIED] [datetime] NULL,
	[CURRENCY_ID] [float] NULL,
	[CURRENCY_EXTID] [nvarchar](255) NULL,
	[IS_INACTIVE] [nvarchar](3) NULL,
	[NAME] [nvarchar](105) NULL,
	[PRECISION_0] [float] NULL,
	[SYMBOL] [nvarchar](4) NULL
) ON [PRIMARY]
GO
