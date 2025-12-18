CREATE TABLE Departments(
	DeptId INT PRIMARY KEY,
	DeptName VARCHAR(50)
);

CREATE TABLE Employees (
	EmpId INT PRIMARY KEY,
	EmpName VARCHAR(50),
	DeptId INT NULL
);
INSERT INTO Departments Values
(1, 'Engineering'),
(2, 'HR'),
(3, 'Finance');
INSERT INTO Employees VALUES
(101, 'Amit', 1),
(102, 'Neha', 2),
(103, 'Rahul', NULL),
(104, 'Sonal', 99);
SELECT
	e.EmpName,
	d.DeptName
FROM Employees e
INNER JOIN Departments d
	ON e.DeptId = d.DeptId;
SELECT
	e.EmpName,
	d.DeptName
FROM Employees e
LEFT JOIN Departments d
	ON e.DeptId = d.DeptId;
SELECT
	e.EmpName,
	d.DeptName
FROM Employees e
Right JOIN Departments d
	ON e.DeptId = d.DeptId;


