/*
INSERT INTO Teachers
	(lastname, firstname, phone)
	VALUES
	('Ivanov', 'Petr', '+7-909-111-22-33'),
	('Sidorov', 'Sergey', '+7-900-100-20-40')
GO
*/
/*
INSERT INTO Teachers
	VALUES
	('Fedorov', 'Pavel', 1, '+7-900-555-11-23')
GO
*/
/*
SELECT TRIM(lastname) + ' ' + TRIM(firstname) 
	   AS [Full Name], 
	   phone AS [Mobile Phone]
	FROM Teachers
GO
*/

/*
DELETE FROM Teachers
	WHERE id = 3
GO

SELECT * FROM Teachers
GO
*/

/*
UPDATE Teachers
	SET phone = '+7 999 999-00-00'
	WHERE id = 4
GO

SELECT * FROM Teachers
GO
*/


