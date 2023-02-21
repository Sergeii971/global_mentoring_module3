CREATE OR REPLACE FUNCTION student_in_red_zone()

returns table (
id_of_student integer, 
student_name VARCHAR
)

language plpgsql 

as $$  
BEGIN
return query
  SELECT student.id, student.name
  FROM exam_result
  INNER JOIN student ON student_id = student.id
  WHERE mark <= 3
  GROUP BY student.id
  HAVING COUNT(*) > 1
  ORDER BY student.id ASC;
END;$$  

SELECT * from student_in_red_zone()

SELECT * FROM public.exam_result where student_id = 1
ORDER BY id ASC 
