SELECT student.name as student_name, course.name as course_date
FROM 
	student_on_course as sc
	JOIN course ON course.id = sc.course_id
	JOIN student ON student.id = sc.student_id
WHERE course.college_id = student.college_id

ORDER BY student_name