CREATE OR REPLACE FUNCTION average_mark_for_subject(subjectName VARCHAR)
returns real  
language plpgsql  
as 
$$  
Declare  
average_mark real; 

BEGIN
  SELECT AVG(mark) into average_mark 
  FROM exam_result
  INNER JOIN subject ON subject_id = subject.id
  WHERE subject.name = subjectName
  GROUP BY subject.id, subject.name;
  return average_mark;
END;
$$  

SELECT average_mark_for_subject('DP')

