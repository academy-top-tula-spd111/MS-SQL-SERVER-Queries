SELECT *
	FROM Category AS c
	WHERE dbo.SumCategory(c.id) > 100000