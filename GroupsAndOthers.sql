USE Academy

/*
SELECT *
	FROM Teachers AS t
	ORDER BY t.lastname DESC, t.firstname ASC
*/
/*
DECLARE @countPage INT, @page INT
SELECT @countPage = 2, @page = 2

SELECT 
		p.title AS [Product], 
		c.title AS [Category], 
		p.price AS [Price]
	FROM Product1 AS p,
		Category AS c
	WHERE p.category_id = c.id
		--AND (p.price IN (600, 45000, 70000))
		--AND (p.price = 600 OR p.price = 45000)
		--AND p.price BETWEEN 5000 AND 50000
		--AND p.price >= 5000 AND p.price <= 50000
		--AND p.title NOT LIKE '%te%'
		--AND p.price > 1000
	ORDER BY p.price
*/
/*
= - равно
<
>
<>, != - не равно
>=
<=
!< - не менше
!> - не больше

LIKE, NOT LIKE
BETWEEN AND
IN ()

EXISTS

*/

--	OFFSET (@page - 1) * @countPage ROWS 
--		FETCH NEXT @countPage ROWS ONLY

/*
SELECT c.title,
	t.*
	FROM Category AS c,
	(SELECT category_id, 
		   COUNT(*) AS [Общее количество],
		   SUM(price) AS csum,
		   AVG(price) AS cavg,
		   MIN(price) AS cmin,
		   MAX(price) AS cmax
		FROM Product1 AS p
		--WHERE p.price > 1000
		GROUP BY category_id
		--HAVING SUM(p.price) > 5000
		) AS t
		WHERE c.id = t.category_id
*/
/*
SELECT c.title,
	(SELECT COUNT(*)
		FROM Product1 AS p
		WHERE p.category_id = c.id AND p.price < 0) AS [Общее количество]
	FROM Category AS c
*/
/*
SELECT c.title
	FROM Category AS c,
		Product1 AS p
	WHERE EXISTS(
		SELECT * FROM Product1 AS p WHERE p.price > 2000
	)


SELECT * FROM 
	Product1 AS p, Category AS c
	WHERE c.id = p.category_id AND p.price > 2000
*/


