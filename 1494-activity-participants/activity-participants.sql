/* Write your PL/SQL query statement below */
-- 최대 참여와 최소 참여가 없는 활동이름 
WITH user_by_act AS(
    SELECT activity,count(Distinct id) as user_cnt
    FROM Friends
    GROUP BY activity
)
SELECT activity
FROM user_by_act
WHERE user_cnt NOT IN (SELECT MAX(user_cnt) FROM user_by_act)
AND user_cnt NOT IN (SELECT MIN(user_cnt) FROM user_by_act)



