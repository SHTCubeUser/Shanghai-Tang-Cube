USE [is21olap]
GO
/****** Object:  View [dbo].[v_InventoryInfo_20210624]    Script Date: 8/4/2021 4:55:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[v_InventoryInfo_20210624] AS
select m.BI_Loc, h.trandate, h.tranid, h.transaction_type, d.item_id, i.full_name,
       d.transaction_line_id, d.original_quantity*-1 as qty, d.amount*-1 local_amount,
	   round(d.amount*-1*r.exrate,0) us_amount, h.entity_id, c.full_name cust_name
from [Transactions] h
inner join [Transaction_lines] d
on h.transaction_id = d.transaction_id
inner join [Items] i
on d.item_id = i.item_id
inner join [Locations] l
on h.location_id = l.location_id
inner join v_exchange_rate r
on h.currency_id = r.currency_id
and h.trandate = r.effdate
left join LocMapping m
on l.full_name = m.ns_loc
inner join Customers c
on h.entity_id = c.customer_id
GO
