CREATE PROCEDURE `hireEmp` (IN employeeId int(10), departmentId int(10),
 salar decimal(12,2), positionId int(10))
BEGIN
INSERT INTO employment(emp_id, dept_id, salary, p_id) 
VALUES(employeeId, departmentId, salar, positionId);
END
