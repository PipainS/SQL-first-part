WITH student_counts AS (
		SELECT
			course.name AS курс,
			CASE
				WHEN student_rating < 30 THEN 'неудовлетворительно'
				WHEN student_rating >= 30 AND student_rating < 60 THEN 'удовлетворительно'
				WHEN student_rating >= 60 AND student_rating < 85 THEN 'хорошо'
				ELSE 'отлично'
			END AS оценка,
			COUNT(*) AS "количество студентов"
		FROM
			student_on_course
			INNER JOIN course ON course.id = student_on_course.course_id
		GROUP BY
			курс, оценка),
	student_assessments AS (
		SELECT
			CASE
				WHEN student_rating < 30 THEN 'неудовлетворительно'
				WHEN student_rating >= 30 AND student_rating < 60 THEN 'удовлетворительно'
				WHEN student_rating >= 60 AND student_rating < 85 THEN 'хорошо'
				ELSE 'отлично'
			END AS "оценка",
			COUNT(*) AS "количество студентов"
		FROM
			course
			RIGHT JOIN student_on_course ON course.id = student_on_course.course_id
		GROUP BY
			оценка
		ORDER BY
			оценка),
	student_group AS (
			SELECT
				курс,
				оценка,
				"количество студентов"
			FROM student_counts
		UNION ALL
			SELECT
				курс,
				NULL,
				SUM("количество студентов")
			FROM student_counts
			GROUP BY
				курс
		UNION ALL
			SELECT
				NULL,
				оценка,
				"количество студентов"
			FROM student_assessments
		UNION ALL
			SELECT
				NULL,
				NULL,
				SUM("количество студентов")
			FROM student_assessments
)
SELECT 
	ROW_NUMBER() OVER () AS "# строки",
    ROW_NUMBER() OVER (PARTITION BY курс ORDER BY оценка) AS "# строки в группе",
	курс,
	оценка,
	"количество студентов"
FROM 
	student_group
GROUP BY курс, оценка, "количество студентов"
ORDER BY курс, оценка;
