SELECT name AS университет, size AS количество_студентов
FROM college
WHERE id IN (10, 30, 50)
ORDER BY количество_студентов, университет;