SELECT id
FROM (
    -- (A \ B)
    SELECT id FROM course
    EXCEPT
    SELECT id FROM student_on_course

    UNION

    -- (B \ A)
    SELECT id FROM student_on_course
    EXCEPT
    SELECT id FROM course
) AS id
ORDER BY 1;