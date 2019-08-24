# Write your MySQL query statement below
SELECT DISTINCT fir.num AS ConsecutiveNums
FROM   logs fir,
       logs sec,
       logs thir
WHERE  sec.id - fir.id = 1
       AND thir.id - sec.id = 1
       AND fir.num = sec.num
       AND sec.num = thir.num  