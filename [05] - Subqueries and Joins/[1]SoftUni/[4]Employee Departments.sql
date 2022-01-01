--Task 4
SELECT TOP 5 employee.EmployeeID,employee.FirstName,employee.Salary,
department.Name AS [Department Name]
FROM Employees AS employee
JOIN Departments AS department ON employee.DepartmentID = department.DepartmentID
WHERE employee.Salary > 15000
ORDER BY employee.DepartmentID ASC;
