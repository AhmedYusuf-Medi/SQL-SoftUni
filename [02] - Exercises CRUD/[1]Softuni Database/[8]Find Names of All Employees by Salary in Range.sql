--Task 8
SELECT employee.FirstName,employee.LastName,employee.JobTitle
FROM Employees as employee
WHERE employee.Salary BETWEEN 20000 AND 30000;