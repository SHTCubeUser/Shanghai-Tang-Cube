USE [is21olap]
GO
/****** Object:  View [dbo].[v_item_wac]    Script Date: 8/4/2021 4:55:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[v_item_wac] as
select item_id, avg(average_cost) wac
from Item_Loc_Map
group by item_id
GO
