SELECT * FROM student_on_course_kn ORDER BY id; 

/*
CREATE TABLE student_on_course_kn AS
SELECT soc.*
FROM student_on_course soc
JOIN student s ON soc.student_id = s.id
WHERE s.city IN ('Казань', 'Новосибирск');
*/