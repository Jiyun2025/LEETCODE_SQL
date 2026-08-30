/* Write your PL/SQL query statement below */
SELECT s.name
FROM SalesPerson s
WHERE s.sales_id NOT IN (
    Select sales_id
    from company c
    inner join orders o
    on c.com_id = o.com_id
    where c.name = 'RED'
)