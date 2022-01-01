--Task 2
SELECT country.CountryCode,COUNT(mc.MountainId) AS MountainRanges
FROM Countries AS country
     LEFT OUTER JOIN MountainsCountries AS mc ON country.CountryCode = mc.CountryCode
GROUP BY mc.CountryCode,
         country.CountryCode,
         CountryName
HAVING country.CountryName IN('United States', 'Russia', 'Bulgaria'); 