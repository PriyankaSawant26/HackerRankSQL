Query the list of CITY names from STATION that do not start with vowels. Your result cannot contain duplicates.

select distinct city from station where not (city like 'a%' or city like 'e%' or city like 'i%' or city like 'o%' or city like 'u%');