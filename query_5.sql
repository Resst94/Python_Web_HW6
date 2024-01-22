-- Знайти які курси читає певний викладач.

SELECT
    t.fullname AS tf,
    d.name AS discipline
FROM teachers t
JOIN disciplines d ON t.id = d.teacher_id
WHERE t.id = 4
ORDER BY tf;