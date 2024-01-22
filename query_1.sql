-- Знайти 5 студентів із найбільшим середнім балом з усіх предметів.

SELECT
    s.id,
    s.fullname,
    ROUND(AVG(g.grade), 2) AS average_grade
FROM grades g
JOIN students s ON s.id = g.student_id
GROUP BY s.id
ORDER BY average_grade DESC
LIMIT 5;
