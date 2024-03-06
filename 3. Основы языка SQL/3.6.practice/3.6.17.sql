SELECT
    DISTINCT director
FROM
    `Films`
WHERE
    director LIKE BINARY '% S%n'
ORDER BY
    director;