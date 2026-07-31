/* Write your PL/SQL query statement below */
/* 행은 그대로 두고 계산 결과만 붙임*/
select employee_id, count(*) over(partition by team_id) as team_size
from employee