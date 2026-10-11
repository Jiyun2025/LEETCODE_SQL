/* Write your PL/SQL query statement below */
SELECT S.id, S.name 
FROM Students S
LEFT JOIN Departments D
ON D.id = S.department_id
WHERE D.name IS NULL 
