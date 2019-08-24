# Write your MySQL query statement below
SELECT NAME,
       population,
       area
FROM   world
WHERE  population > 25000000
        OR area > 3000000