--Task 3
SELECT DepositGroup,
MAX(WD.MagicWandSize) AS [WD.LongestMagicWand]
FROM WizzardDeposits AS WD
GROUP BY WD.DepositGroup; 