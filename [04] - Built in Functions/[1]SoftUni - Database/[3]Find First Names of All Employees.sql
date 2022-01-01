--Task 3
SELECT employee.FirstName
FROM Employees as employee
WHERE employee.DepartmentID = 3 OR employee.DepartmentID = 10
AND employee.HireDate BETWEEN '1995' AND '2005';
