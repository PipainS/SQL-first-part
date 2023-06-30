SELECT s.name, c.name
FROM student s
INNER JOIN course c ON s.college_id = c.college_id
ORDER BY s.name DESC;