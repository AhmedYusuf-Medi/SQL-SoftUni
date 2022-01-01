--Task 4
SELECT employee.FirstName,employee.LastName
FROM Employees AS employee
WHERE employee.JobTitle NOT LIKE '%engineer%';