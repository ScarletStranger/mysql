DROP DATABASE IF EXISTS lesson_6;
CREATE DATABASE lesson_6;
USE lesson_6;
DROP FUNCTION IF EXISTS print_even_num;
DELIMITER $$ 
CREATE PROCEDURE print_even_num()
BEGIN
    DECLARE n INT default 0;
    DROP TABLE IF EXISTS nums;
    CREATE TABLE nums (n INT);

    WHILE n < 10 DO
    SET n = n + 2;
    INSERT INTO nums VALUES(n);
    END WHILE;

SELECT * FROM nums;
END $$
DELIMITER ; 
CALL print_even_num();