/* Write your PL/SQL query statement below */
SELECT a.player_id, a.device_id
FROM Activity a
WHERE 
(a.player_id, a.event_date) IN 
(SELECT a2.player_id, MIN(a2.event_date)
FROM Activity a2
GROUP BY a2.player_id)