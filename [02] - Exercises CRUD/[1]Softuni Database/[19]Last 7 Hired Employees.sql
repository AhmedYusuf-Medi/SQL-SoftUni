--Task 19
SELECT TOP 7 employee.FirstName,employee.LastName,employee.HireDate
FROM Employees AS employee
ORDER BY employee.HireDate DESC;