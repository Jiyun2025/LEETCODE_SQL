/* Write your PL/SQL query statement below */
SELECT d.name as Department, e.name as Employee, e.salary as Salary 
FROM Employee e
JOIN Department d
ON e.departmentId = d.id 
WHERE e.salary = (
    select max(e2.salary)   
    from Employee e2
    where e2.departmentId = e.departmentId
);