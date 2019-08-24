/* Write your T-SQL query statement below */
SELECT w1.id
FROM   weather AS w1
       INNER JOIN (SELECT Dateadd(day, 1, w2.recorddate) AS Date,
                          w2.temperature
                   FROM   weather w2) AS w2
               ON w1.recorddate = w2.date
                  AND w1.temperature > w2.temperature  