CREATE TABLE [dbo].[Teachers]
(
	id INT IDENTITY(1, 1) NOT NULL,
	lastname NCHAR(50) NOT NULL,
	firstname NCHAR(50) NULL,
	activity BIT NOT NULL DEFAULT(1)
) ON [PRIMARY];
GO