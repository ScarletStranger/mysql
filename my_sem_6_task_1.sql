DROP DATABASE IF EXISTS lesson_6;
CREATE DATABASE lesson_6;
USE lesson_6;
DROP FUNCTION IF EXISTS seconds_converter;
DELIMITER $$
CREATE FUNCTION seconds_converter(seconds INT)
RETURNS VARCHAR(255) DETERMINISTIC
BEGIN
    DECLARE days, hours, minutes INT default 0;

    WHILE seconds >= 84600 DO
    SET days = seconds / 84600;
    SET seconds = seconds % 84600;
    END WHILE;

    WHILE seconds >= 3600 DO
    SET hours = seconds / 3600;
    SET seconds = seconds % 3600;
    END WHILE;

    WHILE seconds >= 60 DO
    SET minutes = seconds / 60;
    SET seconds = seconds % 60;
    END WHILE;

	RETURN CONCAT(days, ' days ', hours, ' hours ', minutes, ' minutes ', seconds, ' seconds');
END $$
DELIMITER ;

select seconds_converter(151236);