--Task 16
CREATE VIEW V_EmployeeNameJobTitle AS
SELECT
CONCAT(employee.FirstName,' ',
CASE WHEN employee.MiddleName IS NULL THEN '' ELSE employee.MiddleName END,' ',
employee.LastName) AS [Full Name],
employee.JobTitle AS [Job Title]
FROM Employees AS employee
GO

SELECT CONCAT(FirstName + ' ', MiddleName + ' ', LastName) AS [Full Name],
       JobTitle AS [Job Title]
FROM Employees;