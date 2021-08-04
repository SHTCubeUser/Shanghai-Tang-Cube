USE [is21olap]
GO
/****** Object:  View [dbo].[v_movement]    Script Date: 8/4/2021 4:55:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[v_movement] as
select h.trandate, item_id, h.location_id, sum(isnull(original_quantity,0))*-1 as movement
from transaction_lines d
inner join transactions h
on h.transaction_id = d.transaction_id
group by trandate, item_id, h.location_id
GO
