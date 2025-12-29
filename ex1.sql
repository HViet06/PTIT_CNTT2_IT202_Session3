CREATE DATABASE SchoolDB;
USE SchoolDB;
CREATE TABLE Student (
    student_id VARCHAR(20) PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    date_of_birth DATE,
    email VARCHAR(100) UNIQUE
);
INSERT INTO Student (student_id, full_name, date_of_birth, email)
VALUES 
('SV001', 'Nguyễn Văn An', '2004-05-12', 'an.nguyen@gmail.com'),
('SV002', 'Trần Thị Bình', '2003-09-20', 'binh.tran@gmail.com'),
('SV003', 'Lê Hoàng Cường', '2004-01-15', 'cuong.le@gmail.com'),
('SV004', 'Lê Hoàng Cường', '2004-02-15', 'cuong.ng@gmail.com'),
('SV005', 'Lê Hoàng Cường', '2004-03-15', 'cuong.pham@gmail.com');

SELECT * FROM Student;
SELECT student_id, full_name
FROM Student;