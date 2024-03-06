SELECT
    title,
    director
FROM
    `Films`
WHERE
    NOT title LIKE BINARY '%t%'
ORDER BY
    title;