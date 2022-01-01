--Task 6
SELECT WD.DepositGroup,SUM(WD.DepositAmount) AS [Total Sum]
FROM WizzardDeposits AS WD
WHERE WD.MagicWandCreator = 'Ollivander family'
GROUP BY WD.DepositGroup; 
