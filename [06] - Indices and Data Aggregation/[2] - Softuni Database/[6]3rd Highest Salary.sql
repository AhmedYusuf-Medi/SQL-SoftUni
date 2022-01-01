--Task 6
SELECT salaries.DepartmentID,salaries.Salary
FROM
(
SELECT employee.DepartmentID,
Salary, 
DENSE_RANK() OVER(PARTITION BY employee.DepartmentID ORDER BY employee.Salary DESC) AS Rank
FROM Employees AS employee
GROUP BY employee.DepartmentID,employee.Salary
) AS salaries
WHERE Rank = 3
GROUP BY salaries.DepartmentID,salaries.Salary;