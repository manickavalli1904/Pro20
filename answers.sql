
CREATE TABLE Employee (
EmployeeID NUMBER PRIMARY KEY,
EmployeeName VARCHAR2(50),
Salary NUMBER
);
SET SERVEROUTPUT ON;
CREATE OR REPLACE TRIGGER employee_insert_trigger AFTER INSERT ON Employee
FOR EACH ROW
BEGIN
DBMS_OUTPUT.PUT_LINE(
'New employee record inserted successfully.'
);
END;
/
If the trigger is created successfully, you should see:
Trigger EMPLOYEE_INSERT_TRIGGER compiled
INSERT INTO Employee(EmployeeID, EmployeeName, Salary)
VALUES (101, 'Ravi', 25000);
COMMIT;
SELECT * FROM Employee;
