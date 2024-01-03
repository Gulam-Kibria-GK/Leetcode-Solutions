# Write your MySQL query statement below

select r.contest_id, round((count(r.user_id)/(select count(*) from Users))*100,2) as percentage from Users u left join Register r on u.user_id =r.user_id
where r.contest_id is not null group by r.contest_id order by percentage desc , contest_id 
