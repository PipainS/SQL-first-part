SELECT 
  DENSE_RANK() OVER (ORDER BY CASE
    WHEN student_rating < 30 THEN 'неудовлетворительно'
    WHEN student_rating >= 30 AND student_rating < 60 THEN 'удовлетворительно'
    WHEN student_rating >= 60 AND student_rating < 85 THEN 'хорошо'
    ELSE 'отлично'
  END) AS ranking,
  course.name,
  CASE
    WHEN student_rating < 30 THEN 'неудовлетворительно'
    WHEN student_rating >= 30 AND student_rating < 60 THEN 'удовлетворительно'
    WHEN student_rating >= 60 AND student_rating < 85 THEN 'хорошо'
    ELSE 'отлично'
  END AS оценка

FROM
  student_on_course 
  JOIN course ON course.id = student_on_course.course_id 
WHERE
  course.name != 'Machine Learning'
GROUP BY
  course.name,
  CASE
    WHEN student_rating < 30 THEN 'неудовлетворительно'
    WHEN student_rating >= 30 AND student_rating < 60 THEN 'удовлетворительно'
    WHEN student_rating >= 60 AND student_rating < 85 THEN 'хорошо'
    ELSE 'отлично'
  END
ORDER BY 
	ranking