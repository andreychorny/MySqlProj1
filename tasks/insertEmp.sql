CREATE DEFINER=`root`@`localhost` PROCEDURE `insertEmp`(IN firstName VARCHAR(100), lastName VARCHAR(100),
 birth date, gend char(1), email varchar(40), manag_id int(10), address int(10))
BEGIN
INSERT INTO employee (first_name, last_name, birth_date, email, gender, manager_id,address_id) 
VALUES(firstName, lastName,birth, email, gend,manag_id, address);
END