SELECT * FROM student_on_course_kn ORDER BY id; 
/*
DELETE FROM student_on_course_kn
WHERE student_id IN (
    SELECT student.id
    FROM student
    JOIN student_on_course_kn ON student.id = student_on_course_kn.student_id
    JOIN course ON student_on_course_kn.course_id = course.id
    WHERE student.city = 'Новосибирск'
    AND course.name = 'Цифровая трансформация'
);
*/