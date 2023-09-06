Write a query to print all prime numbers less than or equal to . 
Print your result on a single line, and use the ampersand () character as your separator (instead of a space).

-- Common table expressions, use a WITH clause that has one or more comma-separated subclauses.
-- A common table expression is recursive if its subquery refers to its own name.

-- define CTE:
WITH RECURSIVE cte1 AS (SELECT 2 AS number 
                        UNION 
                        SELECT number + 1  FROM cte1 
                        WHERE number < 1000)

-- use CTE in subsequent query:
SELECT GROUP_CONCAT(number SEPARATOR '&') 
FROM cte1
WHERE (SELECT COUNT(*) FROM cte1 cte2 where cte1.number%cte2.number=0) = 1;