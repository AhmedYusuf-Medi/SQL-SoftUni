--Task 3
SELECT CONCAT(employee.FirstName, ' ' ,employee.LastName) AS [Full Name]
, employee.Salary
FROM Employees AS employee;