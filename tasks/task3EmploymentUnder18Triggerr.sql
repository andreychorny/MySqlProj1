DELIMITER ;;

CREATE TRIGGER triggerEmploymentUnder18
BEFORE INSERT on employment
FOR EACH ROW
BEGIN
    IF ( TIMESTAMPDIFF(YEAR, 
    (SELECT birth_date FROM employee WHERE NEW.emp_id = employee.emp_id), NOW())  < 18) 
    THEN SET NEW.emp_id = null;
    END IF;
END;;

DELIMITER ;

DROP TRIGGER triggerEmploymentUnder18