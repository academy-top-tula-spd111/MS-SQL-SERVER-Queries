USE [Shop]
GO
/****** Object:  UserDefinedFunction [dbo].[SumCategory]    Script Date: 04.03.2023 17:37:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER FUNCTION [dbo].[SumCategory]
(
	@id_category INT
)
RETURNS MONEY
AS
BEGIN
	DECLARE @sum MONEY
	SELECT @sum = SUM(p.price)
		FROM Product AS p
		WHERE p.id_category = @id_category

	RETURN @sum
END

