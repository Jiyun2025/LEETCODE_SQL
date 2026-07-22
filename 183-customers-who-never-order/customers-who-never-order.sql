/* Write your PL/SQL query statement below */
select c.name as Customers
from  Customers c
left join orders o
on c.Id=o.CustomerId
where o.CustomerId IS NULL