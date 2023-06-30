SELECT (CAST(COUNT(*) AS FLOAT) / (
    SELECT COUNT(*)
    FROM (
        SELECT id
        FROM course
        UNION
        SELECT id
        FROM student_on_course
    ) AS combined_ids
)) AS коэффициент_Жаккара 
FROM (
    SELECT id
    FROM course
    INTERSECT
    SELECT id
    FROM student_on_course
) AS intersection_ids;