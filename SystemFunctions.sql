USE Academy
/*
SELECT DISTINCT 
	t.firstname AS [Полное Имя]
	FROM Teachers AS t
*/

-- Агрегатные функции
/*
COUNT() 
SELECT COUNT(*)
	FROM Teachers AS t
	WHERE t.phone IS NULL

SUM()
SELECT SUM(YEAR(GETDATE()) - YEAR(t.birthdate))
	FROM Teachers AS t

AVG()
SELECT AVG(YEAR(GETDATE()) - YEAR(t.birthdate))
	FROM Teachers AS t

MIN()
MAX()

SELECT MAX(t.birthdate)
	FROM Teachers AS t
*/

--Строковые функции
DECLARE @str NVARCHAR(50)
DECLARE @str2 VARCHAR(50)
/*
SELECT @str = '        Hello'
SELECT LTRIM(@str)
SELECT @str = 'Hello        '
SELECT RTRIM(@str) + @str
SELECT @str = '      Hello        '
SELECT TRIM(@str) + TRIM(@str)

SELECT @str = 'Hello'
SELECT LOWER(@str)
SELECT UPPER(@str)

SELECT @str = 'Hello'
SELECT LEN(@str)

SELECT @str = 'Hello world'
SELECT LEFT(@str, 5)
SELECT RIGHT(@str, 5)
SELECT SUBSTRING(@str, 3, 6)

SELECT @str2 = 'Hello'
SELECT @str = NULL
SELECT @str + ' ' + @str2
SELECT CONCAT(@str, ' ', @str2)
SELECT COALESCE(@str, '')

SELECT @str = 'Петров Иван'
SELECT LEFT(@str, CHARINDEX(' ', @str) - 1)
SELECT RIGHT(@str, LEN(@str) - CHARINDEX(' ', @str) + 1)


SELECT @str = 'Петров Иван'
SELECT LEN(@str)
SELECT DATALENGTH(@str)


SELECT @str = '2002/12/23'
SELECT REPLACE(@str, '/', '.')
SELECT @str = 'hello world, hello people'
SELECT REPLACE(@str, 'hello', 'good by')

SELECT @str = '-*-'
SELECT REPLICATE('0', 15)


DECLARE @index INT
DECLARE @length INT

SELECT @str = 'I love Java language'
SELECT @index = CHARINDEX('J', @str)

SELECT STUFF(@str, @index, 4, 'C#')

DECLARE @date DATE
SELECT @date = '2020/11/22'
SELECT FORMAT(@date, 'd', 'en-US');


SELECT @str = 'I love Java language'
SELECT REVERSE(@str)


SELECT ASCII('')
SELECT UNICODE('')

*/

-- Функции даты и времени
/*
SELECT GETDATE()
SELECT DATENAME(year, GETDATE())
SELECT DATENAME(month, GETDATE())
SELECT DATENAME(day, GETDATE())
SELECT DATENAME(weekday, GETDATE())
SELECT DATENAME(dayofyear, GETDATE())
SELECT DATENAME(quarter, GETDATE())

SELECT DATEPART(year, GETDATE())
SELECT DATEPART(month, GETDATE())
SELECT DATEPART(day, GETDATE())
SELECT DATEPART(weekday, GETDATE())
SELECT DATEPART(dayofyear, GETDATE())
SELECT DATEPART(quarter, GETDATE())

SELECT YEAR(GETDATE())
SELECT MONTH(GETDATE())
SELECT DAY(GETDATE())


DECLARE @date DATE
SELECT @date = '2020/11/22'

SELECT DATEDIFF(year, @date, GETDATE())
SELECT DATEDIFF(month, @date, GETDATE())
SELECT DATEDIFF(day, @date, GETDATE())
SELECT DATEDIFF(week, @date, GETDATE())


DECLARE @date DATE
SELECT @date = '2020/11/22'

SELECT DATEADD(month, 15, @date)


DECLARE @date DATETIME2 = '2020-04-30 21:21:21';
SELECT DATENAME(weekday, @date)

SELECT 'Week', DATE_BUCKET(WEEK, 1, @date)
UNION ALL
SELECT 'Year', DATE_BUCKET(YEAR, 1, @date)
UNION ALL
SELECT 'Hour', DATE_BUCKET(HOUR, 1, @date)
UNION ALL
SELECT 'Minutes', DATE_BUCKET(MINUTE, 1, @date)
UNION ALL
SELECT 'Seconds', DATE_BUCKET(SECOND, 1, @date);

SELECT CEILING(2.1)
SELECT FLOOR(2.9)
SELECT DEGREES(PI()/2)
SELECT RADIANS(90.0)


SELECT @str = 'Hello'
SELECT ISNULL(@str, 'empty')


DECLARE @date DATE
SELECT @date = '2020/11/22'

DECLARE @num INT

SELECT @str = CAST(@date AS VARCHAR)
SELECT @str = CONVERT(VARCHAR, @date)
SELECT @str
*/