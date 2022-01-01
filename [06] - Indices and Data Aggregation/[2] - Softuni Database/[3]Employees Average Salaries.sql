--Task 3
SELECT employee.DepartmentID,
AVG
(
CASE
WHEN employee.DepartmentID % 2 != 0
THEN employee.Salary + 5000
ELSE employee.Salary
END
) AS AverageSalary
FROM Employees AS employee
WHERE employee.Salary > 30000 AND employee.ManagerID != 42
GROUP BY employee.DepartmentID;