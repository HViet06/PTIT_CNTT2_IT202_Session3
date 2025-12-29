use SchoolDB;

create table students (
    student_id varchar(10) primary key,
    full_name varchar(50) not null,
    date_of_birth date,
	student_email varchar(100) unique
);

create table subject (
	subject_id varchar(10) primary key ,  
    subject_name varchar(50) not null, 
    credit int not null check (credit > 0)  
);

CREATE TABLE Score (
    student_id VARCHAR(10),
    subject_id VARCHAR(10),
    mid_score DECIMAL(5,2),
    final_score DECIMAL(5,2),
    PRIMARY KEY (student_id, subject_id),
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (subject_id) REFERENCES subject(subject_id)
);
insert into students (student_id, full_name, date_of_birth, student_email)
values
('SV001', 'Nguyen Van A', '2000-01-15', 'nguyenvana@example.com'),
('SV002', 'Tran Thi B', '2001-03-22', 'tranthib@example.com'),
('SV003', 'Le Van C', '2000-07-10', 'levanc@example.com');

insert into subject (subject_id, subject_name, credit)
values
('1', 'Mathematics', 3),
('2', 'Physics', 4),
('3', 'Chemistry', 3);

INSERT INTO Score (student_id, subject_id, mid_score, final_score)
VALUES
('SV001', '1', 8.5, 9.0),
('SV002', '2', 7.0, 8.0),
('SV003', '3', 9.0, 9.5);

select * from SchoolDB.score;

INSERT INTO score (student_id, subject_id, mid_score, final_score)
VALUES
('SV001', '2', 8.0, 8.5),
('SV002', '3', 7.5, 8.0);

UPDATE score
SET final_score = 9.5
WHERE student_id = 'SV001' AND subject_id = '1';

SELECT student_id, subject_id, final_score FROM score
WHERE final_score >= 8;