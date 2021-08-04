USE [is21olap]
GO
/****** Object:  Table [dbo].[AccountMaster]    Script Date: 8/4/2021 4:57:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccountMaster](
	[DATE_LAST_MODIFIED] [datetime] NULL,
	[LOCATION_ID] [float] NULL,
	[ACCOUNTNUMBER] [nvarchar](60) NULL,
	[ACCOUNT_EXTID] [nvarchar](255) NULL,
	[ACCOUNT_ID] [float] NULL,
	[CASHFLOW_RATE_TYPE] [nvarchar](10) NULL,
	[CATEGORY_1099_MISC] [nvarchar](60) NULL,
	[CATEGORY_1099_MISC_MTHRESHOLD] [float] NULL,
	[CLASS_ID] [float] NULL,
	[CURRENCY_ID] [float] NULL,
	[DEFERRAL_ACCOUNT_ID] [float] NULL,
	[DEPARTMENT_ID] [float] NULL,
	[DESCRIPTION] [nvarchar](25) NULL,
	[FULL_DESCRIPTION] [nvarchar](60) NULL,
	[FULL_NAME] [nvarchar](4000) NULL,
	[GENERAL_RATE_TYPE] [nvarchar](10) NULL,
	[ISINACTIVE] [nvarchar](3) NULL,
	[IS_BALANCESHEET] [nvarchar](1) NULL,
	[IS_INCLUDED_IN_ELIMINATION] [nvarchar](1) NULL,
	[IS_INCLUDED_IN_REVAL] [nvarchar](1) NULL,
	[IS_INCLUDING_CHILD_SUBS] [nvarchar](3) NULL,
	[IS_LEFTSIDE] [nvarchar](1) NULL,
	[IS_SUMMARY] [nvarchar](3) NULL,
	[LEGAL_NAME] [nvarchar](400) NULL,
	[NAME] [nvarchar](93) NULL,
	[OPENBALANCE] [float] NULL,
	[PARENT_ID] [float] NULL,
	[TYPE_NAME] [nvarchar](128) NULL,
	[TYPE_SEQUENCE] [float] NULL
) ON [PRIMARY]
GO
