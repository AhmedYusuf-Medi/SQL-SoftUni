--Task 8
CREATE VIEW V_EmployeesHiredAfter2000 
AS
SELECT employee.FirstName,employee.LastName
FROM Employees AS employee
WHERE DATEPART(YEAR, employee.HireDate) > 2000;
