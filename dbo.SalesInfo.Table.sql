USE [is21olap]
GO
/****** Object:  Table [dbo].[SalesInfo]    Script Date: 8/4/2021 4:57:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SalesInfo](
	[BI_Loc] [nvarchar](255) NULL,
	[trandate] [datetime] NULL,
	[tranid] [nvarchar](138) NULL,
	[transaction_type] [nvarchar](192) NULL,
	[item_id] [float] NULL,
	[full_name] [nvarchar](550) NULL,
	[transaction_line_id] [float] NULL,
	[original_quantity] [float] NULL,
	[local_amount] [float] NULL,
	[us_amount] [float] NULL,
	[entity_id] [float] NULL,
	[cust_name] [nvarchar](1800) NULL,
	[location_id] [float] NULL,
	[targetamt] [float] NOT NULL,
	[budgetidx] [float] NOT NULL,
	[budgetbse] [float] NOT NULL
) ON [PRIMARY]
GO
