--Task 10
SELECT LEFT(WD.FirstName, 1) AS FirstLetter
FROM WizzardDeposits AS WD
WHERE WD.DepositGroup = 'Troll Chest'
GROUP BY LEFT(WD.FirstName, 1)
ORDER BY FirstLetter; 
