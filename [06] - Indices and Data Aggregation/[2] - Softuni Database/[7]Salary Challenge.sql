--Task 7
SELECT TOP 10 employee.FirstName,employee.LastName,employee.DepartmentID
FROM Employees AS employee
WHERE Salary >
(
    SELECT AVG(Salary)
    FROM Employees AS ES
    WHERE employee.DepartmentID = ES.DepartmentID
);