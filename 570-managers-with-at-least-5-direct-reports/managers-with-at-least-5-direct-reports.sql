# Write your MySQL query statement below

select a.name from Employee a join (select managerId, count(managerId) as mid from Employee group by managerId) b on a.id=b.managerId where b.mid>=5;


