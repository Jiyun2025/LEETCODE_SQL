/* Write your PL/SQL query statement below */
SELECT x,y,z, 
-- 가장 긴 한변의 길이가 나머지 두변의 합보다 작아야함 
CASE WHEN x+y>z and y+z>x and x+z>y THEN 'Yes'
    ELSE 'No' END
     AS triangle 
FROM Triangle