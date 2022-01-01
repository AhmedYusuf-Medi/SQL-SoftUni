--Task 9
SELECT employee.FirstName,employee.LastName
FROM Employees AS employee
WHERE LEN(employee.LastName) = 5;