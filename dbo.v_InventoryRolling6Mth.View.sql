USE [is21olap]
GO
/****** Object:  View [dbo].[v_InventoryRolling6Mth]    Script Date: 8/4/2021 4:55:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE view [dbo].[v_InventoryRolling6Mth] as
select cm.* , roll1mth, roll1opn, convert(dec(13,2), roll1cst) roll1cst,
		roll2mth, roll2opn, convert(dec(13,2), roll2cst) roll2cst,
		roll3mth, roll3opn, convert(dec(13,2), roll3cst) roll3cst,
		roll4mth, roll4opn, convert(dec(13,2), roll4cst) roll4cst,
		roll5mth, roll5opn, convert(dec(13,2), roll5cst) roll5cst,
		roll6mth, roll6opn, convert(dec(13,2), roll6cst) roll6cst,
		convert(dec(13,2), (
		(roll3cst+roll2cst)/2
		+(roll2cst+roll1cst)/2
		+(roll1cst+item_cost)/2
		)/3) rolling3mth,
		convert(dec(13,2), (
		(roll5cst+roll4cst)/2
		+(roll4cst+roll3cst)/2
		+(roll3cst+roll2cst)/2
		+(roll2cst+roll1cst)/2
		+(roll1cst+item_cost)/2
		)/6) rolling6mth
from 
(
select trandate, location_id, item_id, yr_opening, item_cost
from InventoryInfo) cm
left join 
(
select trandate roll1mth, location_id roll1loc, item_id roll1itm, yr_opening roll1opn, item_cost roll1cst
from InventoryInfo) l1m
on cm.location_id = roll1loc
and cm.item_id = roll1itm
and cm.trandate = DATEADD(MONTH, 1, roll1mth)
left join 
(
select trandate roll2mth, location_id roll2loc, item_id roll2itm, yr_opening roll2opn, item_cost roll2cst
from InventoryInfo) l2m
on cm.location_id = roll2loc
and cm.item_id = roll2itm
and cm.trandate = DATEADD(MONTH, 2, roll2mth)
left join 
(
select trandate roll3mth, location_id roll3loc, item_id roll3itm, yr_opening roll3opn, item_cost roll3cst
from InventoryInfo) l3m
on cm.location_id = roll3loc
and cm.item_id = roll3itm
and cm.trandate = DATEADD(MONTH, 3, roll3mth)
left join 
(
select trandate roll4mth, location_id roll4loc, item_id roll4itm, yr_opening roll4opn, item_cost roll4cst
from InventoryInfo) l4m
on cm.location_id = roll4loc
and cm.item_id = roll4itm
and cm.trandate = DATEADD(MONTH, 4, roll4mth)
left join 
(
select trandate roll5mth, location_id roll5loc, item_id roll5itm, yr_opening roll5opn, item_cost roll5cst
from InventoryInfo) l5m
on cm.location_id = roll5loc
and cm.item_id = roll5itm
and cm.trandate = DATEADD(MONTH, 5, roll5mth)
left join 
(
select trandate roll6mth, location_id roll6loc, item_id roll6itm, yr_opening roll6opn, item_cost roll6cst
from InventoryInfo) l6m
on cm.location_id = roll6loc
and cm.item_id = roll6itm
and cm.trandate = DATEADD(MONTH, 6, roll6mth)
where yr_opening <> 0
GO
