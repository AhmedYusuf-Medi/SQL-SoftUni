--Task 1
SELECT employee.DepartmentID,SUM(employee.Salary) AS TotalSalary
FROM Employees AS employee
GROUP BY employee.DepartmentID; 