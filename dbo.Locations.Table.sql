USE [is21olap]
GO
/****** Object:  Table [dbo].[Locations]    Script Date: 8/4/2021 4:57:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Locations](
	[ADDRESS] [nvarchar](999) NULL,
	[ADDRESSEE] [nvarchar](100) NULL,
	[ADDRESS_ONE] [nvarchar](150) NULL,
	[ADDRESS_THREE] [nvarchar](150) NULL,
	[ADDRESS_TWO] [nvarchar](150) NULL,
	[ATTENTION] [nvarchar](150) NULL,
	[BOUTIQUE_TYPE_ID] [float] NULL,
	[BRANCH_ID] [nvarchar](4000) NULL,
	[CITY] [nvarchar](50) NULL,
	[CN_OMLOG] [nvarchar](1) NULL,
	[COMPANY_NAME] [nvarchar](4000) NULL,
	[CONSIGNMENT] [nvarchar](1) NULL,
	[COUNTRY] [nvarchar](50) NULL,
	[DATE_LAST_MODIFIED] [datetime] NULL,
	[EMAIL_ADDRESS] [nvarchar](255) NULL,
	[FULL_NAME] [nvarchar](4000) NULL,
	[GEOGRAPHIC_LOCATION_ID] [float] NULL,
	[INVENTORY_AVAILABLE] [nvarchar](3) NULL,
	[INVENTORY_AVAILABLE_WEB_STORE] [nvarchar](3) NULL,
	[ISINACTIVE] [nvarchar](3) NULL,
	[IS_INCLUDE_IN_SUPPLY_PLANNING] [nvarchar](3) NULL,
	[LOCATION_EXTID] [nvarchar](255) NULL,
	[LOCATION_ID] [float] NULL,
	[NAME] [nvarchar](31) NULL,
	[OMLOG_WAREHOUSE] [nvarchar](1) NULL,
	[PARENT_ID] [float] NULL,
	[PHONE] [nvarchar](100) NULL,
	[PHONE_NUMBER] [nvarchar](4000) NULL,
	[POS_DISPLAY_SEQUENCE] [float] NULL,
	[POS_INVOICE_ADDRESS] [nvarchar](4000) NULL,
	[POS_TC] [nvarchar](4000) NULL,
	[REMARKS] [nvarchar](4000) NULL,
	[RETURNADDRESS] [nvarchar](999) NULL,
	[RETURN_ADDRESS_ONE] [nvarchar](150) NULL,
	[RETURN_ADDRESS_TWO] [nvarchar](150) NULL,
	[RETURN_CITY] [nvarchar](50) NULL,
	[RETURN_COUNTRY] [nvarchar](50) NULL,
	[RETURN_STATE] [nvarchar](50) NULL,
	[RETURN_ZIPCODE] [nvarchar](36) NULL,
	[SHOW_IN_INSTORE] [nvarchar](1) NULL,
	[STATE] [nvarchar](50) NULL,
	[TRAN_NUM_PREFIX] [nvarchar](8) NULL,
	[USE_BINS] [nvarchar](3) NULL,
	[ZEBRA_PRINTER_ID] [nvarchar](4000) NULL,
	[ZIPCODE] [nvarchar](36) NULL
) ON [PRIMARY]
GO
