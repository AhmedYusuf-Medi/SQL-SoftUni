--Task 2
SELECT TOP 30 country.CountryName, country.Population
FROM Countries AS country
WHERE country.ContinentCode = 'EU'
ORDER BY country.Population DESC, country.CountryName;