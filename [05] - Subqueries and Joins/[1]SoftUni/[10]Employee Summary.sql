--Task 10
SELECT TOP 50 employee.EmployeeID,
CONCAT(employee.FirstName,' ',employee.LastName) AS [EmployeeName],
manager.FirstName AS [ManagerName],
department.Name AS [DepartmentName]
FROM Employees AS employee
JOIN Employees AS manager ON employee.ManagerID = manager.EmployeeID
JOIN Departments AS department ON employee.DepartmentID = department.DepartmentID
ORDER BY employee.EmployeeID; 
