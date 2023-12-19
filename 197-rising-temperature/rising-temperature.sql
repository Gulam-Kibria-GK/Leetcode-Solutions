# Write your MySQL query statement below
SELECT a.id
FROM Weather a, Weather b where a.recordDate = b.recordDate + INTERVAL 1 DAY
and a.temperature > b.temperature;
