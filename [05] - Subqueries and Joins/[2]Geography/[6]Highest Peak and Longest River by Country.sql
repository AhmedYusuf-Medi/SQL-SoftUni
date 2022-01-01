--Task 6
SELECT TOP 5 peaks.CountryName,
peaks.Elevation AS HighestPeakElevation,
rivers.Length AS LongestRiverLength
FROM
(
SELECT country.CountryName,
country.CountryCode,
DENSE_RANK() OVER(PARTITION BY country.CountryName ORDER BY peak.Elevation DESC) AS DescendingElevationRank,
peak.Elevation
FROM Countries AS country
FULL OUTER JOIN MountainsCountries AS mc ON country.CountryCode = mc.CountryCode
FULL OUTER JOIN Mountains AS mountain ON mc.MountainId = mountain.Id
FULL OUTER JOIN Peaks AS peak ON mountain.Id = peak.MountainId
) AS peaks
FULL OUTER JOIN
(
SELECT country.CountryName,
country.CountryCode,
DENSE_RANK() OVER(PARTITION BY country.CountryCode ORDER BY river.Length DESC) AS DescendingRiversLenghRank,
river.Length
FROM Countries AS country
FULL OUTER JOIN CountriesRivers AS cr ON country.CountryCode = cr.CountryCode
FULL OUTER JOIN Rivers AS river ON cr.RiverId = river.Id
) AS rivers ON peaks.CountryCode = rivers.CountryCode
WHERE peaks.DescendingElevationRank = 1
AND rivers.DescendingRiversLenghRank = 1
AND (peaks.Elevation IS NOT NULL
OR rivers.Length IS NOT NULL)
ORDER BY HighestPeakElevation DESC,
LongestRiverLength DESC,
CountryName; 