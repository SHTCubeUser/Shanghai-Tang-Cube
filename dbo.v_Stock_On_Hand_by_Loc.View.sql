USE [is21olap]
GO
/****** Object:  View [dbo].[v_Stock_On_Hand_by_Loc]    Script Date: 8/4/2021 4:55:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE view [dbo].[v_Stock_On_Hand_by_Loc] as
select e.TRANDATE, e.LOCATION_ID, e.ITEM_ID, e.qty, e.runttl+d.diff as runningtotal
from (select trandate, location_id, item_id, qty, 
		sum(qty) over (partition by item_id, location_id order by item_id, location_id, trandate) as runttl
from (select trandate, h.location_id, item_id, sum(isnull(item_count,0)) qty
		from transactions h
		inner join transaction_lines d
		on h.TRANSACTION_ID =  d.TRANSACTION_ID
		where h.location_id is not null
		and d.item_id is not null
		group by trandate, h.location_id, item_id) a) e
inner join
(
select a.item_id, a.location_id, on_hand_count-runttl diff
from (select trandate, location_id, item_id, qty, 
		sum(qty) over (partition by item_id, location_id order by item_id, location_id, trandate) as runttl
from (select trandate, h.location_id, item_id, sum(isnull(item_count,0)) qty
		from transactions h
		inner join transaction_lines d
		on h.TRANSACTION_ID =  d.TRANSACTION_ID
		where h.location_id is not null
		and d.item_id is not null
		group by trandate, h.location_id, item_id) a) a
inner join (select item_id, location_id, max(trandate) trandate
			from (select trandate, location_id, item_id, qty, 
		sum(qty) over (partition by item_id, location_id order by item_id, location_id, trandate) as runttl
from (select trandate, h.location_id, item_id, sum(isnull(item_count,0)) qty
		from transactions h
		inner join transaction_lines d
		on h.TRANSACTION_ID =  d.TRANSACTION_ID
		where h.location_id is not null
		and d.item_id is not null
		group by trandate, h.location_id, item_id) a) x
			group by ITEM_ID, LOCATION_ID) b
on a.LOCATION_ID=b.LOCATION_ID and a.ITEM_ID=b.ITEM_ID
and a.TRANDATE=b.trandate
inner join Item_Loc_Map c
on a.location_id = c.location_id and a.item_id = c.item_id
) d
on e.location_id = d.location_id and e.item_id=d.item_id
GO
