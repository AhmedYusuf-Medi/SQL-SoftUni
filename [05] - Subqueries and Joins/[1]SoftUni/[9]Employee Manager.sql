--Task 9
SELECT employee.EmployeeID,employee.FirstName,employee.ManagerID,
manager.FirstName AS ManagerName
FROM Employees AS employee
JOIN Employees AS manager ON employee.ManagerID = manager.EmployeeID
WHERE employee.ManagerID IN(3, 7)
ORDER BY employee.EmployeeID;