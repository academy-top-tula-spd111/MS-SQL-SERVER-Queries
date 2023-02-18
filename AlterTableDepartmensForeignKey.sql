/*
CREATE TABLE Departmens
(
	head INT NULL,
	phone NCHAR(20),
	FOREIGN KEY (head) REFERENCES Teachers (id)
)
*/
/*
ALTER TABLE Departments
	ADD CONSTRAINT FK_DepartmentsTeachers 
		FOREIGN KEY (head) REFERENCES Teachers (id)
			ON DELETE CASCADE | SET NULL | SET DEFAULT | NO ACTION
*/