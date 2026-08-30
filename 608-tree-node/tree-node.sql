/* Write your PL/SQL query statement below */
SELECT id, 
    CASE 
    WHEN p_id IS NULL THEN 'Root'
    -- is the child's ID in parent's node ID?  
    WHEN id IN (select t.p_id from Tree t) THEN 'Inner'
    ELSE 'Leaf' END as type
FROM Tree 
