--Task 6
CREATE PROCEDURE usp_EmployeesBySalaryLevel
(
@levelOfSalary VARCHAR(7)
)
AS
BEGIN
SELECT FirstName AS [First Name],
LastName AS [Last Name]
FROM Employees
WHERE dbo.ufn_GetSalaryLevel(Salary) = @levelOfSalary;
END;