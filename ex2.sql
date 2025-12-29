USE SchoolDB;
UPDATE Student
SET email = 'cuong.new@gmail.com'
WHERE student_id = 'SV003';

UPDATE Student
SET date_of_birth = '2004-08-15'
WHERE student_id = 'SV002';

DELETE FROM Student
WHERE student_id = 'SV005';


SELECT * FROM Student;
