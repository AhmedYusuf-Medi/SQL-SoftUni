--Task 15
CREATE VIEW V_EmployeesSalaries AS 
SELECT employee.FirstName,employee.LastName,employee.Salary
FROM Employees AS employee;
GO

SELECT *
FROM V_EmployeesSalaries;
