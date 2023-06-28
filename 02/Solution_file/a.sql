SELECT name AS Имя, telegram_contact AS Телеграм
FROM student
WHERE city = 'Казань' or city = 'Москва'
ORDER BY name DESC;