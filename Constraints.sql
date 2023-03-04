/*
ограничения 
PRIMARY KEY
FOREIGN KEY
UNIQUE
CHECK
DEFAULT
*/

-- добавление столбца
ALTER TABLE TableName 
	ALTER COLUMN [ColumnName] [ColumnType] [NULL | NOT NULL]

-- PRIMARY KEY
/*
CREATE TABLE TableName
(
	[ColumnName] [ColumnType] [NULL | NOT NULL]
		CONSTRAINT [PK_ColumnName] PRIMARY KEY
)

CREATE TABLE TableName
(
	[ColumnName] [ColumnType] [NULL | NOT NULL],

	CONSTRAINT [PK_ColumnName] PRIMARY KEY (ColumnName)
)

ALTER TABLE TableName
	ADD CONSTRAINT [PK_ColumnName] PRIMARY KEY (ColumnName)
*/

-- FOREIGN KEY
/*
CREATE TABLE TableName
(
	[ColumnName] [ColumnType] [NULL | NOT NULL],

	CONSTRAINT [FK_TableName_OtherTableName] FOREIGN KEY (ColumnName)
		REFERENCES OtherTableName (OtherColumnName)
		ON DELETE CASCADE
		ON UPDATE NO ACTION
)

ALTER TABLE TableName
	ADD CONSTRAINT [FK_TableName_OtherTableName] FOREIGN KEY (ColumnName)
		REFERENCES OtherTableName (OtherColumnName)
		ON DELETE CASCADE
		ON UPDATE NO ACTION

*/

-- UNIQUE
/*
CREATE TABLE TableName
(
	[ColumnName] [ColumnType] [NULL | NOT NULL] CONSTRAINT [UQ_ColumnName] UNIQUE,
)


CREATE TABLE TableName
(
	[ColumnName] [ColumnType] [NULL | NOT NULL],

	CONSTRAINT [UQ_ColumnName] UNIQUE (ColumnName)
)

ALTER TABLE TableName
	ADD CONSTRAINT [UQ_ColumnName] UNIQUE (ColumnName)
*/

-- CHECK
/*
CREATE TABLE TableName
(
	[ColumnName] [ColumnType] [NULL | NOT NULL] CONSTRAINT [CK_ColumnName] CHECK (ColumnName > 0),
)


CREATE TABLE TableName
(
	[ColumnName] [ColumnType] [NULL | NOT NULL],

	CONSTRAINT [CK_ColumnName] CHECK (ColumnName > 0),
)

ALTER TABLE TableName
	ADD CONSTRAINT [CK_ColumnName] CHECK (ColumnName > 0)
*/


-- DEFAULT
/*
CREATE TABLE TableName
(
	[ColumnName] [ColumnType] [NULL | NOT NULL] CONSTRAINT [DF_ColumnName] DEFAULT (100),
)


CREATE TABLE TableName
(
	[ColumnName] [ColumnType] [NULL | NOT NULL],

	CONSTRAINT [DF_ColumnName] DEFAULT (100) FOR ColumnName
)

ALTER TABLE TableName
	ADD CONSTRAINT [DF_ColumnName] DEFAULT (100) FOR ColumnName
*/

-- DELETE CONSTRAINT
ALTER TABLE [TableName] DROP CONSTRAINT [ConstraintName]