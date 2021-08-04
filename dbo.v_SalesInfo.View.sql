USE [is21olap]
GO
/****** Object:  View [dbo].[v_SalesInfo]    Script Date: 8/4/2021 4:55:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE VIEW [dbo].[v_SalesInfo] AS
select *
from (
select m.BI_Loc, h.trandate, h.tranid, h.transaction_type, d.item_id, i.full_name,
       d.transaction_line_id, d.original_quantity, d.amount*-1 local_amount,
	   round(d.amount*-1*r.exrate,0) us_amount, h.entity_id, c.full_name cust_name, h.location_id,
	   isnull(t.amount_usd,0) targetamt, isnull(idx.amount_usd,0) budgetidx, isnull(b.amount_usd,0) budgetbse
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
left join targets t
on h.location_id = t.location_id
and h.trandate = t.DATE_0
left join budgets idx
on h.trandate = idx.date_0
and h.location_id = idx.location_id
and idx.version_0 like '%dex'
left join budgets b
on h.trandate = b.date_0
and h.location_id = b.location_id
and b.version_0 like '%ase'
left join LocMapping m
on l.full_name = m.ns_loc
inner join Customers c
on h.entity_id = c.customer_id
where h.transaction_type = 'Invoice' and h.[status] = 'Paid in Full'
and d.statistical_value__base_curre = 0
and isnull(h.memo,'') <> 'VOID'
union
select m.BI_Loc, h.trandate, h.tranid, h.transaction_type, d.item_id, i.full_name,
       d.transaction_line_id, d.original_quantity, d.amount*-1 local_amount,
	   d.amount*-1*r.exrate us_amount, h.entity_id, c.full_name cust_name, h.location_id,
	   isnull(t.amount_usd,0) targetamt, isnull(idx.amount_usd,0) budgetidx, isnull(b.amount_usd,0) budgetbse
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
left join targets t
on h.location_id = t.location_id
and h.trandate = t.DATE_0
left join budgets idx
on h.trandate = idx.date_0
and h.location_id = idx.location_id
and idx.version_0 like '%dex'
left join budgets b
on h.trandate = b.date_0
and h.location_id = b.location_id
and b.version_0 like '%ase'
left join LocMapping m
on l.full_name = m.ns_loc
inner join Customers c
on h.entity_id = c.customer_id
where h.transaction_type = 'Cash Refund'
and d.statistical_value__base_curre = 0
and isnull(h.memo,'') <> 'VOID'
union
select m.BI_Loc, h.trandate, h.tranid, h.transaction_type, d.item_id, i.full_name,
       d.transaction_line_id, d.original_quantity, d.amount*-1 local_amount,
	   d.amount*-1*r.exrate us_amount, h.entity_id, c.full_name cust_name, h.location_id,
	   isnull(t.amount_usd,0) targetamt, isnull(idx.amount_usd,0) budgetidx, isnull(b.amount_usd,0) budgetbse
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
left join targets t
on h.location_id = t.location_id
and h.trandate = t.DATE_0
left join budgets idx
on h.trandate = idx.date_0
and h.location_id = idx.location_id
and idx.version_0 like '%dex'
left join budgets b
on h.trandate = b.date_0
and h.location_id = b.location_id
and b.version_0 like '%ase'
left join LocMapping m
on l.full_name = m.ns_loc
inner join Customers c
on h.entity_id = c.customer_id
where h.transaction_type = 'Credit Memo' and h.[status] in ('Fully Applied','Open')
and d.statistical_value__base_curre = 0
and isnull(h.memo,'') <> 'VOID') a
GO
