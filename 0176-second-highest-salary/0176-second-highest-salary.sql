# Write your MySQL query statement below
SELECT
IFNULL (
  (
    SELECT DISTINCT salary
    FROM Employee
    ORDER BY salary DESC
    LIMIT 1,1
  ), null
) AS SecondHighestSalary 
FROM Employee
LIMIT 1;