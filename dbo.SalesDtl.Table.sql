USE [is21olap]
GO
/****** Object:  Table [dbo].[SalesDtl]    Script Date: 9/2/2021 2:49:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SalesDtl](
	[EXPECTED_RECEIPT_DATE] [datetime] NULL,
	[LOCATION_ID] [float] NULL,
	[MEMO] [nvarchar](4000) NULL,
	[ITEM_ID] [float] NULL,
	[ITEM_UNIT_PRICE] [nvarchar](42) NULL,
	[NET_AMOUNT] [float] NULL,
	[QUANTITY_ALLOCATED] [float] NULL,
	[ACCOUNT_ID] [float] NULL,
	[ADJUSTMENT_FIELD] [nvarchar](4000) NULL,
	[ADJUSTMENT_TAX_CODE_ID] [float] NULL,
	[ALT_SALES_AMOUNT] [float] NULL,
	[AMORTIZATION_RESIDUAL] [nvarchar](42) NULL,
	[AMOUNT] [float] NULL,
	[AMOUNT_FOREIGN] [float] NULL,
	[AMOUNT_FOREIGN_LINKED] [float] NULL,
	[AMOUNT_LINKED] [float] NULL,
	[AMOUNT_PENDING] [float] NULL,
	[AMOUNT_SETTLEMENT] [float] NULL,
	[AMOUNT_TAXABLE] [float] NULL,
	[AMOUNT_TAXED] [float] NULL,
	[BILLING_SCHEDULE_ID] [float] NULL,
	[BILLING_SUBSIDIARY_ID] [float] NULL,
	[BILL_VARIANCE_STATUS] [nvarchar](128) NULL,
	[BOM_QUANTITY] [float] NULL,
	[CATCH_UP_PERIOD_ID] [float] NULL,
	[CATEGORY_0] [nvarchar](4000) NULL,
	[CHARGE_RULE_ID] [float] NULL,
	[CHARGE_TYPE] [float] NULL,
	[CLASS_ID] [float] NULL,
	[CODE_OF_SUPPLY_ID] [float] NULL,
	[COLOUR_ID] [float] NULL,
	[COMPANY_ID] [float] NULL,
	[COMPONENT_ID] [float] NULL,
	[COMPONENT_YIELD] [float] NULL,
	[COST_ESTIMATE_TYPE] [nvarchar](200) NULL,
	[COUNTERPARTY_VAT_NUMBER] [nvarchar](14) NULL,
	[COUNTRY_OF_ORIGIN] [nvarchar](4000) NULL,
	[COUNTRY_OF_ORIGIN_CODE] [nvarchar](4000) NULL,
	[DATE_CLEARED] [datetime] NULL,
	[DATE_CLOSED] [datetime] NULL,
	[DATE_CREATED] [datetime] NULL,
	[DATE_LAST_MODIFIED] [datetime] NULL,
	[DATE_LAST_MODIFIED_GMT] [datetime] NULL,
	[DATE_REQUESTED] [datetime] NULL,
	[DATE_REVENUE_COMMITTED] [datetime] NULL,
	[DELAY_REV_REC] [nvarchar](3) NULL,
	[DEPARTMENT_ID] [float] NULL,
	[DISCOUNT] [float] NULL,
	[DISCOUNT_AMOUNT] [float] NULL,
	[DISCOUNT_FOR_ITEM_ID] [float] NULL,
	[DISCOUNT_PERCENTAGE] [float] NULL,
	[DO_NOT_DISPLAY_LINE] [nvarchar](3) NULL,
	[DO_NOT_PRINT_LINE] [nvarchar](3) NULL,
	[DO_RESTOCK] [nvarchar](3) NULL,
	[ECOMMERCE_ORDER_NUMBER] [nvarchar](4000) NULL,
	[EMIRATE_ID] [float] NULL,
	[ESTIMATED_COST] [float] NULL,
	[ESTIMATED_COST_FOREIGN] [float] NULL,
	[EU_TRIANGULATION] [nvarchar](1) NULL,
	[EXPENSE_ACCOUNT_ID] [float] NULL,
	[EXPENSE_CATEGORY_ID] [float] NULL,
	[GL_NUMBER] [nvarchar](80) NULL,
	[GL_SEQUENCE] [nvarchar](40) NULL,
	[GL_SEQUENCE_ID] [float] NULL,
	[GROSS_AMOUNT] [float] NULL,
	[HAS_COST_LINE] [nvarchar](3) NULL,
	[HS_CODE] [nvarchar](4000) NULL,
	[ISBILLABLE] [nvarchar](3) NULL,
	[ISCLEARED] [nvarchar](3) NULL,
	[ISNONREIMBURSABLE] [nvarchar](3) NULL,
	[ISTAXABLE] [nvarchar](3) NULL,
	[IS_ALLOCATION] [nvarchar](1) NULL,
	[IS_AMORTIZATION_REV_REC] [nvarchar](3) NULL,
	[IS_COMMITMENT_CONFIRMED] [nvarchar](3) NULL,
	[IS_COST_LINE] [nvarchar](3) NULL,
	[IS_CUSTOM_LINE] [nvarchar](3) NULL,
	[IS_EXCLUDE_FROM_RATE_REQUEST] [nvarchar](3) NULL,
	[IS_FX_VARIANCE] [nvarchar](3) NULL,
	[IS_ITEM_VALUE_ADJUSTMENT] [nvarchar](3) NULL,
	[IS_LANDED_COST] [nvarchar](3) NULL,
	[IS_PROCEED] [nvarchar](1) NULL,
	[IS_SCRAP] [nvarchar](3) NULL,
	[IS_VSOE_ALLOCATION_LINE] [nvarchar](3) NULL,
	[ITEM_COUNT] [float] NULL,
	[ITEM_RECEIVED] [nvarchar](3) NULL,
	[ITEM_SOURCE] [nvarchar](30) NULL,
	[ITEM_SUMMARY] [nvarchar](4000) NULL,
	[KIT_PART_NUMBER] [float] NULL,
	[LANDED_COST_SOURCE_LINE_ID] [float] NULL,
	[MATCH_BILL_TO_RECEIPT] [nvarchar](1) NULL,
	[MATERIAL_CONTENT] [nvarchar](4000) NULL,
	[NEEDS_REVENUE_ELEMENT] [nvarchar](3) NULL,
	[NET_AMOUNT_FOREIGN] [float] NULL,
	[NON_POSTING_LINE] [nvarchar](3) NULL,
	[NOTC_ID] [float] NULL,
	[NUMBER_BILLED] [float] NULL,
	[OPERATION_SEQUENCE_NUMBER] [float] NULL,
	[ORDER_PRIORITY] [float] NULL,
	[ORIGINAL_QUANTITY] [float] NULL,
	[PAYMENT_METHOD_ID] [float] NULL,
	[PAYROLL_ITEM_ID] [float] NULL,
	[PAYROLL_WAGE_BASE_AMOUNT] [float] NULL,
	[PAYROLL_YEAR_TO_DATE_AMOUNT] [float] NULL,
	[PERIOD_CLOSED] [datetime] NULL,
	[PICK_LOCATION_ID] [float] NULL,
	[PRICE_TYPE_ID] [float] NULL,
	[PROJECT_TASK_ID] [float] NULL,
	[PSALE__SALES_STAFF_ID] [float] NULL,
	[PURCHASE_CONTRACT_ID] [float] NULL,
	[QTY_PENDING] [float] NULL,
	[QTY_TOTAL_REQUESTED] [float] NULL,
	[QTY_TO_FULFILL] [float] NULL,
	[QUANTITY_COMMITTED] [float] NULL,
	[QUANTITY_PACKED] [float] NULL,
	[QUANTITY_PICKED] [float] NULL,
	[QUANTITY_RECEIVED_IN_SHIPMENT] [float] NULL,
	[RECEIPT_URL] [nvarchar](255) NULL,
	[RECEIVEBYDATE] [datetime] NULL,
	[REDEMPTION_ID] [float] NULL,
	[REFUNDED_QUANTITY] [float] NULL,
	[REIMBURSEMENT_TYPE] [nvarchar](128) NULL,
	[RELATED_ASSET_ID] [float] NULL,
	[RELATED_COMPANY_ID] [float] NULL,
	[RETAIL_SALES_REP_ID] [float] NULL,
	[REVENUE_ELEMENT_ID] [float] NULL,
	[REV_REC_END_DATE] [datetime] NULL,
	[REV_REC_RULE_ID] [float] NULL,
	[REV_REC_START_DATE] [datetime] NULL,
	[SCHEDULE_ID] [float] NULL,
	[SHIPDATE] [datetime] NULL,
	[SHIPMENT_RECEIVED] [datetime] NULL,
	[SHIPPING_DESCRIPTION] [nvarchar](4000) NULL,
	[SHIPPING_GROUP_ID] [float] NULL,
	[SIZE_ID] [float] NULL,
	[SOURCE_SUBSIDIARY_ID] [float] NULL,
	[STATISTICAL_PROCEDURE_FOR_P_ID] [float] NULL,
	[STATISTICAL_PROCEDURE_FOR_S_ID] [float] NULL,
	[STATISTICAL_VALUE] [float] NULL,
	[STATISTICAL_VALUE__BASE_CURRE] [float] NULL,
	[SUBSCRIPTION_LINE_ID] [float] NULL,
	[SUBSIDIARY_ID] [float] NULL,
	[TAX_ITEM_ID] [float] NULL,
	[TAX_TYPE] [nvarchar](64) NULL,
	[TERM_IN_MONTHS] [float] NULL,
	[TOBEEMAILED] [nvarchar](3) NULL,
	[TOBEFAXED] [nvarchar](3) NULL,
	[TOBEPRINTED] [nvarchar](3) NULL,
	[TO_ACTUAL_RECEIVED] [float] NULL,
	[TRANSACTION_DISCOUNT_LINE] [nvarchar](3) NULL,
	[TRANSACTION_ID] [float] NULL,
	[TRANSACTION_LINE_ID] [float] NULL,
	[TRANSACTION_ORDER] [float] NULL,
	[TRANSFER_ORDER_ITEM_LINE] [float] NULL,
	[TRANSFER_ORDER_LINE_TYPE] [nvarchar](25) NULL,
	[UNIQUE_KEY] [float] NULL,
	[UNIT_COST_OVERRIDE] [float] NULL,
	[UNIT_OF_MEASURE_ID] [float] NULL,
	[VSOE_ALLOCATION] [float] NULL,
	[VSOE_AMT] [float] NULL,
	[VSOE_DEFERRAL] [nvarchar](28) NULL,
	[VSOE_DELIVERED] [nvarchar](3) NULL,
	[VSOE_DISCOUNT] [nvarchar](12) NULL,
	[VSOE_PRICE] [float] NULL
) ON [PRIMARY]
GO
