USE SchoolDB;
SELECT student_id FROM Student;
SELECT subject_id FROM Subject;


CREATE TABLE Enrollment (
    student_id VARCHAR(20),
    subject_id INT,
    enroll_date DATE,

    PRIMARY KEY (student_id, subject_id),

    FOREIGN KEY (student_id) REFERENCES Student(student_id),
    FOREIGN KEY (subject_id) REFERENCES Subject(subject_id)
);
INSERT INTO Enrollment (student_id, subject_id, enroll_date)
VALUES
('SV001', 1, '2025-09-01'),
('SV002', 2, '2025-09-01'),
('SV003', 1, '2025-09-02');

SELECT * FROM Enrollment;
SELECT * FROM Enrollment
WHERE student_id = 'SV001';
