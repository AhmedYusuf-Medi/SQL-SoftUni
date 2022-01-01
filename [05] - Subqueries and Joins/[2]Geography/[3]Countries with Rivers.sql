--Task 3
SELECT TOP 5 country.CountryName,river.RiverName
FROM Countries AS country
LEFT JOIN CountriesRivers AS cr ON country.CountryCode = cr.CountryCode
LEFT JOIN Rivers AS river ON cr.RiverId = river.Id
JOIN Continents AS cnt ON country.ContinentCode = cnt.ContinentCode
WHERE cnt.ContinentName = 'Africa'
ORDER BY country.CountryName; 