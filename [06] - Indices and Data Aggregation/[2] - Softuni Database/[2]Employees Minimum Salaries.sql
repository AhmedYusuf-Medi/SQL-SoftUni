--Task 2
SELECT employee.DepartmentID,MIN(Salary) AS MinimumSalary
FROM Employees AS employee
WHERE employee.DepartmentID LIKE '[2, 5, 7]' AND employee.HireDate > '01/01/2000'
GROUP BY employee.DepartmentID; 