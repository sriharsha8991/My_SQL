CREATE database SCHOOL;
USE SCHOOL;
CREATE TABLE STUDENT(
STUDENT_ID INT primary KEY,
STUDENT_NAME VARCHAR(50) NOT NULL,
DEPARTMETNT_ID INT NOT NULL
);

CREATE TABLE DEPARTMENT(
DEPARTMENT_ID INT PRIMARY KEY,
DEPARTMENT_NAME VARCHAR(50) NOT NULL
);

INSERT INTO STUDENT(STUDENT_ID,STUDENT_NAME,DEPARTMETNT_ID)
VALUES
(1,"John Doe",1),
(2,"Jane Doe",2),
(3,'Jim Smith',3),
(4,"Amy Johnson",2),
(5,'Tom Wilson',1);

INSERT INTO DEPARTMENT(DEPARTMENT_ID,DEPARTMENT_NAME)
VALUES
(1,"Computer Science"),
(2,"Electrical Engineering"),
(3,"Mechanical Engineering");


select student.student_name,department.department_name from student
join department
on student.departmetnt_id = department.department_id
where department_id = 1
