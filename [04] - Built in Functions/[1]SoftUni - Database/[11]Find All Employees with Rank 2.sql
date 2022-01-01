--Task 11
SELECT * 
FROM(
SELECT employee.EmployeeID, employee.FirstName, employee.LastName, employee.Salary,
DENSE_RANK() OVER (PARTITION BY employee.Salary ORDER BY employee.EmployeeID) AS [Rank]
FROM Employees AS employee
WHERE employee.Salary BETWEEN 10000 AND 50000
)AS OrderEmployees
WHERE OrderEmployees.[Rank] = 2
ORDER BY OrderEmployees.Salary DESC
