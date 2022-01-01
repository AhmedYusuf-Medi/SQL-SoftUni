--Task 6
SELECT employee.FirstName,employee.LastName,employee.HireDate,
department.Name AS [DeptName]
FROM Employees AS employee
JOIN Departments AS department ON employee.DepartmentID = department.DepartmentID
WHERE employee.HireDate> '1999-01-01' AND department.Name IN ('Sales', 'Finance')
ORDER BY employee.HireDate;