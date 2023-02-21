DROP database snapshots;
create database  snapshots template module3;

create table student_learning(
student_name VARCHAR(100) NOT NULL,
surname VARCHAR(100) NOT NULL,
subject_name VARCHAR(100) NOT NULL,
mark int NOT NULL);
    
INSERT INTO student_learning(student_name, surname, subject_name, mark)
SELECT student.name as student_name, student.surname, subject.name as subject_name, exam_result.mark 
FROM exam_result
INNER JOIN student ON student_id = student.id
INNER JOIN subject ON subject_id = subject.id;
 