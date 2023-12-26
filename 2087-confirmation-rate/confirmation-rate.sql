# Write your MySQL query statement below

SELECT a.user_id,
   ROUND(COALESCE( (
        (SELECT COUNT(*) FROM Confirmations WHERE action='confirmed' AND user_id = a.user_id) /
            COALESCE(CAST(COUNT(b.user_id) AS DECIMAL(10, 2)), 1)
    ),0),2) AS confirmation_rate
FROM Signups a
LEFT JOIN Confirmations b ON a.user_id = b.user_id
GROUP BY a.user_id;



