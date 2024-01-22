-- Оцінки студентів у певній групі з певного предмета на останньому занятті.

WITH LastClassGrades AS (
  SELECT
    g.student_id,
    g.discipline_id,
    g.grade,
    MAX(g.date_of) AS last_class_date
  FROM grades g
  JOIN students s ON g.student_id = s.id
  JOIN disciplines d ON g.discipline_id = d.id
  JOIN groups gr ON s.group_id = gr.id
  WHERE gr.id = 2 	-- Замініть на конкретний ідентифікатор групи
    AND d.id = 4 	-- Замініть на конкретний ідентифікатор предмету
  GROUP BY g.student_id, g.discipline_id
)

SELECT
	gr.name,
    s.fullname,
    d.name,
    lg.grade
FROM LastClassGrades lg
JOIN students s ON s.id = lg.student_id
JOIN disciplines d ON d.id = lg.discipline_id
JOIN groups gr ON s.group_id = gr.id
WHERE lg.last_class_date IS NOT NULL
ORDER BY lg.grade DESC;