USE company;
CREATE TABLE employee(
emp_id int UNSIGNED AUTO_INCREMENT PRIMARY KEY,
first_name varchar(25) NOT NULL,
last_name varchar(30) NOT NULL,
birth_date date NOT NULL,
gender char(1) CHECK(gender='M' OR gender='F'),
email varchar(40) UNIQUE,
manager_id int UNSIGNED,
address_id int UNSIGNED NOT NULL ,
FOREIGN KEY (manager_id) REFERENCES employee(emp_id),
FOREIGN KEY (address_id) REFERENCES addemployeeress(address_id)
);


CREATE TABLE Employment
(
e_id int UNSIGNED AUTO_INCREMENT PRIMARY KEY,
emp_id int UNSIGNED  NOT NULL,
dept_id int UNSIGNED  NOT NULL,
p_id int UNSIGNED NOT NULL,
salary DECIMAL(12, 2) NOT NULL,
start_date date NOT NULL,
end_date date NULL,
FOREIGN KEY (dept_id) REFERENCES department(dept_id),
FOREIGN KEY (emp_id) REFERENCES Employee(emp_id),
FOREIGN KEY (p_id) REFERENCES company.position(p_id)
);

CREATE TABLE Task
(
task_id int UNSIGNED AUTO_INCREMENT PRIMARY KEY,
name varchar(40) NOT NULL,
e_id int UNSIGNED NOT NULL,
start_date datetime NOT NULL,
end_date datetime NOT NULL,
deadline datetime NOT NULL,
`[desc]` varchar(15000) NULL,
FOREIGN KEY (e_id) REFERENCES Employment(e_id)
);