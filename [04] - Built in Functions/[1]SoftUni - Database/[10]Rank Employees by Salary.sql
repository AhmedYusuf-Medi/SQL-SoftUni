--Task 10
SELECT employee.EmployeeID, employee.FirstName, employee.LastName, employee.Salary,
DENSE_RANK() OVER (PARTITION BY employee.Salary ORDER BY employee.EmployeeID) AS [Rank]
FROM Employees AS employee
WHERE employee.Salary BETWEEN 10000 AND 50000
ORDER BY employee.Salary DESC;