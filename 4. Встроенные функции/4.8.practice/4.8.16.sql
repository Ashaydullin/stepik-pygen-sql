SELECT
    name,
    surname,
    TIMESTAMPDIFF(YEAR, birth_date, CURDATE()) AS age
FROM
    Actors
ORDER BY
    age DESC;