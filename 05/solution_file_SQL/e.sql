SELECT city
FROM student
GROUP BY city
HAVING COUNT(*) = 2
ORDER BY city
