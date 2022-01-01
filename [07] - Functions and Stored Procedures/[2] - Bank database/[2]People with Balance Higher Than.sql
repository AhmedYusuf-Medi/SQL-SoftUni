--Task 2
CREATE PROCEDURE usp_GetHoldersWithBalanceHigherThan
(
@balance MONEY
)
AS
BEGIN
SELECT AH.FirstName AS [First Name],
AH.LastName AS [Last Name]
FROM AccountHolders AS AH
JOIN Accounts AS account ON AH.Id = account.AccountHolderId
GROUP BY AH.FirstName,
AH.LastName
HAVING @balance < SUM(account.Balance);
END;