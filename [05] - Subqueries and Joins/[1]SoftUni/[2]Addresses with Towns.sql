--Task 2
SELECT TOP 50 employee.FirstName, employee.LastName, 
			  town.[Name] AS Town, address.AddressText
FROM Employees AS employee
	JOIN Addresses [address] ON [address].AddressID = employee.AddressID
	JOIN Towns town ON town.TownID = [address].TownID
ORDER BY employee.FirstName, employee.LastName;