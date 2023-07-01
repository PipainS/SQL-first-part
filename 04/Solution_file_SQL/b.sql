SELECT * FROM student_on_course_kn

/*
UPDATE student_on_course_kn
SET student_rating = CASE
    WHEN student_rating >= 0 and student_rating <= 60 THEN student_rating -5
    WHEN student_rating >= 61 and student_rating <= 80  THEN student_rating -10
    WHEN student_rating >= 81 and student_rating <= 90 THEN student_rating -15
	ELSE student_rating -20
END;
*/
