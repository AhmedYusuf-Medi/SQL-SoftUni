--Task 10
SELECT employee.FirstName,employee.LastName
FROM Employees AS employee
WHERE employee.ManagerID IS NULL;