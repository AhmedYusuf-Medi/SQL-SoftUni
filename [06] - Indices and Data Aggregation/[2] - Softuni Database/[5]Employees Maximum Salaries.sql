--Task 4
SELECT employee.DepartmentID, MAX(Salary) AS MaxSalary
FROM Employees AS employee
GROUP BY employee.DepartmentID
HAVING MAX(employee.Salary) NOT BETWEEN 30000 AND 70000;