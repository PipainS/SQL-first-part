SELECT name, 'университет' AS type
FROM college
UNION ALL
SELECT name, 'курс' AS type
FROM course
ORDER BY type DESC, name DESC;