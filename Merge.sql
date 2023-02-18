/*
CREATE TABLE Category
(
	id INT NOT NULL PRIMARY KEY,
	title NCHAR(50) NOT NULL
)
GO

INSERT INTO Category
	VALUES
	(1, 'Computers'),
	(2, 'Books'),
	(3, 'Home technics')
GO

CREATE TABLE Product2
(
	id INT NOT NULL PRIMARY KEY,
	category_id INT NULL,
	title NCHAR(50) NOT NULL,
	price MONEY NULL,
	FOREIGN KEY (category_id) REFERENCES Category (id)
)
GO

INSERT INTO Product2
	VALUES
	(1, 1, 'notebook Acer', 45000),
	(2, 1, 'computer HP', 55000),
	(3, 2, 'JavaScript for beginners', 600),
	(4, 3, 'refregirator Candy', 6000)
GO
*/
/*
MERGE Product1 AS p1
	USING Product2 AS p2
	ON (p1.title = p2.title)
	WHEN MATCHED THEN
		UPDATE SET price = p2.price
	WHEN NOT MATCHED THEN
		INSERT (id, category_id, title, price)
		VALUES(p2.id, p2.category_id, p2.title, p2.price)
	WHEN NOT MATCHED BY SOURCE THEN
		DELETE
	OUTPUT $action AS [Operation],
			inserted.*,
			deleted.*;

GO
*/