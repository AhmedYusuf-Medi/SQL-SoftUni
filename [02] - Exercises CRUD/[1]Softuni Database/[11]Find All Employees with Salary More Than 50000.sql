--Task 11
SELECT employee.FirstName,employee.LastName,employee.Salary
FROM Employees AS employee
WHERE employee.Salary > 50000 ORDER BY employee.Salary DESC;