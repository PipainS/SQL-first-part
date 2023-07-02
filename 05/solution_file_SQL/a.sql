SELECT 
	student.name as student_name,
	course.name as course_name,
	college.name as student_college,
	student_on_course.student_rating


FROM 
	student_on_course
	JOIN student ON student.id = student_on_course.student_id
	JOIN course ON course.id = student_on_course.course_id
	JOIN college ON college.id = student.college_id
WHERE student_on_course.student_rating > 50 and college.size > 5000
ORDER BY 
	student_name, course_name
	