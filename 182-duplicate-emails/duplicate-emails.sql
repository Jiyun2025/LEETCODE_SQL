/* Write your PL/SQL query statement below */
SELECT Email 
FROM Person
Group by email 
Having count(email) > 1;