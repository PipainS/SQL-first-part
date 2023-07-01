SELECT
    student.name AS student_name,
    student_on_course_kn.student_rating AS student_rating,
    college.name AS student_college_name,
    course.name AS course_name,
    college.name AS student_college_name
FROM
    student_on_course_kn
    JOIN student ON student.id = student_on_course_kn.student_id
    JOIN college ON college.id = student.college_id
    JOIN course ON course.id = student_on_course_kn.course_id
ORDER BY
    student_name, course_name;
