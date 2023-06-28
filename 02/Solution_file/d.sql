SELECT name AS университет, size AS количество_студентов
FROM college
WHERE id NOT IN (10, 30, 50)
ORDER BY количество_студентов, университет;