# Write your MySQL query statement below

# select a.name from Employee a join (select managerId, count(managerId) as mid from Employee group by managerId) b on a.id=b.managerId where b.mid>=5; #AC

SELECT a.name FROM Employee a
JOIN Employee b ON a.id = b.managerId
GROUP BY a.id
HAVING COUNT(*) >= 5;



