/*
SELECT p.title AS [Product], 
		c.title AS [Category], 
		b.title AS [Brand], 
		p.price AS [Price]
	FROM Product AS p,
	Category AS c,
	Brand AS b
	WHERE p.id_category = c.id 
			AND p.id_brand = b.id
*/

/* INNER JOIN

SELECT p.title AS [Product], 
		b.title AS [Brand]
	FROM Product AS p
	INNER JOIN Brand AS b
		ON p.id_brand = b.id
*/

/* LEFT OUTER JOIN

SELECT p.title AS [Product], 
		b.title AS [Brand]
	FROM Product AS p
	LEFT JOIN Brand AS b
		ON p.id_brand = b.id
*/

/* RIGHT OUTER JOIN
SELECT p.title AS [Product], 
		b.title AS [Brand]
	FROM Product AS p
	RIGHT JOIN Brand AS b
		ON p.id_brand = b.id
*/

/* FULL OUTER JOIN
SELECT p.title AS [Product], 
		b.title AS [Brand]
	FROM Product AS p
	FULL JOIN Brand AS b
		ON p.id_brand = b.id
*/

/* CROSS JOIN
SELECT p.title AS [Product], 
		b.title AS [Brand]
	FROM Product AS p
	CROSS JOIN Brand AS b
*/
/*
SELECT p.title AS [Product], 
		c.title AS [Category], 
		b.title AS [Brand], 
		p.price AS [Price]
	FROM Product AS p
		LEFT JOIN Category AS c ON c.id = p.id_category
		RIGHT JOIN Brand AS b ON b.id = p.id_brand
*/

/*
SELECT p.title
	FROM Product AS p
	WHERE p.id_category = 2

UNION

SELECT p.title
	FROM Product AS p
	WHERE p.id_category = 1
*/
/*
SELECT title
	FROM Category

UNION

SELECT title
	FROM Brand

UNION -- объединение

SELECT title
	FROM Product
*/

SELECT p.title, c.title
	FROM Product AS p
	LEFT JOIN Category AS c ON c.id = p.id_category
	WHERE p.id_category BETWEEN 1 AND 2

--INTERSECT -- пересечение
-- EXCEPT -- разность

SELECT p.title, c.title
	FROM Product AS p
	LEFT JOIN Category AS c ON c.id = p.id_category
	WHERE p.id_category BETWEEN 2 AND 3