USE [is21olap]
GO
/****** Object:  View [dbo].[v_cal_table]    Script Date: 8/4/2021 4:55:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[v_cal_table] AS
WITH mycte AS
(
	SELECT CAST((SELECT MIN(date_effective) FROM currencyrates) AS DATETIME) effdate
	UNION ALL
	SELECT effdate+1
	FROM mycte
	WHERE effdate+1 <= '20501231'
)

SELECT effdate
FROM mycte
GO
