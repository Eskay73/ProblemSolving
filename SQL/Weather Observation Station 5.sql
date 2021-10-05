Query the two cities in STATION with the shortest and longest CITY names, as well as their respective lengths 
(i.e.: number of characters in the name). If there is more than one smallest or largest city, 
choose the one that comes first when ordered alphabetically.
The STATION table is described:
where LAT_N is the northern latitude and LONG_W is the western longitude.

Sample Input
For example, CITY has four entries: DEF, ABC, PQRS and WXY.

Explanation:
When ordered alphabetically, the CITY names are listed as ABC, DEF, PQRS, and WXY, with lengths  and . 
The longest name is PQRS, but there are  options for shortest named city. 
Choose ABC, because it comes first alphabetically.
Note:
You can write two separate queries to get the desired output. It need not be a single query.

#############################################################################################################################################
LINK: https://www.hackerrank.com/challenges/weather-observation-station-5/problem
#############################################################################################################################################

SOLUTION: 
SELECT City, LENGTH(City)
FROM (SELECT City
      FROM Station
     ORDER BY LENGTH(City), City)
WHERE ROWNUM = 1;
SELECT City, LENGTH(City)
FROM (SELECT City
      FROM Station
     ORDER BY LENGTH(City) DESC, City)
WHERE ROWNUM = 1;