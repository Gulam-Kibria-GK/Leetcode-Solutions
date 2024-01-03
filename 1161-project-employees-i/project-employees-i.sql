# Write your MySQL query statement below

select p.project_id , ifnull(round(sum(e.experience_years)/count(p.project_id),2),0) as average_years from Project p join Employee e on p.employee_id = e.employee_id where experience_years is not null
group by p.project_id

# select p.project_id,round(avg(e.experience_years),2) as average_years
# from Project p join Employee e on p.employee_id=e.employee_id
# group by p.project_id;