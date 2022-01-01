--Task 5
SELECT TOP 5 employee.EmployeeID, employee.FirstName
FROM Employees AS employee
LEFT JOIN EmployeesProjects ep ON ep.EmployeeID = employee.EmployeeID
WHERE ep.EmployeeID IS NULL
ORDER BY employee.EmployeeID;