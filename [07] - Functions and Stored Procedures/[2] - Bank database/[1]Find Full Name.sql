--Task 1
CREATE PROCEDURE usp_GetHoldersFullName
AS
BEGIN
SELECT CONCAT(AH.FirstName+' ', AH.LastName) AS [Full Name]
FROM AccountHolders AS AH;
END;