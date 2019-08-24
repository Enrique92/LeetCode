# Write your MySQL query statement below
SELECT s.score,
       Count(DISTINCT t.score) Rank
FROM   scores s
       JOIN scores t
         ON s.score <= t.score
GROUP  BY s.id
ORDER  BY s.score DESC 