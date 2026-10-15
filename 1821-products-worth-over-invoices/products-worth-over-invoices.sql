/* Write your PL/SQL query statement below */

WITH INV AS (SELECT product_id,sum(rest) AS rest, sum(paid) AS paid ,sum(canceled) AS canceled ,sum(refunded) AS refunded 
                FROM Invoice 
                GROUP BY product_id)

SELECT A.name,NVL(B.rest,0) as rest ,NVL(B.paid,0) as paid ,NVL(B.canceled,0) as canceled,NVL(B.refunded,0) as refunded
FROM Product A
Left Join INV B
on A.product_id = B.product_id 
ORDER BY A.name