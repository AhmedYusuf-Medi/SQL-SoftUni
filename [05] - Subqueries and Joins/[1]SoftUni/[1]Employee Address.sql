--Task 1
SELECT TOP 5 employee.EmployeeID,employee.JobTitle,employee.AddressID,addresses.AddressText
FROM Employees AS employee
JOIN Addresses AS addresses ON addresses.AddressID = employee.AddressID
ORDER BY addresses.AddressID;