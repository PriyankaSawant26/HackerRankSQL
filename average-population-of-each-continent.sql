Given the CITY and COUNTRY tables, query the names of all the continents (COUNTRY.Continent) and their respective average city populations (CITY.Population) rounded down to the nearest integer.

Note: CITY.CountryCode and COUNTRY.Code are matching key columns.

SELECT COUNTRY.Continent, FLOOR(AVG(CITY.Population)) 
FROM COUNTRY 
JOIN CITY ON COUNTRY.Code = CITY.CountryCode 
GROUP BY COUNTRY.Continent