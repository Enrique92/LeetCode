# Write your MySQL query statement below
SELECT a.NAME AS 'Employee'
FROM   employee AS a,
       employee AS b
WHERE  a.managerid = b.id
       AND a.salary > b.salary  