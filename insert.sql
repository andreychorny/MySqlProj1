DELIMITER ;;

CREATE TRIGGER restrictDate
BEFORE INSERT on employment
FOR EACH ROW
BEGIN
    SET NEW.start_date = NOW();
END;;

DELIMITER ;

DELIMITER $$
CREATE TRIGGER before_employee 
    BEFORE INSERT ON employee
    FOR EACH ROW 
BEGIN
IF (NEW.gender != 'M' && NEW.gender != 'F' && NEW.gender != 'm' && NEW.gender != 'f' ) 
THEN SET NEW.first_name = null;
END IF;
IF (NEW.gender = 'm') THEN SET NEW.gender = 'M';
END IF;
IF (NEW.gender = 'f') THEN SET NEW.gender = 'F';
END IF;
END$$
DELIMITER ;

ALTER TABLE employee AUTO_INCREMENT = 1;
ALTER TABLE country AUTO_INCREMENT = 1;
ALTER TABLE address AUTO_INCREMENT = 1;
ALTER TABLE department AUTO_INCREMENT = 1;
ALTER TABLE employment AUTO_INCREMENT = 1;
ALTER TABLE company.position AUTO_INCREMENT = 1;
ALTER TABLE task AUTO_INCREMENT = 1;

insert into Country(name) values('Poland');
insert into Country(name) values('United Kingdom');
insert into Country(name) values('Germany');
insert into Address(street,city,postal_code,country_id) values('22 Banacha','Lodz','90-238',1);
insert into Address(street,city,postal_code,country_id) values('11 Nowa','Krakow','60-438',1);
insert into Address(street,city,postal_code,country_id) values('14 Zieona','Warsaw','00-983',1);
insert into Address(street,city,postal_code,country_id) values('23 Granitowa','Lodz','90-922',1);
insert into Address(street,city,postal_code,country_id) values('145 Piotrkowska','Lodz','90-289',1);
insert into Address(street,city,postal_code,country_id) values('90 Targowa','Warsaw','00-987',1);
insert into Address(street,city,postal_code,country_id) values('56 Kwaitowa','Lodz','90-454',1);
insert into Address(street,city,postal_code,country_id) values('54 Bednarska','Krakow','60-238',1);
insert into Address(street,city,postal_code,country_id) values('76 Mickiewicza','Warsaw','00-424',1);
insert into Address(street,city,postal_code,country_id) values('53 Rojna','Lodz','90-253',1);
insert into Address(street,city,postal_code,country_id) values('89 Sarnia','Lodz','90-532',1);
insert into Address(street,city,postal_code,country_id) values('33 Zachodnia','Warsaw','00-231',1);
insert into Address(street,city,postal_code,country_id) values('28 Polna','Lodz','90-532',1);
insert into Address(street,city,postal_code,country_id) values('23 Wschodnia','Krakow','60-124',1);
insert into Address(street,city,postal_code,country_id) values('16 Senatorska','Warsaw','00-342',1);
insert into Address(street,city,postal_code,country_id) values('63 Akacjowa','Lodz','90-922',1);
insert into Address(street,city,postal_code,country_id) values('22 Bema','Lodz','90-482',1);
insert into Address(street,city,postal_code,country_id) values('10 Jaracza','Warsaw','00-225',1);
insert into Address(street,city,postal_code,country_id) values('45 Narutowicza','Lodz','90-238',1);
insert into Address(street,city,postal_code,country_id) values('14 Kresowa','Krakow','60-438',1);
insert into Address(street,city,postal_code,country_id) values('53 Banacha','Warsaw','00-233',1);
insert into Employee(first_name,last_name,birth_date,gender,email,manager_id,address_id) values('John','Smith','1980-8-08','M','JSMITH@COMPEDU.EU',null,1);
insert into Employee(first_name,last_name,birth_date,gender,email,manager_id,address_id) values('Adam','Parker','1985-5-24','M','APARKER@COMPEDU.EU',1,2);
insert into Employee(first_name,last_name,birth_date,gender,email,manager_id,address_id) values('Filiph', 'Miller','1984-04-12','M','FMILLER@COMPEDU.EU',1,3);
insert into Employee(first_name,last_name,birth_date,gender,email,manager_id,address_id) values('Henry', 'Bell','1976-05-23','M','HBELL@COMPEDU.EU',2,4);
insert into Employee(first_name,last_name,birth_date,gender,email,manager_id,address_id) values('James', 'Collins','1986-0-14','M','JCOLLINS@COMPEDU.EU',2,5);
insert into Employee(first_name,last_name,birth_date,gender,email,manager_id,address_id) values('Adrien', 'Powell','1988-06-11','M','APOWELL@COMPEDU.EU',3,6);
insert into Employee(first_name,last_name,birth_date,gender,email,manager_id,address_id) values('Albert', 'Foster','1980-04-08','M','AFOSTER@COMPEDU.EU',1,7);
insert into Employee(first_name,last_name,birth_date,gender,email,manager_id,address_id) values('Alice', 'Adams','1984-07-25','F','AADAMS@COMPEDU.EU',2,8);
insert into Employee(first_name,last_name,birth_date,gender,email,manager_id,address_id) values('Eva', 'Owen','1979-02-16','F','EOWEN@COMPEDU.EU',3,9);
insert into Employee(first_name,last_name,birth_date,gender,email,manager_id,address_id) values('Hannah', 'Mills','1987-04-30','F','HMILLS@COMPEDU.EU',3,10);
insert into Employee(first_name,last_name,birth_date,gender,email,manager_id,address_id) values('Justina',
'Stevens','1980-09-23','F','JSTEVENS@COMPEDU.EU',2,11);
insert into Employee(first_name,last_name,birth_date,gender,email,manager_id,address_id) values('Laura', 'Fisher','1982-03-11','F','LFISHER@COMPEDU.EU',4,12);
insert into Employee(first_name,last_name,birth_date,gender,email,manager_id,address_id) values('Monica', 'Shaw','1980-04-23','F','MSHAW@COMPEDU.EU',5,13);
insert into Employee(first_name,last_name,birth_date,gender,email,manager_id,address_id) values('Richard', 'Cook','1899-06-11','M','RCOOK@COMPEDU.EU',4,14);
insert into Employee(first_name,last_name,birth_date,gender,email,manager_id,address_id) values('Thomas', 'Smith','1980-12-14','M','TSMITH@COMPEDU.EU',2,15);
insert into Employee(first_name,last_name,birth_date,gender,email,manager_id,address_id) values('Victor', 'Palmer','1980-11-18','M','VPALMER@COMPEDU.EU',1,16);
insert into Employee(first_name,last_name,birth_date,gender,email,manager_id,address_id) values('Simon', 'Mills','1983-09-28','M','SMILLS@COMPEDU.EU',6,17);
insert into Employee(first_name,last_name,birth_date,gender,email,manager_id,address_id) values('John', 'Tylor','1977-05-28','M','JTYLOR@COMPEDU.EU',3,18);
insert into company.Position(name) values('director');
insert into company.Position(name) values('vice-director');
insert into company.Position(name) values('junior programmer');
insert into company.Position(name) values('senior programmer');
insert into company.Position(name) values('analyst');
insert into company.Position(name) values('senior tester');
insert into company.Position(name) values('junior tester');
insert into company.Position(name) values('IT manager');
insert into company.Position(name) values('sales representative');
insert into company.Position(name) values('sales manager');
insert into company.Position(name) values('accountant');
insert into Department(name,address_id) values('IT',19);
insert into Department(name,address_id) values('HR',20);
insert into Department(name,address_id) values('Marketing',21);
insert into Employment(emp_id,dept_id,p_id,salary,start_date,end_date) values(1,1,1,19000,'2010-10-05',null);
insert into Employment(emp_id,dept_id,p_id,salary,start_date,end_date) values(2,1,2,12000,'2011-11-12',null);
insert into Employment(emp_id,dept_id,p_id,salary,start_date,end_date) values(3,1,3,11000,'2010-11-12',null);
insert into Employment(emp_id,dept_id,p_id,salary,start_date,end_date) values(4,1,2,10000,'2010-12-14',null);
insert into Employment(emp_id,dept_id,p_id,salary,start_date,end_date) values(5,2,3,9500,'2010-12-05',null);
insert into Employment(emp_id,dept_id,p_id,salary,start_date,end_date) values(6,2,2,9000,'2011-04-14',null);
insert into Employment(emp_id,dept_id,p_id,salary,start_date,end_date) values(7,1,3,9000,'2011-06-12',null);
insert into Employment(emp_id,dept_id,p_id,salary,start_date,end_date) values(8,1,2,8000,'2011-05-15','2012-05-15');
insert into Employment(emp_id,dept_id,p_id,salary,start_date,end_date) values(9,2,3,7000,'2011-09-18',null);
insert into Employment(emp_id,dept_id,p_id,salary,start_date,end_date) values(10,2,4,7000,'2011-11-05',null);
insert into Employment(emp_id,dept_id,p_id,salary,start_date,end_date) values(11,3,4,6000,'2010-01-29',null);
insert into Employment(emp_id,dept_id,p_id,salary,start_date,end_date) values(12,3,3,5000,'2011-10-15','2013-10-15');
insert into Employment(emp_id,dept_id,p_id,salary,start_date,end_date) values(13,3,3,5000,'2011-10-15',null);
insert into Employment(emp_id,dept_id,p_id,salary,start_date,end_date) values(14,3,2,6000,'2011-06-02',null);
insert into Employment(emp_id,dept_id,p_id,salary,start_date,end_date) values(15,3,1,7000,'2010-10-01',null);
insert into Employment(emp_id,dept_id,p_id,salary,start_date,end_date) values(16,1,4,4000,'2011-12-08',null);
insert into Employment(emp_id,dept_id,p_id,salary,start_date,end_date) values(16,1,4,6000,'2011-09-08',null);
insert into Employment(emp_id,dept_id,p_id,salary,start_date,end_date) values(16,2,3,5000,'2011-06-10',null);
insert into Employment(emp_id,dept_id,p_id,salary,start_date,end_date) values(8,2,2,9000,'2012-05-16',null);
insert into Employment(emp_id,dept_id,p_id,salary,start_date,end_date) values(12,2,2,6000,'2013-10-16',null);
insert into Task(`name`,e_id,start_date,end_date,deadline,`[desc]`) values('Task1',1,'2010-10-06','2010-11-05','2010-11-05',null);
insert into Task(`name`,e_id,start_date,end_date,deadline,`[desc]`) values('Task2',2,'2011-11-13','2011-11-29','2011-11-29',null);
insert into Task(`name`,e_id,start_date,end_date,deadline,`[desc]`) values('Task3',3,'2010-11-14','2010-12-12','2010-12-12',null);
insert into Task(`name`,e_id,start_date,end_date,deadline,`[desc]`) values('Task4',4,'2010-12-15','2010-12-30','2010-12-30',null);
insert into Task(`name`,e_id,start_date,end_date,deadline,`[desc]`) values('Task5',5,'2010-12-06','2010-12-25','2010-12-25',null);
insert into Task(`name`,e_id,start_date,end_date,deadline,`[desc]`) values('Task6',6,'2011-04-15','2011-05-14','2011-05-14',null);
insert into Task(`name`,e_id,start_date,end_date,deadline,`[desc]`) values('Task7',7,'2011-06-13','2011-07-12','2011-7-12',null);
insert into Task(`name`,e_id,start_date,end_date,deadline,`[desc]`) values('Task8',8,'2011-5-16','2011-6-15','2011-6-15',null);
insert into Task(`name`,e_id,start_date,end_date,deadline,`[desc]`) values('Task9',9,'2011-9-19','2011-10-18','2011-10-16',null);
insert into Task(`name`,e_id,start_date,end_date,deadline,`[desc]`) values('Task10',10,'2011-11-6','2011-12-15','2011-12-5',null);
insert into Task(`name`,e_id,start_date,end_date,deadline,`[desc]`) values('Task11',11,'2010-1-30','2010-2-27','2010-2-25',null);
insert into Task(`name`,e_id,start_date,end_date,deadline,`[desc]`) values('Task12',12,'2011-10-16','2011-11-15','2011-11-15',null);
insert into Task(`name`,e_id,start_date,end_date,deadline,`[desc]`) values('Task13',13,'2011-10-16','2011-11-15','2011-11-15',null);
insert into Task(`name`,e_id,start_date,end_date,deadline,`[desc]`) values('Task14',14,'2011-03-06','2011-7-2','2011-7-2',null);
insert into Task(`name`,e_id,start_date,end_date,deadline,`[desc]`) values('Task15',15,'2010-10-2','2010-11-10','2010-11-8',null);
insert into Task(`name`,e_id,start_date,end_date,deadline,`[desc]`) values('Task16',16,'2011-12-9','2011-12-23','2011-12-20',null);
insert into Task(`name`,e_id,start_date,end_date,deadline,`[desc]`) values('Task17',17,'2011-9-9','2011-10-8','2011-10-8',null);
insert into Task(`name`,e_id,start_date,end_date,deadline,`[desc]`) values('Task18',18,'2011-6-11','2011-7-10','2011-7-10',null);