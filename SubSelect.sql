-- SUBSELECT
/*
SELECT c.title,
	(SELECT COUNT(*)
	FROM Product AS p1
	WHERE p1.id_category = c.id)
	FROM Category AS c
*/

SELECT p.title, q.ctitle, q.btitle
	FROM
	Product AS p,
	(SELECT c.title AS ctitle, b.title AS btitle,
		c.id AS cid, b.id AS bid
		FROM Product AS p
		INNER JOIN Category AS c ON c.id = p.id_category
		INNER JOIN Brand AS b ON b.id = p.id_brand) AS q
	WHERE p.id_brand = q.bid AND p.id_category = q.cid