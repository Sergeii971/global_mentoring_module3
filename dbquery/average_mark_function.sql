CREATE OR REPLACE FUNCTION average_mark_for_user(studentId int)
returns real  
language plpgsql  
as 
$$  
Declare  
average_mark real; 

BEGIN
  SELECT AVG(mark) into average_mark 
  FROM exam_result
  WHERE student_id = studentId
  GROUP BY student_id;
  return average_mark;
END;
$$  

SELECT average_mark_for_user(7)