--Task 8
SELECT employee.EmployeeID,employee.FirstName,
     CASE
	 WHEN project.StartDate > '2005'
     THEN NULL
     ELSE project.Name
     END AS ProjectName
FROM Employees AS employee 
JOIN EmployeesProjects ep ON ep.EmployeeID = employee.EmployeeID
JOIN Projects project ON project.ProjectID= ep.ProjectID
WHERE employee.EmployeeID = 24
ORDER BY employee.EmployeeID;