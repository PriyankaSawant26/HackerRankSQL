A median is defined as a number separating the higher half of a data set from the lower half. 
Query the median of the Northern Latitudes (LAT_N) from STATION and round your answer to  4 decimal places.

If the data set has an odd number of observations, the middle one is selected. 
For example, the following list of seven numbers,
1, 3, 3, 6, 7, 8, 9  has the median of 6, which is the fourth value.

If the data set has an even number of observations, there is no distinct middle value and the median is usually defined to be the arithmetic mean of the two middle values.
For example, this data set of 8 numbers
1, 2, 3, 4, 5, 6, 8, 9 has a median value of 4.5, that is (4+5)/2

SELECT ROUND(S.lAT_N,4) FROM STATION S WHERE
(SELECT COUNT(LAT_N) FROM STATION WHERE LAT_N < S.LAT_N ) =
(SELECT COUNT(LAT_N) FROM STATION WHERE LAT_N > S.LAT_N );
