--Task 2
SELECT [user].Username,RIGHT([user].Email, LEN([user].Email)-CHARINDEX('@',[user].Email)) AS [Email Provider]
FROM Users AS [user]
ORDER BY [Email Provider] , [user].Username;