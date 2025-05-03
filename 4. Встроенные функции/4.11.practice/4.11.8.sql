SELECT
    name,
    surname,
    CASE
        WHEN grade = 'A' THEN 5
        WHEN grade = 'B' THEN 4
        WHEN grade = 'C' THEN 3
        WHEN grade = 'D' THEN 2
        ELSE 1
    END AS grade
FROM
    Math
ORDER BY
    grade DESC,
    name;