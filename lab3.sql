USE CUST_DB;
GO
CREATE TABLE dbo.table_3
(
id INT,
employee VARCHAR(32)
)
go
INSERT INTO dbo.table_3 VALUES
(1, 'Matt')
,(2,'Joseph')
,(3,'Renny')
,(4,'Daisy');
GO
DECLARE @ update Table TABLE
(
id INT, olddata_employee VARCHAR(32), newdata_employee VARCHAR(32)
);
UPDATE dbo.table_3
SET employee=UPPER(employee)
OUTPUT
inserted.id,
deleted.employee,
inserted.employee
INTO @updateTable
SELECT*FROM @updateTable
