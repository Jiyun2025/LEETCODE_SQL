/* Write your PL/SQL query statement below */
SELECT d.dept_name,count(s.student_name) as student_number
FROM Student s
RIGHT JOIN Department d
ON s.dept_id=d.dept_id
GROUP BY d.dept_name
ORDER BY count(s.student_name) desc , d.dept_name asc