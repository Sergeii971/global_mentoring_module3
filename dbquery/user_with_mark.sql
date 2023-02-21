SELECT student.id,student.name, student.surname, mark FROM exam_result
INNER JOIN student ON student_id = student.id
WHERE surname LIKE '%Twine%'
ORDER BY student.id DESC