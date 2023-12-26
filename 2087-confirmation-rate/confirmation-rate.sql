# Write your MySQL query statement below

#select a.user_id ,  (select count(*) from Confirmations where action='confirmed' group by user_id ) as confirmation_rate/(count(b.user_id) from Signups a left join Confirmations b on a.user_id=b.user_id group by a.user_id 

SELECT a.user_id,
   round(COALESCE ((
        (SELECT COUNT(*) FROM Confirmations WHERE action='confirmed' AND user_id = a.user_id) /
        COALESCE((COUNT(b.user_id) ), 1)
    ),0),2) AS confirmation_rate
FROM Signups a
LEFT JOIN Confirmations b ON a.user_id = b.user_id
GROUP BY a.user_id;



