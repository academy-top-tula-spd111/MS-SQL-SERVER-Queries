/*
SELECT p.title AS [Product], 
		c.title AS [Category], 
		b.title AS [Brand], 
		p.price AS [Price]
	INTO ProductCategoryBrand
	FROM Product AS p
		LEFT JOIN Category AS c ON c.id = p.id_category
		LEFT JOIN Brand AS b ON b.id = p.id_brand
*/

-- VIEW
/*
CREATE VIEW ViewProductCategoryBrand
AS
	SELECT p.title AS [Product], 
		c.title AS [Category], 
		b.title AS [Brand], 
		p.price AS [Price]
	FROM Product AS p
		LEFT JOIN Category AS c ON c.id = p.id_category
		LEFT JOIN Brand AS b ON b.id = p.id_brand
*/
/*
ALTER VIEW ViewProductCategoryBrand
AS
	SELECT TOP 1000
		p.title AS [Product], 
		c.title AS [Category], 
		b.title AS [Brand], 
		p.price AS [Price]
	FROM Product AS p
		LEFT JOIN Category AS c ON c.id = p.id_category
		LEFT JOIN Brand AS b ON b.id = p.id_brand
	ORDER BY p.price
*/

--SELECT * FROM ViewProductCategoryBrand

--DROP VIEW ViewProductCategoryBrand

--SELECT * FROM sys.tables
SELECT * FROM sys.columns
	WHERE object_id = OBJECT_ID('Product')