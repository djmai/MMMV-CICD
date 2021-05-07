SELECT j.journal_id, j.sale_id ,j.action_type,
		s.sale_id, s.officeCode, s.salesKey, s.destination, s.saleDate, s.serviceClass, s.serviceNumber, s.serviceTime, s.origin, s.serviceDate, s.category, s.price, s.saleTime, s.discount
FROM adventure.gfasales_journal j
INNER JOIN adventure.gfasales s ON s.sale_id = j.sale_id
WHERE j.journal_id > :sql_last_value
		AND j.action_time < NOW()
ORDER BY j.journal_id
