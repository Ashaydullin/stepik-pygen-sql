SELECT
    name,
    surname,
    birth_date
FROM
    Actors
WHERE
    DAYNAME(birth_date) = 'Wednesday'
ORDER BY
    birth_date;