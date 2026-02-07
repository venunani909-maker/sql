CREATE DATABASE college_db;

CREATE TABLE Student (
    VTU_Number VARCHAR(15) PRIMARY KEY,
    Name VARCHAR(50),
    Email VARCHAR(50),
    Phone VARCHAR(15),
    Department VARCHAR(30)
);

CREATE TABLE Course (
    Course_Code VARCHAR(10) PRIMARY KEY,
    Course_Name VARCHAR(50),
    Faculty_Id VARCHAR(10),
    Student_ID VARCHAR(15),
    Faculty_Email VARCHAR(50)
);

INSERT INTO Student VALUES
('VTU21000', 'Amit Kumar', 'amit@gmail.com', '98765xxxx', 'CSE'),
('VTU2111', 'Bhavya Rao', 'bhavya@gmail.com', '98765xxxxx', 'CSE'),
('VTU21222', 'Charan Das', 'charan@gmail.com', '98765xxxxx', 'ECE'),
('VTU21333', 'Divya Sharma', 'divya@gmail.com', '98765xxxxx', 'ME'),
('VTU21444', 'Eshan Patel', 'eshan@gmail.com', '98765xxxxx', 'CSE');


INSERT INTO Course VALUES
('CS101', 'Data Structures', 'F001', '1VTU21CS001', 'faculty1@gmail.com'),
('CS102', 'DBMS', 'F002', '1VTU21CS002', 'faculty2@gmail.com'),
('EC201', 'Digital Electronics', 'F003', '1VTU21EC003', 'faculty3@gmail.com'),
('ME301', 'Thermodynamics', 'F004', '1VTU21ME004', 'faculty4@gmail.com'),
('CS103', 'Operating Systems', 'F005', '1VTU21CS005', 'faculty5@gmail.com');

SELECT * FROM Student;

SELECT * FROM Course;

SELECT COUNT(*) AS Total_Students FROM Student;

SELECT Department, COUNT(*) AS Student_Count
FROM Student
GROUP BY Department;

SELECT * FROM Student
ORDER BY Name;

SELECT * FROM Student
ORDER BY VTU_Number ASC;

SELECT * FROM Student
WHERE Department = 'CSE';