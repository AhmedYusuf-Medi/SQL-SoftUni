--Task 9
SELECT CONCAT(employee.FirstName,' ',employee.MiddleName,' ',employee.LastName) AS [Full Name]
FROM Employees AS employee
WHERE employee.Salary = 25000 OR employee.Salary = 14000
OR employee.Salary = 12500 OR employee.Salary = 23600;