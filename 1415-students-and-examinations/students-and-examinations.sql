# Write your MySQL query statement below

SELECT stu.student_id, stu.student_name, s.subject_name, sum(if(e.student_id=stu.student_id && e.subject_name = s.subject_name, 1, 0 )) as  attended_exams
FROM Students stu
CROSS JOIN Subjects s
left JOIN Examinations e ON e.student_id = stu.student_id and s.subject_name=e.subject_name
group by s.subject_name, stu.student_id
order by stu.student_id , s.subject_name

