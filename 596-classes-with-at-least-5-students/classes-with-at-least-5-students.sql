/* Write your PL/SQL query statement below */
SELECT MAX(class) as class
FROM Courses
GROUP BY class
HAVING COUNT(student)>=5