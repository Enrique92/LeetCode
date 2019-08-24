# Write your MySQL query statement below
SELECT dep.NAME  AS Department,
       empl.NAME AS Employee,
       empl.salary
FROM   department AS dep
       JOIN (SELECT *
             FROM   employee e1
             WHERE (SELECT Count(*)
                    FROM   employee e2
                    WHERE  e2.salary > e1.salary
                           AND e1.departmentid = e2.departmentid) < 1) AS empl
         ON empl.departmentid = dep.id