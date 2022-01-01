--Task 2
CREATE PROCEDURE usp_GetEmployeesSalaryAboveNumber
(
@minSalary MONEY
)
AS
BEGIN
SELECT employee.FirstName AS [First Name],
employee.LastName AS [Last Name]
FROM Employees AS employee
WHERE employee.Salary >= @MinSalary;
END;