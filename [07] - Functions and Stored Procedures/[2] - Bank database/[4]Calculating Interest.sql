--Task 4
CREATE PROCEDURE usp_CalculateFutureValueForAccount
(
                 @accountId    INT,
                 @interestRate FLOAT
)
AS
BEGIN
SELECT account.Id AS [Account Id],
AH.FirstName AS [First Name],
AH.LastName AS [Last Name],
account.Balance AS [Current Balance],
dbo.ufn_CalculateFutureValue(account.Balance, @interestRate, 5)
FROM Accounts AS account
JOIN AccountHolders AS AH ON account.AccountHolderId = AH.Id
WHERE account.Id = @accountId;
END;