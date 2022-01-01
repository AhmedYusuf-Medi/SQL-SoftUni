--Task 1
CREATE PROCEDURE usp_GetEmployeesSalaryAbove35000
AS
BEGIN
SELECT employee.FirstName AS [First Name],
employee.LastName AS [Last Name]
FROM Employees AS employee
WHERE employee.Salary > 35000;
END; 