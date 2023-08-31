Consider  P1(a,c) and P2(b,d) to be two points on a 2D plane 
where (a,b) are the respective minimum and maximum values of Northern Latitude (LAT_N)   and
      (c,d) are the respective minimum and maximum values of Western Longitude (LONG_W) in STATION.

Query the Euclidean Distance between points P1 and P2 and format your answer to display 4 decimal digits.

# SQRT(POWER((b - a), 2) + POWER((d - c), 2))

# SQRT(POWER(MIN(LAT_N) - MAX(LAT_N),2)  +  POWER(MIN(LONG_W) - MAX(LONG_W),2) )

SELECT ROUND(SQRT(POWER(MIN(LAT_N) - MAX(LAT_N),2)  +  POWER(MIN(LONG_W) - MAX(LONG_W),2) ),4) FROM STATION;

or

SELECT ROUND(SQRT(POWER((b - a), 2) + POWER((d - c), 2)), 4)
FROM (
    SELECT MIN(lat_n) AS a,
        MAX(lat_n) AS b,
        MIN(long_w) AS c,
        MAX(long_w) AS d
    FROM station
) AS Points;