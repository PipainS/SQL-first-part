SELECT cs.name AS course_name, COALESCE(st.name, 'курс не используется') AS student_name

FROM course cs
FULL OUTER JOIN student_on_course sc ON cs.id = sc.course_id
FULL OUTER JOIN student st ON sc.student_id = st.id
WHERE cs.is_online = false
ORDER BY course_name
