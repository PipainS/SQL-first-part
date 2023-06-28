SELECT name AS название_курса, 
	   amount_of_students AS количество_студентов
FROM course 
WHERE is_online = true
  AND amount_of_students BETWEEN 27 AND 310
ORDER BY name, amount_of_students DESC;