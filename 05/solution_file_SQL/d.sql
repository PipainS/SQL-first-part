SELECT
	MIN(student_rating) AS min_student_rating,
	MAX(student_rating) AS max_student_rating,
	ROUND(AVG(student_rating), 2) AS avg_student_rating,
	SUM(student_rating) AS sum_student_rating	
FROM
	student_on_course

--min_student_rating	max_student_rating	
--avg_student_rating	sum_student_rating