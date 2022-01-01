--Task 7
SELECT TOP(5) employee.EmployeeID, employee.FirstName, 
project.[Name] AS [Project Name]
FROM Employees AS employee 
JOIN EmployeesProjects ep ON ep.EmployeeID = employee.EmployeeID
JOIN Projects project ON project.ProjectID = ep.ProjectID
WHERE project.StartDate > '2002-08-13' AND project.EndDate IS NULL
ORDER BY employee.EmployeeID;