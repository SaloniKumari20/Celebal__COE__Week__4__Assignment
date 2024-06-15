SELECT DISTINCT CITY 
FROM STATION 
WHERE SUBSTRING(CITY, 1, 1) IN ('A', 'E', 'I', 'O', 'U', 'a', 'e', 'i', 'o', 'u') 
  AND SUBSTRING(CITY, -1, 1) IN ('A', 'E', 'I', 'O', 'U', 'a', 'e', 'i', 'o', 'u');
