USE [is21olap]
GO
/****** Object:  Table [dbo].[CurrencyRates]    Script Date: 9/2/2021 2:49:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CurrencyRates](
	[DATE_LAST_MODIFIED] [datetime] NULL,
	[ANCHOR_CURRENCY_ID] [float] NULL,
	[BASE_CURRENCY_ID] [float] NULL,
	[CURRENCYRATE_ID] [float] NULL,
	[CURRENCYRATE_PROVIDER_ID] [nvarchar](8) NULL,
	[CURRENCY_ID] [float] NULL,
	[DATE_EFFECTIVE] [datetime] NULL,
	[ENTITY_ID] [float] NULL,
	[EXCHANGE_RATE] [float] NULL,
	[IS_ANCHOR_ONLY] [nvarchar](3) NULL,
	[UPDATE_METHOD_ID] [nvarchar](8) NULL
) ON [PRIMARY]
GO
