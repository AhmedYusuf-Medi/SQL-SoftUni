--Task 6
SELECT town.TownID,town.Name
FROM Towns AS town
WHERE LEFT(town.Name,1) = 'M' OR LEFT(town.Name,1) = 'K' Or
LEFT(town.Name,1) = 'B' OR LEFT(town.Name,1) = 'E'
ORDER BY town.Name ASC;
