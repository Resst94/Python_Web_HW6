-- Знайти оцінки студентів у окремій групі з певного предмета.

SELECT
    g.name,
    s.fullname,
    d.name,
    gr.grade
FROM grades gr
JOIN disciplines d ON d.id = gr.discipline_id
JOIN students s ON s.id = gr.student_id
JOIN groups g ON s.group_id = g.id
WHERE g.id = 1 AND d.id = 1
ORDER BY g.name;