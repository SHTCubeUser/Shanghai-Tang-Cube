USE [is21olap]
GO
/****** Object:  Table [dbo].[ExchangeRate]    Script Date: 8/4/2021 4:57:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExchangeRate](
	[currency_id] [float] NULL,
	[name] [nvarchar](105) NULL,
	[effdate] [datetime] NULL,
	[exrate] [float] NULL
) ON [PRIMARY]
GO
