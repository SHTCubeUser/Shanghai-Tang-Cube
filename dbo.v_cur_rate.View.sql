USE [is21olap]
GO
/****** Object:  View [dbo].[v_cur_rate]    Script Date: 8/4/2021 4:55:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[v_cur_rate] AS
SELECT a.currency_id, name, date_effective, exchange_rate
FROM (
	SELECT base_currency_id, currency_id, date_effective, exchange_rate
	FROM currencyrates
	UNION
	SELECT a1.base_currency_id, a1.currency_id, convert(date, getdate()) , a1.exchange_rate
	FROM currencyrates a1
	INNER JOIN (
		SELECT base_currency_id, currency_id, MAX(date_effective) effdate
		FROM currencyrates
		WHERE base_currency_id = '1'
		GROUP BY base_currency_id, currency_id
	) b1
	ON a1.currency_id = b1.currency_id
	AND a1.base_currency_id = b1.base_currency_id
	AND a1.date_effective = effdate
) a
INNER JOIN currency b
ON a.currency_id = b.currency_id
WHERE base_currency_id = '1'
GO
