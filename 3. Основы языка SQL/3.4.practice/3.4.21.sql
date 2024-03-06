SELECT
    DISTINCT title AS Movie,
    director AS 'Directed by'
FROM
    `Films`
WHERE
    director IS NOT NULL
ORDER BY
    `Directed by`;