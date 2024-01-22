-- Знайти середній бал, який ставить певний викладач зі своїх предметів.

SELECT
    t.fullname,
    d.name,
    ROUND(AVG(g.grade), 2) AS average_grade
FROM grades g
JOIN disciplines d ON d.id = g.discipline_id
JOIN teachers t ON t.id = d.teacher_id
WHERE t.id = 5
GROUP BY t.id, d.id
ORDER BY average_grade DESC;