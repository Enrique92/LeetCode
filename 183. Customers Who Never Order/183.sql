# Write your MySQL query statement below
SELECT c.NAME AS Customers
FROM   customers AS c
WHERE  c.id NOT IN (SELECT o.customerid
                    FROM   orders AS o)  
