--Task 3
SELECT [user].Username,[user].IpAddress AS [IP Address]
FROM Users AS [user]
WHERE [user].IpAddress LIKE '___.1_%._%.___'
ORDER BY [user].Username;