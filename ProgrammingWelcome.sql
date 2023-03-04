/*
DECLARE @VarName INT
SET @VarName = 10

SELECT @VarName = 20

DECLARE @VarInt INT = 100

SET @VarName = @VarInt * 5
SELECT @VarInt * 5

DECLARE @VarTable TABLE
(
	id INT IDENTITY(1, 1) NOT NULL,
	title NVARCHAR(50) NOT NULL,
	price MONEY NULL
)

INSERT INTO @VarTable
	SELECT p.title, p.price
	FROM Product AS p
	WHERE p.id_category = 2

SELECT * FROM @VarTable

DECLARE @@Global INT

SELECT @@SERVERNAME
*/
/*
+, -, *, /, %, =
*/
/*
DECLARE @LocalVar INT = 10

SELECT @LocalVar

IF @LocalVar > 5
BEGIN
	SELECT STR(@LocalVar) + ' > 5'
END
ELSE
	SELECT STR(@LocalVar) + ' < 5'
*/
/*
IF EXISTS(
	SELECT * FROM Product
	WHERE id_category = 4
	)
	SELECT 'Yes'
ELSE
	SELECT 'No'
*/
/*
DECLARE @Number INT = 3
DECLARE @NumberStr VARCHAR(10)


SELECT @NumberStr = CASE @Number
						WHEN 1 THEN 'One'
						WHEN 2 THEN 'Two'
						WHEN 3 THEN 'Three'
						WHEN 4 THEN 'Fore'
					END
SELECT @NumberStr
*/
/*
DECLARE @i INT = 1,
		@sum INT = 0

WHILE @i <= 10
BEGIN
	SET @sum += @i
	SET @i += 1
END

SELECT @sum
PRINT 'Sum = ' + TRIM(STR(@sum))

IF @sum > 100
	RETURN

SELECT 'Packet go!'

GO
*/

DECLARE @i INT = 0

BEGIN TRY
	SELECT 100 / @i
END TRY
BEGIN CATCH
	SELECT ERROR_NUMBER(), ERROR_MESSAGE()
END CATCH