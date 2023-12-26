# Write your MySQL query statement below

# SELECT a.user_id,
#    round(COALESCE ((
#         (SELECT COUNT(*) FROM Confirmations WHERE action='confirmed' AND user_id = a.user_id) /
#         COALESCE((COUNT(b.user_id) ), 1)
#     ),0),2) AS confirmation_rate
# FROM Signups a
# LEFT JOIN Confirmations b ON a.user_id = b.user_id
# GROUP BY a.user_id;


SELECT 
    s.user_id,
    ROUND(
        IFNULL(
            SUM(CASE WHEN c.action = 'confirmed' THEN 1 ELSE 0 END) / NULLIF(COUNT(c.user_id), 0),
            0
        ),
        2
    ) AS confirmation_rate
FROM Signups s
LEFT JOIN Confirmations c ON s.user_id = c.user_id
GROUP BY s.user_id;



