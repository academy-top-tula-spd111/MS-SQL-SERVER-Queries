CREATE FUNCTION SumCategory
(
	@id_category INT
)
RETURNS MONEY
AS
BEGIN
	DECLARE @sum MONEY = 0
	SELECT @sum = SUM(p.price)
		FROM Product AS p
		WHERE p.id_category = @id_category

	RETURN @sum
END

GO