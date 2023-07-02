SELECT 
    CASE
        WHEN COUNT(*) > 0 THEN 'количество онлайн курсов больше'
        ELSE 'количество оффлайн курсов больше'
    END AS result
FROM
    course
WHERE
    is_online = true
HAVING
    COUNT(*) > (SELECT COUNT(*) FROM course WHERE is_online = false)
