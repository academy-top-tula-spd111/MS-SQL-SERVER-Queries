/*
CREATE INDEX IX_ProductPrice ON Product
(
	price ASC
)

CREATE INDEX IX_ProductCategoryBrand ON Product
(
	id_category ASC,
	id_brand DESC
)
*/

SELECT OBJECT_NAME(sv.object_id) AS [Table Name],
	sv.index_id AS [Index Id],
	sv2.name AS [Index Name],
	sv.avg_fragmentation_in_percent AS [Fragmentation]
FROM sys.dm_db_index_physical_stats 
	(DB_ID(), NULL, NULL, NULL, NULL)
	AS sv
LEFT JOIN sys.hash_indexes AS sv2
	ON sv.object_id = sv2.object_id
		AND sv.index_id = sv2.index_id

/*
Fragmentation:
< 5-7% - ������ �� ������
5-7% �� 30% - �������������
>30% - ������������
*/

-- �������������:
ALTER INDEX IX_ProductPrice ON Product
	REORGANIZE

-- ������������
ALTER INDEX IX_ProductPrice ON Product
	REBUILD


