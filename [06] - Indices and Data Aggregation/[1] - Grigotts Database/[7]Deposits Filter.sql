--Task 7
SELECT WD.DepositGroup,SUM(WD.DepositAmount) AS [Total Sum]
FROM WizzardDeposits AS WD
WHERE WD.MagicWandCreator = 'Ollivander family'
GROUP BY WD.DepositGroup
HAVING SUM(WD.DepositAmount) < 150000
ORDER BY [Total Sum] DESC; 

