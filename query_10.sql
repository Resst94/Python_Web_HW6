-- Список курсів, які певному студенту читає певний викладач.

SELECT
    s.fullname,
    d.name,
    t.fullname
FROM students s
JOIN grades gr ON s.id = gr.student_id
JOIN disciplines d ON d.id = gr.discipline_id
JOIN teachers t ON t.id = d.teacher_id
WHERE s.id = 22 AND t.id = 3
GROUP BY d.name
ORDER BY d.name;