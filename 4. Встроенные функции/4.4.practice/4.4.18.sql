SELECT
    CONCAT('[', a, '; ', b, ']') AS 'range',
    FLOOR(ROUND(a + RAND() * (b - a), 1)) AS random_value
FROM
    `Ranges`
ORDER BY
    id;