/* Write your PL/SQL query statement below */
SELECT unique(author_id) as id
FROM Views
WHERE author_id = viewer_id 
Order by id asc