-- Середній бал, який певний викладач ставить певному студентові.

SELECT
    t.fullname,
    s.fullname,
    d.name,
    ROUND(AVG(g.grade), 2) AS average_grade
FROM grades g
JOIN students s ON s.id = g.student_id
JOIN disciplines d ON d.id = g.discipline_id
JOIN teachers t ON t.id = d.teacher_id
WHERE t.id = 3 AND s.id = 2
GROUP BY t.id, s.id, d.id;