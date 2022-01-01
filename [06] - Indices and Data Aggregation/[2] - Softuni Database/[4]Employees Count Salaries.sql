--Task 5
SELECT COUNT(employee.Salary) AS [Count]
FROM Employees AS employee
WHERE employee.ManagerID IS NULL; 

