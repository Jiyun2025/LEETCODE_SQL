/* Write your PL/SQL query statement below */
SELECT e1.name as name, b1.bonus as bonus
FROM Employee e1
LEFT JOIN Bonus b1
ON e1.empId=b1.empId
WHERE b1.bonus IS NULL OR b1.bonus < 1000