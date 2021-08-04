USE [is21olap]
GO
/****** Object:  View [dbo].[v_ByCountry_ByQty_Ranking]    Script Date: 8/4/2021 4:55:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[v_ByCountry_ByQty_Ranking] as
select Yr, Mth, country, a.BI_Loc, qty, DENSE_RANK() OVER (Partition By Yr, Mth, country order by country, qty desc) Rank
from
(
select BI_Loc, year(trandate) Yr, month(trandate) Mth, sum(original_quantity) qty
from SalesInfo
where cust_name not like '%Walk-in%'
group by BI_Loc, year(trandate), month(trandate)
) a
inner join LocMapping
on a.BI_Loc = LocMapping.BI_Loc
GO
