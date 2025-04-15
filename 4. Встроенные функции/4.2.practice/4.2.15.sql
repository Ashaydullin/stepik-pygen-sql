SELECT
    CONCAT(LEFT(name, 1), '. ', surname) AS director
FROM
    Directors
ORDER BY
    director,
    surname;