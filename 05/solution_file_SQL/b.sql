SELECT DISTINCT s1.name AS student_1, s2.name AS student_2, s1.city
FROM student s1
JOIN student s2 ON s1.city = s2.city AND s1.id < s2.id -- исключение дублирования пар
ORDER BY student_2