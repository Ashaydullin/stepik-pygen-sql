SELECT
    name,
    surname,
    CASE
        WHEN grade IN('A', 'B') THEN 'Great'
        WHEN grade = 'C' THEN 'Well'
        ELSE 'Bad'
    END AS result
FROM
    Math
ORDER BY
    CASE
        WHEN grade = 'A' THEN 1
        WHEN grade = 'B' THEN 2
        WHEN grade = 'C' THEN 3
        WHEN grade = 'D' THEN 4
        ELSE 5
    END,
    name;