/* Write your PL/SQL query statement below */
select a.seller_name 
from seller a left outer join orders b on a.seller_id = b.seller_id and to_char(b.sale_date, 'YYYY') =2020
where b.order_id is null
order by a.seller_name asc