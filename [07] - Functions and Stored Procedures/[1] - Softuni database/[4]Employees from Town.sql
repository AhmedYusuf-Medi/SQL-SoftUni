--Task 4
CREATE PROCEDURE usp_GetEmployeesFromTown
(
@townName NVARCHAR(50)
)
AS
BEGIN
SELECT employee.FirstName AS [First Name],
employee.LastName AS [Last Name]
FROM Employees AS employee
JOIN Addresses AS addres ON employee.AddressID = addres.AddressID
JOIN Towns AS town ON addres.TownID = town.TownID
WHERE town.Name = @townName;
END;

EXEC usp_GetEmployeesFromTown
'Sofia';