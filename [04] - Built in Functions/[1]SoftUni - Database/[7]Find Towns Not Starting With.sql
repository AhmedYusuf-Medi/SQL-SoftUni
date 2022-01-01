--Task 7
SELECT town.TownId,town.Name
FROM Towns AS town
WHERE LEFT(town.Name, 1) NOT LIKE '[RBD]'
ORDER BY town.Name ASC;