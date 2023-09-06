
P(R) represents a pattern drawn by Julia in R rows. The following pattern represents P(5):

* * * * * 
* * * * 
* * * 
* * 
*
Write a query to print the pattern P(20).

Typically, a stored procedure contains multiple statements separated by semicolons (;). 
To compile the whole stored procedure as a single compound statement, you need to temporarily change the delimiter from the semicolon (;) to another delimiter such as $$ or //:


DELIMITER $$
CREATE PROCEDURE getAsterisk(n INT)
BEGIN
    DECLARE i INT DEFAULT 20;
    WHILE i > 0 DO
        SELECT REPEAT('* ', i);
        SET i = i - 1;
    END WHILE;
END $$
DELIMITER ;

CALL getAsterisk(20);