--Task 3
SELECT employee.EmployeeID,employee.FirstName,employee.LastName,
department.Name AS [DepartmentName]
FROM Employees AS employee
JOIN Departments AS department ON employee.DepartmentID = department.DepartmentID
WHERE department.Name = 'Sales'
ORDER BY employee.EmployeeID ASC;
